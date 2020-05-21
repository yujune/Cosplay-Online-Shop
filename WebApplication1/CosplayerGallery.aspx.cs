using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Costume
{
    public partial class CosplayerGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString());
            }
            if (e.CommandName == "viewproduct")
            {   
                if (Session["type"].ToString() == "cust")
                {
                    Response.Redirect("ProductDetail2.aspx?id=" + e.CommandArgument.ToString());
                } else
                {
                    Response.Redirect("ProductDetail.aspx?id=" + e.CommandArgument.ToString());
                }
                
               
                
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}