using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;

namespace Costume
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            TextBox_Address1.Text = "";
            TextBox_Address2.Text = "";
            TextBox_Address3.Text = "";

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True");
            con.Open();

            string user = this.User.Identity.Name;
            DataTable dt = new DataTable();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM [Cart],[Products] WHERE ( [Cart].ProductCode = [Products].ProductCode )", con);
            SqlDataAdapter sqlDa = new SqlDataAdapter(cmd1);
            cmd1.Parameters.AddWithValue("@username", user);
            sqlDa.Fill(dt);

            string insert1 = "insert into [Order] (OwnerID,Date,Address,PaymentMethod,Amount) values (@OwnerID,GETDATE(),@Address,@PaymentMethod,@Amount)";
            String parameterA = "777";
            String parameterC = TextBox_Address1.Text + ", " + TextBox_Address2.Text + ", " + TextBox_Address3.Text;
            String parameterD = DDL_Payments.SelectedValue.ToString();

            SqlCommand cmd = new SqlCommand(insert1, con);
            cmd.Parameters.AddWithValue("@OwnerID", parameterA);
            cmd.Parameters.AddWithValue("@Address", parameterC);
            cmd.Parameters.AddWithValue("@PaymentMethod", parameterD);

            //
            DataTable dt3 = new DataTable();
            SqlCommand cmd3 = new SqlCommand("SELECT * FROM [Cart],[Products] WHERE ( [Cart].ProductCode = [Products].ProductCode )", con);
            sqlDa = new SqlDataAdapter(cmd3);

            cmd3.Parameters.AddWithValue("@username", user);
            sqlDa.Fill(dt3);

            double TotalPrice = 0;
            for (int i = 0; i < dt3.Rows.Count; i++)
            {
                double Price = double.Parse(dt3.Rows[i]["ProductPrice"].ToString(), System.Globalization.CultureInfo.InvariantCulture);

                int Qty = (int)dt3.Rows[i]["Quantity"];
                TotalPrice += Price * Qty;
            }
            string parameterE = string.Format("{0:0.00}", TotalPrice);

            cmd.Parameters.AddWithValue("@Amount", parameterE);
            cmd.ExecuteNonQuery();

            DataTable dt2 = new DataTable();
            cmd1 = new SqlCommand("SELECT * FROM [Order]", con);
            sqlDa = new SqlDataAdapter(cmd1);
            cmd1.Parameters.AddWithValue("@username", user);
            sqlDa.Fill(dt2);

            for (int i = 0; i < dt.Rows.Count; i++)
            {

                string insert2 = "insert into OrderItem (OrderCode,ProductCode,Size,Quantity) values (@OrderCode,@ProductCode,@Size,@Quantity)";
                cmd = new SqlCommand(insert2, con);
                String parameter1 = dt2.Rows[dt2.Rows.Count - 1]["OrderCode"].ToString();
                String parameter2 = dt.Rows[i]["ProductCode"].ToString();
                String parameter3 = dt.Rows[i]["Size"].ToString();
                String parameter4 = dt.Rows[i]["Quantity"].ToString();
                cmd.Parameters.AddWithValue("@OrderCode", parameter1);
                cmd.Parameters.AddWithValue("@ProductCode", parameter2);
                cmd.Parameters.AddWithValue("@Size", parameter3);
                cmd.Parameters.AddWithValue("@Quantity", parameter4);
                cmd.ExecuteNonQuery();


            }


            //email
            DataTable dt5 = new DataTable();
            cmd1 = new SqlCommand("select * from TableL where Email='" + Session["user"] + "'", con);
            sqlDa = new SqlDataAdapter(cmd1);
            sqlDa.Fill(dt5);
            string toEmail = dt5.Rows[0]["Email"].ToString();
            using (MailMessage mm = new MailMessage("cosplaygalxymy@gmail.com", toEmail))
            {
                mm.Subject = "CosplayGalaxy Receipt";

                SqlCommand cmd4 = new SqlCommand("SELECT * FROM [Cart],[Products] WHERE ( [Cart].ProductCode = [Products].ProductCode )", con);
                sqlDa = new SqlDataAdapter(cmd4);
                DataTable dt4 = new DataTable();
                sqlDa.Fill(dt4);

                String body = "<img src=\"cid:companylogo\"/><div style=\"font-variant:small-caps;font-size:xx-large\">RECEIPT</div></br> ";
                
                body += "<table border=\"1\"><tr><td><b> No </b></td><td><b> Item </b></td><td><b> Size </b></td><td><b> Price </b></td><td><b> Quantity </b></td><td><b> Sub-total </b></td></tr> ";
                double TotalPrice2 = 0;
                for (int i = 0; i < dt4.Rows.Count; i++)
                {
                    double Price = double.Parse(dt4.Rows[i]["ProductPrice"].ToString(), System.Globalization.CultureInfo.InvariantCulture);

                    int Qty = (int)dt3.Rows[i]["Quantity"];

                    body += "<tr>";
                    body += "<td>" + (i + 1) + "</td>";
                    body += "<td>" + dt4.Rows[i]["ProductName"].ToString() + "</td>";
                    body += "<td>" + dt4.Rows[i]["Size"].ToString() + "</td>";
                    body += "<td>RM " + dt4.Rows[i]["ProductPrice"].ToString() + "</td>";
                    body += "<td>" + dt4.Rows[i]["Quantity"].ToString() + "</td>";

                    double Price2 = double.Parse(dt4.Rows[i]["ProductPrice"].ToString(), System.Globalization.CultureInfo.InvariantCulture);
                    int Qty2 = (int)dt4.Rows[i]["Quantity"];
                    double Subtotal2 = Price2 * Qty2;
                    TotalPrice2 += Subtotal2;
                    body += "<td>Total: RM " + string.Format("{0:0.00}", Subtotal2) + "</td>";
                    body += "</tr>";
                }
                body += "<tfoot><tr  align=\"right\"><td colspan=\"6\" ><span style=\"color: #0071a3\"><b>RM " + string.Format("{0:0.00}", TotalPrice2) + "</b></span></td></tr></tfoot>";
                body += "</table>";
                body += "<br/><div style=\"color:#515151\"><span style=\"color:#000000;font-size:large\">Name</span><hr/>" + dt5.Rows[0]["FirstName"].ToString() + " " + dt5.Rows[0]["LastName"].ToString() + "<br/><br/><span style=\"color:#000000;font-size:large\">Purchased Date</span><hr/>" + DateTime.Now.ToString() + "<br/><br/><span style=\"color:#000000;font-size:large\">Address</span><hr/>" + TextBox_Address1.Text +"<br/>" + TextBox_Address2.Text + "<br/> "+ TextBox_Address3.Text + "<br/></div>";
                mm.IsBodyHtml = true;
                mm.Body = body;
                LinkedResource logo = new LinkedResource(Server.MapPath(@"~\App_Themes\logo.png"), "image/png");//---
                logo.ContentId = "companylogo";
                // done HTML formatting in the next line to display my logo
                AlternateView av1 = AlternateView.CreateAlternateViewFromString(body, null, MediaTypeNames.Text.Html);

                av1.LinkedResources.Add(logo);


                mm.AlternateViews.Add(av1);
                string delete = "delete from cart";
                cmd = new SqlCommand(delete, con);
                cmd.ExecuteNonQuery();
                con.Close();

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("cosplaygalaxymy@gmail.com", "cosplaygalaxy1999");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

            Response.Redirect("~/homepagesignin1.aspx");
        }
    }
}