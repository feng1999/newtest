<%@ Page Title="" Language="C#" MasterPageFile="~/Create.Master" AutoEventWireup="true" CodeBehind="Create2.aspx.cs" Inherits="EMS201724112121.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 500px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style1">
    <tr>
        <td>人员编号：</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>密码：</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>姓名：</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>联络电话：</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>是否为管理人：</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>部门代号：</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="增加" />
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
