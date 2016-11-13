<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-10.aspx.cs" Inherits="chap4_4_10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server" GridLines="Both">
            <asp:TableRow>
                <asp:TableCell>学号</asp:TableCell>
                <asp:TableCell>姓名</asp:TableCell>
                <asp:TableCell>存款</asp:TableCell>
                <asp:TableCell>电话</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
