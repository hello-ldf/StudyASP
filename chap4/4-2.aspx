<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-2.aspx.cs" Inherits="chap4_4_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" AccessKey="N" AssociatedControlID="TextBox1" Text="用户名（N）："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" AccessKey="P" AssociatedControlID="TextBox2" Text="密&nbsp&nbsp码（P）："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
