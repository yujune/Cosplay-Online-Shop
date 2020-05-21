using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class signupcos : System.Web.UI.Page
	{
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{
				Clear();
			}

		}

		protected void submit_Click(object sender, EventArgs e)
		{
			using (SqlConnection sqlcon = new SqlConnection(connectionString))
			{
				sqlcon.Open();
				SqlCommand sqlCmd = new SqlCommand("ADDOrEdit1", sqlcon);
				sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
				sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "0"));
				sqlCmd.Parameters.AddWithValue("@FisrtName", txtfirstname.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@LastName", txtlastname.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@Passowrd", txtpassword.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
				sqlCmd.ExecuteNonQuery();
				Session["user"] = txtemail.Text.Trim();
				Session["type"] = "coser";
				lblsuccess.Text = "success";
				
				Response.Redirect("CosplayerGallery.aspx");
			}

		}
		void Clear()
		{
			txtfirstname.Text = txtlastname.Text = txtemail.Text = txtpassword.Text = txtpasswordr.Text = txtcontact.Text = "";
			hfUserID.Value = " ";
			lblsuccess.Text = " ";
		}

		protected void cancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("Homepage.aspx");
		}
	}
}
