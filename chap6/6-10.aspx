<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6-10.aspx.cs" Inherits="chap6_6_10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    邮政编码：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="不能为空！">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="格式不正确" ValidationExpression="\d{6}">格式不正确</asp:RegularExpressionValidator>
    <br/>
        <asp:Button ID="Button1" runat="server" Text="写入" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="显示" onclick="Button2_Click" />
        <br/>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
