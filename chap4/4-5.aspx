<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-5.aspx.cs" Inherits="chap4_4_5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="77" AutoPostBack="true" OnSelectedIndexChanged="SelectChanged">
        </asp:DropDownList>年&nbsp
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectChanged">
        </asp:DropDownList>月&nbsp
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>日
    </div>
    </form>
</body>
</html>
