<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-5.aspx.cs" Inherits="chap8_8_5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductId" DataSourceID="LinqDataSource1"
            OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                    SortExpression="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyPetShopDataContext" EnableDelete="True" EnableUpdate="True" 
            EntityTypeName="" TableName="Product">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
