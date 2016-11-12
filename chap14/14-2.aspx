<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14-2.aspx.cs" Inherits="chap14_14_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        输入目录：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="计算目录大小" onclick="Button1_Click" />
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:TreeView ID="TreeView1" runat="server">
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
