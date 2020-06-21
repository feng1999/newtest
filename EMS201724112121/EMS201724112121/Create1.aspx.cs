using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            bool files = false;
            if (this.FileUpload1.HasFile)
            {
                //获取上传文件的后缀
                String fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                String[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
                //判断文件类型是否符合
                for (int i = 0; i < restrictExtension.Length; i++)
                {
                    if (fileExtension == restrictExtension[i])
                    {
                        files = true;
                    }
                }
                //调用SaveAs方法实现上传
                if (files == true)
                {
                    try
                    {
                        String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
                        SqlConnection conn = new SqlConnection(strConn);
                        conn.Open();
                        string sqlstr = string.Format("INSERT INTO Equipment(equId,equName,equSpecifications,equImage,equPrice,equBuyDate,equPosition,equPrincipal)" +
                           "VALUES(N'{0}',N'{1}',N'{2}',N'{3}',N'{4}','{5}',N'{6}',N'{7}')", TextBox1.Text, TextBox2.Text, TextBox3.Text, FileUpload1.FileName, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text);
                        this.FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName);
                        try
                        {
                            SqlCommand cmd = new SqlCommand(sqlstr, conn);
                            cmd.ExecuteNonQuery();
                            Label1.Text = "增加成功";
                        }
                        catch
                        {
                            Label1.Text = "设备已存在，增加失败";
                        }
                    }
                    catch
                    {
                        this.Label1.Text = "图片上传不成功";
                    }
                }
                else
                {
                    this.Label1.Text = "只能够上传后缀为.gif、 .jpg、 .bmp、.png的文件夹";
                }
            }
              
        }
    }
}