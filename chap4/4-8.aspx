<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-8.aspx.cs" Inherits="chap4_4_8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Picture/导航栏.jpg">
        <asp:RectangleHotSpot Bottom="26" NavigateUrl="http://www.baidu.com" Right="70" />
        <asp:RectangleHotSpot Bottom="26" Left="72" Right="141" />
        <asp:RectangleHotSpot Bottom="26" Left="143" Right="214" />
        <asp:RectangleHotSpot Bottom="26" Left="216" Right="287" />
        </asp:ImageMap>
    </div>
    </form>
</body>
</html>
