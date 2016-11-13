<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14-5.aspx.cs" Inherits="chap14_14_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="写入" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="读取" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
