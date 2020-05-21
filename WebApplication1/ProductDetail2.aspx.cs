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
    public partial class ProductDetail2 : System.Web.UI.Page
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
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True");
            connection.Open();
            
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM [Products] WHERE ([ProductCode] = "+ Request.QueryString["id"] +")", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", user);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Image1.ImageUrl = dt.Rows[0]["ProductImage"].ToString(); 
                ProductDescriptionLabel.Text = dt.Rows[0]["ProductDescription"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                ProductNameLabel.Text = dt.Rows[0]["ProductName"].ToString();
                ProductPriceLabel.Text = dt.Rows[0]["ProductPrice"].ToString();

            }
            connection.Close();
        }

        protected void WishListButton_Click(object sender, EventArgs e)
        {   
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";
                
                con.Open();
                string insert = "insert into wishlist (ProductCode) values (@ProductCode)";
                SqlCommand cmd = new SqlCommand(insert, con);
                String parameter1 = Request.QueryString["id"];
                cmd.Parameters.AddWithValue("@ProductCode", parameter1);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Wishlist.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        protected void CartButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";

                con.Open();
                string insert = "insert into Cart (ProductCode,Quantity,Size) values (@ProductCode,@Quantity,@Size)";
                SqlCommand cmd = new SqlCommand(insert, con);
                String parameter1 = Request.QueryString["id"];
                cmd.Parameters.AddWithValue("@ProductCode", parameter1);

                cmd.Parameters.AddWithValue("@Size", DropDownList_Size.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Quantity", TextBoxQuantity.Text.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("CartPage.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }


        }

        
    }
}