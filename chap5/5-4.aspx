<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-4.aspx.cs" Inherits="chap5_5_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="请输入合法的Email地址！" ControlToValidate="TextBox1"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
