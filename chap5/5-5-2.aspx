<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-5-2.aspx.cs" Inherits="chap5_5_5_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>请输入一个数字：
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="不是一个偶数！" ControlToValidate="TextBox1" OnServerValidate="ServerValidate"></asp:CustomValidator>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
