using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class cosprofile : System.Web.UI.Page
	{
		SqlCommand cmd = new SqlCommand();
		SqlConnection sqlcon = new SqlConnection();
		SqlDataAdapter sda = new SqlDataAdapter();
		DataSet ds = new DataSet();
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack) {
                if (Session["user1"] != null)
                {
                    sqlcon.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\\CosplayDatabase.mdf; Integrated Security = True";
                    sqlcon.Open();

                    showdata1(); sqlcon.Close();
                }
            }
		}
		public void showdata1()
		{


			cmd.CommandText = "select * from Cosplayer where Password='" + Session["user1"] + "'";
			cmd.Connection = sqlcon;
			sda.SelectCommand = cmd;
			sda.Fill(ds);
			txtfirstname.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
			txtlastname.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
			txtemail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
			txtpassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();
			txtcontact.Text = ds.Tables[0].Rows[0]["Contact"].ToString();


		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			sqlcon.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\\CosplayDatabase.mdf; Integrated Security = True";
            sqlcon.Open();
          
            cmd.CommandText = "update Cosplayer set FirstName='" + txtfirstname.Text + "'" + ",LastName='" + txtlastname.Text + "'" + ",Password='" + txtpassword.Text + "'" + ",Email='" + txtemail.Text + "'" + ",Contact='" + txtcontact.Text + "'" + "where Password='" + Session["user1"] + "'";
			cmd.Connection = sqlcon;
			cmd.ExecuteNonQuery();
			Response.Write("saved");
            sqlcon.Close();
        }

		protected void cancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("Homepage.aspx");
		}
	}
}