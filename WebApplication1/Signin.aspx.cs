using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Signin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		
		}

		protected void submit_Click(object sender, EventArgs e)
		{
			using (SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CosplayDatabase.mdf;Integrated Security=True"))
			{
				string user = txtemail.Text.Trim();
				string user1 = txtpassword.Text.Trim();
				sqlcon.Open();
               
                string query = "SELECT * FROM TableL WHERE Email=@Email AND Password=@Passowrd ";
				string query1 = "SELECT * FROM Cosplayer WHERE Email=@Email AND Password=@Passowrd ";
				SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
				SqlCommand sqlCmd1 = new SqlCommand(query1, sqlcon);
				sqlCmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@Passowrd", txtpassword.Text.Trim());
				int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
				sqlCmd1.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
				sqlCmd1.Parameters.AddWithValue("@Passowrd", txtpassword.Text.Trim());
				int count1 = Convert.ToInt32(sqlCmd1.ExecuteScalar());
				Session["type"] = "cust";
				if (count == 1)
				{
					Session["user"] = txtemail.Text.Trim();
					Session["type"] = "cust";
					Response.Redirect("homepagesignin1.aspx");
					

				}
				else if (count1 == 1) {
					Session["user1"] = txtpassword.Text.Trim();
					Session["type"] = "coser";
					Response.Redirect("CosplayerGallery.aspx");
					
				}
				else
				{
					lblinform.Visible = false;

				}
			}
		}


	}
}
