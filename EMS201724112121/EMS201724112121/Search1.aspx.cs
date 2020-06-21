using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112121
{
    public partial class Search1 : System.Web.UI.Page
    {
        private string sqlconn;
        String strConn =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";

        void ShowData1()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT 设备.设备编号, 设备.设备名称, 设备.购入日期, 设备.存放位置, 员工.姓名, 部门.部门名称 FROM 员工, 设备, 部门 WHERE 设备.设备负责人编号 = 员工.人员编号  AND  员工.部门代号 = 部门.部门代号 ", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();
               
            }
        }

        void ShowData2()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT *  FROM  部门", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView4.DataSource = dr;
                GridView4.DataBind();

            }
        }

        void ShowData3()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT *  FROM  员工", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView6.DataSource = dr;
                GridView6.DataBind();

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData1();
            ShowData2();
            ShowData3();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                Label1.Text = "";
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text1 = DropDownList1.SelectedItem.Value + " = N'" + TextBox1.Text + "'";
                SqlCommand myCommand = new SqlCommand("SELECT 设备.设备编号, 设备.设备名称, 设备.购入日期, 设备.存放位置, 员工.姓名, 部门.部门名称 FROM 员工,设备,部门 WHERE 设备.设备负责人编号 = 员工.人员编号  AND  员工.部门代号 = 部门.部门代号 AND " + Text1, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                if (!dr.HasRows)
                {
                    Label1.Text = "对不起，您查的资料不存在";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text2 = DropDownList2.SelectedItem.Value + " = N'" + TextBox2.Text + "'";
                SqlCommand myCommand = new SqlCommand("SELECT *  FROM  部门 WHERE " + Text2, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView3.DataSource = dr;
                GridView3.DataBind();
                if (!dr.HasRows)
                {
                    Label2.Text = "对不起，您查的资料不存在";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            using (SqlConnection cn = new SqlConnection())
            {
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                string Text3 = DropDownList3.SelectedItem.Value + " = N'" + TextBox3.Text + "'";
                SqlCommand myCommand = new SqlCommand("SELECT *  FROM  员工 WHERE " + Text3, conn);
                SqlDataReader dr = myCommand.ExecuteReader();
                GridView5.DataSource = dr;
                GridView5.DataBind();
                if (!dr.HasRows)
                {
                    Label3.Text = "对不起，您查的资料不存在";
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String m;
            m = "Default.aspx?m=是";
            Response.Redirect(m);
        }
    }
}