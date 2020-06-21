<%@ Page Title="" Language="C#" MasterPageFile="~/Retrieve.Master" AutoEventWireup="true" CodeBehind="Retrieve3.aspx.cs" Inherits="EMS201724112121.Retrieve3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    <br />
    <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="empId">人员编号</asp:ListItem>
                <asp:ListItem Value="empPasswork">密码</asp:ListItem>
                <asp:ListItem Value="empName">姓名</asp:ListItem>
                <asp:ListItem Value="empPhone">联系电话</asp:ListItem>
                <asp:ListItem Value="empIsSupervisor">是否为管理人</asp:ListItem>
                <asp:ListItem Value="empCode">部门代号</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:GridView ID="GridView5" runat="server" OnRowCreated="GridView5_RowCreated" ShowHeader="False">
            </asp:GridView>
            <br />
        全部人员信息：<br />
            <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="empId" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="empId" HeaderText="人员编号" ReadOnly="True" SortExpression="empId" />
                    <asp:BoundField DataField="empPasswork" HeaderText="密码" SortExpression="empPasswork" />
                    <asp:BoundField DataField="empName" HeaderText="姓名" SortExpression="empName" />
                    <asp:BoundField DataField="empPhone" HeaderText="联络电话" SortExpression="empPhone" />
                    <asp:BoundField DataField="empIsSupervisor" HeaderText="是否为管理员" SortExpression="empIsSupervisor" />
                    <asp:BoundField DataField="empCode" HeaderText="部门代号" SortExpression="empCode" />
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
