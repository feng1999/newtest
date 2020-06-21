using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Image1.ImageUrl = "~/image/" + TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Retrieve1.aspx");
        }
    }
}