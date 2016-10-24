<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-3.aspx.cs" Inherits="chap7_7_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    分类名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
    描&nbsp述：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br/>
        <asp:Button ID="Button1" runat="server" Text="插入并显示" onclick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyPetShopConnectionString %>" 
            InsertCommand="INSERT INTO Category(Name, Descn) VALUES (@Name, @Descn)" 
            SelectCommand="SELECT * FROM [Category]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="Descn" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="CategoryId">
            <Columns>
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
