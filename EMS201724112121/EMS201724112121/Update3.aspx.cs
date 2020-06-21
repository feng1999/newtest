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
    public partial class WebForm7 : System.Web.UI.Page
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
                        string sqlstr = "UPDATE Equipment SET equName=@name,equSpecifications=@Size,equImage=@image,equPrice=@money,equBuyDate=@date,equPosition=@Place,equPrincipal=@num WHERE equId=@id";
                        // 建立SqlCommand对象cmd
                        SqlCommand cmd = new SqlCommand(sqlstr, conn);
                        cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@Size", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@image", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@money", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@date", SqlDbType.Date));
                        cmd.Parameters.Add(new SqlParameter("@Place", SqlDbType.NVarChar));
                        cmd.Parameters.Add(new SqlParameter("@num", SqlDbType.NVarChar));

                        cmd.Parameters["@id"].Value = TextBox1.Text;
                        cmd.Parameters["@name"].Value = TextBox2.Text;
                        cmd.Parameters["@Size"].Value = TextBox3.Text;
                        cmd.Parameters["@image"].Value = FileUpload1.FileName;
                        cmd.Parameters["@money"].Value = TextBox5.Text;
                        cmd.Parameters["@date"].Value = TextBox6.Text;
                        cmd.Parameters["@Place"].Value = TextBox7.Text;
                        cmd.Parameters["@num"].Value = TextBox8.Text;
                        this.FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName);
                        int rows = cmd.ExecuteNonQuery();
                        if (rows == 0)
                        {
                            Label1.Text = "设备不存在，修改失败";
                        }
                        else
                        {
                            Label1.Text = "修改成功";
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