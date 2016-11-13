<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-3.aspx.cs" Inherits="chap4_4_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        用户名：<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" OnTextChanged="CheckName"></asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        密&nbsp&nbsp码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br />
        E-mail：<asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Email"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="确认" Font-Size="X-Large"/>
    </div>
    </form>
</body>
</html>
