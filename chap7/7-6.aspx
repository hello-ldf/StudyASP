<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-6.aspx.cs" Inherits="chap7_7_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/chap7/books.xml" TransformFile="~/chap7/books.xslt"></asp:XmlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
