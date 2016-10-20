<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-6.aspx.cs" Inherits="chap5_5_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>用&nbsp户名：
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="TextBox1" SetFocusOnError="true">*</asp:RequiredFieldValidator>
        </p>
        <p>密&nbsp&nbsp码：
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入密码！" ControlToValidate="TextBox2" SetFocusOnError="true">*</asp:RequiredFieldValidator>
        </p>
        <p>确认密码：
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="TextBox3" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码输入不一致！" ControlToValidate="TextBox3" ControlToCompare="TextBox2" SetFocusOnError="true"></asp:CompareValidator>
        </p>
        <p>电话号码：
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请输入电话号码!" ControlToValidate="TextBox4" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="请输入正确的电话号码！" ControlToValidate="TextBox4" ValidationExpression="\d{4}-\d{8}" SetFocusOnError="true"></asp:RegularExpressionValidator>
        </p>
        <p>身份证号：
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="请输入身份证号!" ControlToValidate="TextBox5" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="身份证日期不正确！" ControlToValidate="TextBox5" OnServerValidate="ServerValidate" SetFocusOnError="true"></asp:CustomValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    </form>
</body>
</html>
