using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace Costume
{
    public partial class UploadProducts : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        static String imagelink;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CosplayDatabase.mdf;Integrated Security=True";
            
            con.Open();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string Query = "insert into Products(ProductName,ProductDescription,ProductCategory,ProductPrice,ProductAnime,ProductImage,ProductStock)values('"+this.txtProductName.Text+"','"+this.txtDescription.Text+"','"+this.ddlCategory.SelectedValue+"',"+ Convert.ToDouble(this.txtPrice.Text)+",'"+this.ddlAnime.SelectedValue+ "','" + imagelink + "'," + Convert.ToInt32(this.txtStockNum.Text) + ") ;";
            SqlCommand cmd = new SqlCommand(Query,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("CosplayerGallery.aspx");


        }

        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    int filesize;
                    string imgfile = Path.GetFileName(FileUpload1.PostedFile.FileName);
                  
                    filesize = FileUpload1.PostedFile.ContentLength;
                    FileUpload1.SaveAs(Server.MapPath("~/ProductPicture/" + imgfile));
                    imgProduct.ImageUrl = "~/ProductPicture/" + imgfile;
                    imagelink = "~/ProductPicture/" + imgfile;
                    imagesaved = true;
                }
                else
                {
                    lblerror.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                lblerror.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                /*String query = "insert into profiledetail(rollno,sname,fname,mname,profileimage) values(" + txtProductName.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + imagelink + "')";
                String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=Class-College-Database; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();*/
                lblerror.Text = "Uploaded Successfully";
            }
        }

        protected void txtDescription_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            imgProduct.ImageUrl = "~/ProductPicture/uploadImage.jpg";
            txtProductName.Text = "";
            txtDescription.Text = "";
            txtPrice.Text = "";
            lblerror.Text = "";
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}