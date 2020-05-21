using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class customerloginctrl : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}
		protected void Validate(object sender, ServerValidateEventArgs e)
		{
			//retrieving data from the database
			SqlConnection con;
			string strCon = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
	
			con = new SqlConnection(strCon);
			

			string strSelect = "SELECT * FROM TableL WHERE Email=@Email AND Password=@Passowrd";

			SqlCommand cmdSelect = new SqlCommand(strSelect, con);

			cmdSelect.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
			cmdSelect.Parameters.AddWithValue("@Passowrd", txtpassword.Text.Trim());
			con.Open();
		
			SqlDataReader dtr = cmdSelect.ExecuteReader();

			if (dtr.HasRows)
			{
				if (dtr.Read())
				{
					Session["user"] = txtemail.Text.Trim();
					Session["type"] = "cust";
					FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);
					e.IsValid = true;
					Response.Redirect("homepagesignin1.aspx");


				}
				else
					e.IsValid = false;

				dtr.Close();
				con.Close();


			}
		}
	
	}
}