﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3-3.aspx.cs" Inherits="chap3_3_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>求前N项和</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server">请输入N</asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="求和" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
