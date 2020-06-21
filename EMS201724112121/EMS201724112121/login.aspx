<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EMS201724112121.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            登录界面<br />
            <br />
            账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server"  ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
