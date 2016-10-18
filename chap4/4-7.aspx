<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-7.aspx.cs" Inherits="chap4_4_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
            <asp:ListItem Value="football">足球</asp:ListItem>
            <asp:ListItem Value="basketball">篮球</asp:ListItem>
            <asp:ListItem Value="badminton">羽毛球</asp:ListItem>
            <asp:ListItem Value="pingpong">乒乓球</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
