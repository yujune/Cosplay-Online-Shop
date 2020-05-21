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
	public partial class cosplayerlogin : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Validate1(object sender, ServerValidateEventArgs e)
		{
			//retrieving data from the database
			SqlConnection con;
			string strCon = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

			con = new SqlConnection(strCon);


			string strSelect = "SELECT * FROM Cosplayer WHERE Email=@Email AND Password=@Passowrd";

			SqlCommand cmdSelect = new SqlCommand(strSelect, con);

			cmdSelect.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
			cmdSelect.Parameters.AddWithValue("@Passowrd", txtpassword.Text.Trim());
			con.Open();

			SqlDataReader dtr = cmdSelect.ExecuteReader();

			if (dtr.HasRows)
			{
				if (dtr.Read())
				{
					Session["user1"] = txtemail.Text.Trim();
					Session["user"] = txtemail.Text.Trim();
					Session["type"] = "coser";
					FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);
					e.IsValid = true;
					Response.Redirect("CosplayerGallery.aspx");


				}
				else
					e.IsValid = false;

				dtr.Close();
				con.Close();


			}
		}
		private void Page_Error(object sender, EventArgs e)
		{
			Exception exc = Server.GetLastError();

			// Handle specific exception.
			if (exc is HttpUnhandledException)
			{
				ErrorMsgTextBox.Text = "An error occurred on this page. Please verify your " +
				"information to resolve the issue.";
		
	}
			// Clear the error from the server.
			Server.ClearError();
		}
	}
}