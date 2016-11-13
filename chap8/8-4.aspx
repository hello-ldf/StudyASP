<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-4.aspx.cs" Inherits="chap8_8_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="5"
            DataKeyNames="ProductId" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:CheckBox ID="CheckAll" runat="server" Text="全选" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckItem" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductId" />
                <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource2"
                            DataTextField="CategoryId" DataValueField="CategoryId">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShopDataContext"
                            EntityTypeName="" Select="new (CategoryId)" TableName="Category">
                        </asp:LinqDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext"
            EnableUpdate="True" EntityTypeName="" TableName="Product">
        </asp:LinqDataSource>
        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
