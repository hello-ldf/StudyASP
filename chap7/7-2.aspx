<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-2.aspx.cs" Inherits="chap7_7_2" %>

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
            SelectCommand="SELECT [CategoryId], [Name] FROM [Category]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            SelectCommand="SELECT [ProductId], [CategoryId], [Name] FROM [Product] WHERE ([CategoryId] = @CategoryId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="CategoryId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId" RepeatDirection="Horizontal" AutoPostBack="true">
        </asp:RadioButtonList>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="Name" DataValueField="ProductId" Width="115px"></asp:ListBox>
    </div>
    </form>
</body>
</html>
