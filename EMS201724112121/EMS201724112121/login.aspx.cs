using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Text = "账号或密码为空，请输入正确的账号和密码!!!";
            }
            else
            {
                String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                SqlCommand myCommand = new SqlCommand("select * from Employee", conn);
                SqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    string text1 = (string)myReader[0];
                    string text2 = (string)myReader[1];
                    string text3 = (string)myReader[4];
                    
                   if (text1.Equals(TextBox1.Text))
                    {
                        if (text2.Equals(TextBox2.Text))
                        {
                            String m;
                            m = "Default.aspx?m=" + text3;
                            myReader.Close();
                            conn.Close();
                            Response.Redirect(m);
                        }
                }
            }
                Label1.Text = "用户名或者密码错误";
                myReader.Close();
                conn.Close();
            }
        }
    }
}
