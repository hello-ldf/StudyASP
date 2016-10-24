<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-1.aspx.cs" Inherits="chap7_7_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            onselected="SqlDataSource1_Selected" 
            SelectCommand="SELECT [Name], [CategoryId] FROM [Category]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
