using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Costume
{
    public partial class CartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getData(this.User.Identity.Name);
            }
        }

        private void getData(string user)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CosplayDatabase.mdf;Integrated Security=True");

            try
            {
                connection.Open();
            }
            catch
            {
                Response.Write("<h3 style='color:red'>We're sorry, we are experiencing technical problems..." + "<br>");
                Response.Write("Please contact our support center: support@abc.com</h3>");
            }
            
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM [Cart],[Products] WHERE ( [Cart].ProductCode = [Products].ProductCode )", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", user);
            sqlDa.Fill(dt);

            double TotalPrice = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double Price = double.Parse(dt.Rows[i]["ProductPrice"].ToString(), System.Globalization.CultureInfo.InvariantCulture);
                
                int Qty = (int)dt.Rows[i]["Quantity"];
                TotalPrice += Price * Qty;
            }
            GrandTotal.Text = DoFormat(TotalPrice);
            connection.Close();
        }
        public static string DoFormat(double myNumber)
        {
            var s = string.Format("{0:0.00}", myNumber);
            return s;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";

            con.Open();
            string delete = "delete from Cart";
            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Homepage.aspx");
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }

        protected void Rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "viewproduct")
            {
                Response.Redirect("ProductDetail2.aspx?id=" + e.CommandArgument.ToString());
            }

            if (e.CommandName == "deleteCart")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";

                con.Open();
                string delete = "DELETE FROM Cart WHERE CartNumber=@number";

                String parameter1 = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand(delete, con);
                cmd.Parameters.AddWithValue("@number", parameter1);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/CartPage.aspx");

            }
        }
    }
}