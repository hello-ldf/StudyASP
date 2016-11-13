<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6-1.aspx.cs" Inherits="chap6_6_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/chap6/QueryString.aspx?name=张三&age=23">传递查询字符串到QueryString.aspx</asp:HyperLink>
    </div>
    </form>
</body>
</html>
