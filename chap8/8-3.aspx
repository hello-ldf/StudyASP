<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-3.aspx.cs" Inherits="chap8_8_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" 
                    SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                    SortExpression="Name" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ReadOnly="True" 
                    SortExpression="Image">
                    <ControlStyle Height="50px" Width="70px" />
                </asp:ImageField>
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" ReadOnly="True" 
                    SortExpression="ListPrice" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="MyPetShopDataContext" EntityTypeName="" 
        Select="new (ProductId, Name, Image, ListPrice)" TableName="Product">
    </asp:LinqDataSource>
</body>
</html>
