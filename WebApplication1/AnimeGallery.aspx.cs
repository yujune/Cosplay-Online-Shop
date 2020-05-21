using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Costume
{
    public partial class AnimeGallery : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            LabelAnime.Text = Request.QueryString["name"];




        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("ProductDetail2.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}