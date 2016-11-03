<%@ Page Language="C#" AutoEventWireup="true" CodeFile="10-4.aspx.cs" Inherits="chap10_10_4" %>
<%@ Register Src="~/chap10/10-4.ascx" TagName="SearchBT" TagPrefix="ldf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ldf:SearchBT ID="testBT1" runat="server" Text="开始查找" />
    </div>
    </form>
</body>
</html>
