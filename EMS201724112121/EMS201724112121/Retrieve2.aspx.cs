using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class Retrieve2 : System.Web.UI.Page
    {
        private string sqlconn;
        String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        string[] fieldNames = { "部门代号", "部门名称", "部门主管编号"};
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            Label3.Text = "";
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text2 = DropDownList2.SelectedItem.Value + " = N'" + TextBox2.Text + "'";
                SqlCommand myCommand = new SqlCommand("SELECT *  FROM  Department WHERE " + Text2, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView3.DataSource = dr;
                GridView3.DataBind();
                if (!dr.HasRows)
                {
                    Label2.Text = "对不起，您查的资料不存在";
                }
                else
                {
                    Label3.Text = "查询结果：";
                }
            }
        }

        protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType != DataControlRowType.Header) return;
            GridViewRow gvr = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
            int i = 0;
            for (i = 0; i < fieldNames.Length; i++)
            {
                TableCell tc = new TableCell();
                tc.Text = fieldNames[i].ToString();
                gvr.Cells.Add(tc);
            }

            this.GridView3.Controls[0].Controls.AddAt(0, gvr);
        }
    }
}