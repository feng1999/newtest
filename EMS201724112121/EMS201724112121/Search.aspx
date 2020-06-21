<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="EMS201724112121.addition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            查询功能&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="返回上一级" />
            <hr />
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.equId, Equipment.equName, Equipment.equBuyDate, Equipment.equPosition, Employee.empName, Department.depName FROM Employee,Equipment,Department WHERE Equipment.equPrincipal = Employee.empId  AND  Employee.empCode = Department.depId"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="equId">设备编号</asp:ListItem>
            <asp:ListItem Value="equName">设备名称</asp:ListItem>
            <asp:ListItem Value="equImage">购入日期</asp:ListItem>
            <asp:ListItem Value="equPosition">存放位置</asp:ListItem>
            <asp:ListItem Value="empName">设备负责人姓名</asp:ListItem>
            <asp:ListItem Value="depName">部门名称</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" />
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
                <asp:BoundField DataField="equBuyDate" HeaderText="购入日期" SortExpression="equBuyDate" />
                <asp:BoundField DataField="equPosition" HeaderText="存放位置" SortExpression="equPosition" />
                <asp:BoundField DataField="empName" HeaderText="设备负责人" SortExpression="empName" />
                <asp:BoundField DataField="depName" HeaderText="部门名称" SortExpression="depName" />
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
    </form>
</body>
</html>
