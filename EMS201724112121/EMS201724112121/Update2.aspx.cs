using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class WebForm3 : System.Web.UI.Page
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
            string sqlstr = "UPDATE Department SET depName=@name,depSupervisor=@ren WHERE depId=@id";
            // 建立SqlCommand对象cmd
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar));
            cmd.Parameters.Add(new SqlParameter("@ren", SqlDbType.NVarChar));
            cmd.Parameters["@id"].Value = TextBox1.Text;
            cmd.Parameters["@name"].Value = TextBox2.Text;
            cmd.Parameters["@ren"].Value = TextBox3.Text;
            int rows = cmd.ExecuteNonQuery();
            if (rows == 0)
            {
                Label1.Text = "部门不存在，修改失败";
            }
            else
            {
                Label1.Text = "修改成功";
            }
        }
    }
}