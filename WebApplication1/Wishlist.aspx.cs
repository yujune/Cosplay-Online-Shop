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
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";
            try
            {
                con.Open();
            }
            catch
            {
                Response.Write("<h3 style='color:red'>We're sorry, we are experiencing technical problems..." + "<br>");
                Response.Write("Please contact our support center: support@abc.com</h3>");
            }
            
            string delete = "delete from wishlist";
            SqlCommand cmd = new SqlCommand(delete, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Homepage.aspx");
        }

        protected void Rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {


            if (e.CommandName == "viewproduct")
            {
                Response.Redirect("ProductDetail2.aspx?id=" + e.CommandArgument.ToString());
            }

            if (e.CommandName == "deleteWishlist")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";

                con.Open();
                string delete = "DELETE FROM Wishlist WHERE WishlistNumber=@number";

                String parameter1 = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand(delete, con);
                cmd.Parameters.AddWithValue("@number", parameter1);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Wishlist.aspx");

            }



        }
    }
}