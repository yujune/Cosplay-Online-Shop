using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            string msg = "";
            foreach (ListItem lstItem in cbIInterest.Items)
            {
                if (lstItem.Selected == true)
                {
                    msg += lstItem.Text + "<br/>";
                }
            }
            lblSelect.Text = "Hi " + txtName.Text + " from " + ddlProg.SelectedItem.Value + " Programme.</br>"
                + "You have selected:</br>" + msg + "as you area of interest";
        }
    }
}