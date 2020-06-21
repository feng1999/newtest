<%@ Page Title="" Language="C#" MasterPageFile="~/Retrieve.Master" AutoEventWireup="true" CodeBehind="Retrieve2.aspx.cs" Inherits="EMS201724112121.Retrieve2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="depId">部门代号</asp:ListItem>
                <asp:ListItem Value="depName">部门名称</asp:ListItem>
                <asp:ListItem Value="depSupervisor">部门主管编号</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" OnRowCreated="GridView3_RowCreated" ShowHeader="False">
            </asp:GridView>
            <br />
        全部部门信息：<br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="depId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="depId" HeaderText="部门代号" ReadOnly="True" SortExpression="depId" />
                    <asp:BoundField DataField="depName" HeaderText="部门名称" SortExpression="depName" />
                    <asp:BoundField DataField="depSupervisor" HeaderText="部门主管编号" SortExpression="depSupervisor" />
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
            <br />
    </div>
</asp:Content>
