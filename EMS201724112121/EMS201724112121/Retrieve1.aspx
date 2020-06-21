<%@ Page Title="" Language="C#" MasterPageFile="~/Retrieve.Master" AutoEventWireup="true" CodeBehind="Retrieve1.aspx.cs" Inherits="EMS201724112121.Retrieve1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Equipment]"></asp:SqlDataSource>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="equId">设备编号</asp:ListItem>
            <asp:ListItem Value="equName">设备名称</asp:ListItem>
<asp:ListItem Value="equSpecifications">设备规格</asp:ListItem>
            <asp:ListItem Value="equImage">设备图片</asp:ListItem>
            <asp:ListItem Value="equPrice">价格</asp:ListItem>
            <asp:ListItem Value="equBuyDate">购入日期</asp:ListItem>
            <asp:ListItem Value="equPosition">存放位置</asp:ListItem>
            <asp:ListItem Value="equPrincipal">设备负责人编号</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" />
        &nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="查看图片" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server"  OnRowCreated="GridView1_RowCreated" ShowHeader="False">
        </asp:GridView>
        <br />
        全部设备信息：<br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="equId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="equId" HeaderText="设备编号" ReadOnly="True" SortExpression="equId" />
                <asp:BoundField DataField="equName" HeaderText="设备名称" SortExpression="equName" />
                <asp:BoundField DataField="equSpecifications" HeaderText="设备规格" SortExpression="equSpecifications" />
                <asp:BoundField DataField="equImage" HeaderText="设备图片" SortExpression="equImage" />
                <asp:BoundField DataField="equPrice" HeaderText="价格" SortExpression="equPrice" />
                <asp:BoundField DataField="equBuyDate" HeaderText="购入日期" SortExpression="equBuyDate" />
                <asp:BoundField DataField="equPosition" HeaderText="存放位置" SortExpression="equPosition" />
                <asp:BoundField DataField="equPrincipal" HeaderText="设备负责人编号" SortExpression="equPrincipal" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>

</asp:Content>
