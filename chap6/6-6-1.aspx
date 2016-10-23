<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6-6-1.aspx.cs" Inherits="chap6_6_6_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
        密&nbsp码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br/>
        <asp:Button ID="Button1" runat="server" Text="确定" PostBackUrl="~/chap6/6-6-2.aspx" />
    </div>
    </form>
</body>
</html>
