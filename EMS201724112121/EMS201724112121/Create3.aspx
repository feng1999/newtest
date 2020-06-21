<%@ Page Title="" Language="C#" MasterPageFile="~/Create.Master" AutoEventWireup="true" CodeBehind="Create3.aspx.cs" Inherits="EMS201724112121.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 500px;
    }
    .auto-style2 {
        height: 24px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <table class="auto-style1">
        <tr>
            <td>部门代号：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">部门名称：</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>部门主管：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
</p>
</asp:Content>
