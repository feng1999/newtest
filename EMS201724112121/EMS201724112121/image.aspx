﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image.aspx.cs" Inherits="EMS201724112121.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            输入照片的全名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查看" />
        &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回上一级" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
        </div>
    </form>
</body>
</html>
