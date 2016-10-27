<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-7-2.aspx.cs" Inherits="chap8_8_7_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductId" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                    SortExpression="CategoryId" />
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" 
                    SortExpression="ListPrice" />
                <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" 
                    SortExpression="UnitCost" />
                <asp:BoundField DataField="SuppId" HeaderText="SuppId" 
                    SortExpression="SuppId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyPetShopDataContext" EntityTypeName="" TableName="Product" 
            Where="CategoryId == @CategoryId">
            <WhereParameters>
                <asp:QueryStringParameter Name="CategoryId" QueryStringField="CategoryId" 
                    Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
