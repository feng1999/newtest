using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string text = Request.QueryString["m"];
            if (text.Equals("是"))
            {
                Response.Redirect("Retrieve1.aspx");
            }
            else
            {
                Response.Redirect("Search.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string text = Request.QueryString["m"];
            if (text.Equals("是"))
            {
                Response.Redirect("Create1.aspx");
            }
            else
            {
                Label1.Text = "抱歉，您没有权限。";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string text = Request.QueryString["m"];
            if (text.Equals("是"))
            {
                Response.Redirect("Update1.aspx");
            }
            else
            {
                Label1.Text = "抱歉，您没有权限。";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string text = Request.QueryString["m"];
            if (text.Equals("是"))
            {
                Response.Redirect("Delete1.aspx");
            }
            else
            {
                Label1.Text = "抱歉，您没有权限。";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}