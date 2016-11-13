<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-11.aspx.cs" Inherits="chap4_4_11" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
            第一步：输入用户名<br />
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="下一步" onclick="Button1_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            第二步：输入用户信息<br />
            姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            电话：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="下一步" onclick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            第三步：请确认您的输入信息<br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Button ID="Button3" runat="server" Text="确认" onclick="Button3_Click" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
