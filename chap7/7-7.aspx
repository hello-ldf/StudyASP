<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-7.aspx.cs" Inherits="chap7_7_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="MyPetShopDataContext" EntityTypeName="" 
            TableName="Category" EnableDelete="True" EnableInsert="True" 
            EnableUpdate="True">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryId" 
            DataSourceID="LinqDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"/>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
