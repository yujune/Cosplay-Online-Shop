using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Costume
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewproduct")
            {
                Response.Redirect("ProductDetail2.aspx?id=" + e.CommandArgument.ToString());
            }

            if (e.CommandName == "viewanime")
            {
                Response.Redirect("AnimeGallery.aspx?name=" + e.CommandArgument.ToString());
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}