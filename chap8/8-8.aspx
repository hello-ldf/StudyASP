<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-8.aspx.cs" Inherits="chap8_8_8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CommandField HeaderText="详细资料" SelectText="详细资料" ShowSelectButton="true" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AutoGenerateRows="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource2">
            <Fields>
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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @ProductId" 
            InsertCommand="INSERT INTO [Product] ([CategoryId], [ListPrice], [UnitCost], [SuppId], [Name], [Descn], [Image], [Qty]) VALUES (@CategoryId, @ListPrice, @UnitCost, @SuppId, @Name, @Descn, @Image, @Qty)" 
            SelectCommand="SELECT * FROM [Product] WHERE ([ProductId] = @ProductId)" 
            UpdateCommand="UPDATE [Product] SET [CategoryId] = @CategoryId, [ListPrice] = @ListPrice, [UnitCost] = @UnitCost, [SuppId] = @SuppId, [Name] = @Name, [Descn] = @Descn, [Image] = @Image, [Qty] = @Qty WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
                <asp:Parameter Name="UnitCost" Type="Decimal" />
                <asp:Parameter Name="SuppId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Qty" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ProductId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
                <asp:Parameter Name="UnitCost" Type="Decimal" />
                <asp:Parameter Name="SuppId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
