using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            string sqlstr = string.Format("INSERT INTO Employee(empId,empPasswork,empName,empPhone,empIsSupervisor,empCode)" +
               "VALUES(N'{0}',N'{1}',N'{2}',N'{3}',N'{4}',N'{5}')", TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
            try
            {
                SqlCommand cmd = new SqlCommand(sqlstr, conn);
                cmd.ExecuteNonQuery();
                Label1.Text = "增加成功";
            }
            catch
            {
                Label1.Text = "人员已存在，增加失败";
            }
        }
    }
}