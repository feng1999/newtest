<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search1.aspx.cs" Inherits="EMS201724112121.Search1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            查询用户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="返回上一层" />
            <br /><hr />
            <br />
            设备查询：<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>设备编号</asp:ListItem>
                <asp:ListItem>设备名称</asp:ListItem>
                <asp:ListItem>购入日期</asp:ListItem>
                <asp:ListItem>存放位置</asp:ListItem>
                <asp:ListItem Value="姓名">设备负责人姓名</asp:ListItem>
                <asp:ListItem>部门名称</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <br />
            部门查询：<br />
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>部门代号</asp:ListItem>
                <asp:ListItem>部门名称</asp:ListItem>
                <asp:ListItem>部门主管</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:GridView ID="GridView3" runat="server">
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView4" runat="server">
            </asp:GridView>
            <br />
            人员查询：<br />
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>人员编号</asp:ListItem>
                <asp:ListItem>密码</asp:ListItem>
                <asp:ListItem>姓名</asp:ListItem>
                <asp:ListItem>联系电话</asp:ListItem>
                <asp:ListItem>是否为管理人</asp:ListItem>
                <asp:ListItem>部门代号</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:GridView ID="GridView5" runat="server">
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView6" runat="server">
            </asp:GridView>
            <br />


        </div>
    </form>
</body>
</html>
