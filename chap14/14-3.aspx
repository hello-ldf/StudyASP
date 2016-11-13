<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14-3.aspx.cs" Inherits="chap14_14_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        源文件：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="移动" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="复制" onclick="Button2_Click" />&nbsp
        目标文件：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br /><br />
        执行情况：<br />
        <asp:Label ID="Label1" runat="server" Text="信息提示" BorderWidth="2" Font-Italic="true"></asp:Label>
    </div>
    </form>
</body>
</html>
