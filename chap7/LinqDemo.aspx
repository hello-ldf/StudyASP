<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDemo.aspx.cs" Inherits="chap7_LinqDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="7-8 投影" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="7-9 选择" onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="7-10 排序" 
            onclick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="7-11 分组" 
            onclick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="7-12 聚合函数" 
            onclick="Button5_Click" />
        <asp:Button ID="Button6" runat="server" Text="7-13 直接引用对象连接" 
            onclick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="7-14 Join连接" 
            onclick="Button7_Click" />
        <asp:Button ID="Button8" runat="server" Text="7-15 模糊查询" 
            onclick="Button8_Click" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
