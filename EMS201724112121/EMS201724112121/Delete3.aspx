<%@ Page Title="" Language="C#" MasterPageFile="~/Delete.Master" AutoEventWireup="true" CodeBehind="Delete3.aspx.cs" Inherits="EMS201724112121.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="删除" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
