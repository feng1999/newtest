using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class Retrieve1 : System.Web.UI.Page
    {
        private string sqlconn;
        String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";

        
        string[] fieldNames = { "设备编号", "设备名称", "设备规格", "设备图片", "价格", "购入日期", "存放位置", "设备负责人编号"};

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                Label1.Text = "";
                Label2.Text = "";
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text1 = DropDownList1.SelectedItem.Value + " = N'" + TextBox1.Text + "'";
               // SqlCommand myCommand = new SqlCommand("SELECT Equipment.equId, Equipment.equName, Equipment.equBuyDate, Equipment.equPosition, Employee.empName, Department.depName FROM Employee,Equipment,Department WHERE Equipment.equPrincipal = Employee.empId  AND  Employee.empCode = Department.depId AND " + Text1, conn);
                SqlCommand myCommand = new SqlCommand("SELECT * FROM Equipment WHERE " + Text1, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                if (!dr.HasRows)
                {
                    Label1.Text = "对不起，您查的资料不存在";
                }
                else
                {
                    Label2.Text = "查询结果：";
                }
            }  
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType != DataControlRowType.Header) return;
            GridViewRow gvr = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
            int i = 0;
            for(i = 0; i < fieldNames.Length; i++)
            {
                TableCell tc = new TableCell();
                tc.Text = fieldNames[i].ToString();
                gvr.Cells.Add(tc);
            }

            this.GridView1.Controls[0].Controls.AddAt(0, gvr);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("image.aspx");
        }
    }
}