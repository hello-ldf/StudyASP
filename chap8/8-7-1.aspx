<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-7-1.aspx.cs" Inherits="chap8_8_7_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="CategoryId" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="CategoryId" 
                    DataNavigateUrlFormatString="~/chap8/8-7-2.aspx?CategoryId={0}" 
                    DataTextField="CategoryId" HeaderText="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyPetShopDataContext" EntityTypeName="" TableName="Category">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
