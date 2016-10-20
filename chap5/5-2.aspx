<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-2.aspx.cs" Inherits="chap5_5_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
        密&nbsp&nbsp码：
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        确认密码：
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次输入密码不一致！" ControlToCompare="TextBox1" ControlToValidate="TextBox2"></asp:CompareValidator>
    </p>
    <p>
        答&nbsp&nbsp案：
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="答案错误！" ControlToValidate="TextBox3" ValueToCompare="A"></asp:CompareValidator>
    </p>
    <p>
        金&nbsp&nbsp额：
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="必须输入Currency类型！" ControlToValidate="TextBox4" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
    </p>
    </div>
    </form>
</body>
</html>
