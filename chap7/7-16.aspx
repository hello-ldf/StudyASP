<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-16.aspx.cs" Inherits="chap7_7_16" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        Descn：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="插入数据" onclick="Button1_Click" /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="CategoryId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
