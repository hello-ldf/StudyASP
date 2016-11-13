<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-6.aspx.cs" Inherits="chap4_4_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListBox ID="ListBox1" runat="server" Rows="5" SelectionMode="Multiple">
            <asp:ListItem Value="hunan">湖南</asp:ListItem>
            <asp:ListItem Value="jiangxi">江西</asp:ListItem>
            <asp:ListItem Value="beijing">北京</asp:ListItem>
            <asp:ListItem Value="shanghai">上海</asp:ListItem>
            <asp:ListItem Value="nanjing">南京</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Button1" runat="server" Text=">" Height="51px" 
            onclick="Button1_Click" Width="35px" />
        <asp:ListBox ID="ListBox2" runat="server" Rows="5" SelectionMode="Multiple"></asp:ListBox>
    </div>
    </form>
</body>
</html>
