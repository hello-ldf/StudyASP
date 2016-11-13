<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-1.aspx.cs" Inherits="chap5_5_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Text="您的姓名"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" InitialValue="您的姓名">不能与初值相同</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密&nbsp码："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
