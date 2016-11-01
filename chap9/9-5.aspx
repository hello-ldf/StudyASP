<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-5.aspx.cs" Inherits="chap9_9_5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <MailDefinition BodyFileName="~/chap9/PasswordMail.txt" From="604862524@qq.com" IsBodyHtml="true" Priority="High" Subject="您的新密码"></MailDefinition>
        </asp:PasswordRecovery>
    </div>
    </form>
</body>
</html>
