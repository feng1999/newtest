using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class Retrieve3 : System.Web.UI.Page
    {
        private string sqlconn;
        String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";

        string[] fieldNames = { "人员编号", "密码", "姓名", "联络电话", "是否为管理员", "部门代号" };

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            Label4.Text = "";
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text3 = DropDownList3.SelectedItem.Value + " = N'" + TextBox3.Text + "'";
                SqlCommand myCommand = new SqlCommand("SELECT *  FROM  Employee WHERE " + Text3, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView5.DataSource = dr;
                GridView5.DataBind();
                if (!dr.HasRows)
                {
                    Label3.Text = "对不起，您查的资料不存在";
                }
                else
                {
                    Label4.Text = "查询结果：";
                }
            }
        }

        protected void GridView5_RowCreated(object sender, GridViewRowEventArgs e)
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

            this.GridView5.Controls[0].Controls.AddAt(0, gvr);
        }
    }
}