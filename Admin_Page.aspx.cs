using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class Admin_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("stock_detail_page.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("customer_detail_page.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Purcase_detail_page.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
    }
}