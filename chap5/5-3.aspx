<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-3.aspx.cs" Inherits="chap5_5_3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>成绩：
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="请输入0~100之间的值！" ControlToValidate="TextBox1" MinimumValue="0" MaximumValue="100" Type="Double"></asp:RangeValidator>
        </p>
        <p>日期：
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="日期错误！" ControlToValidate="TextBox2" MinimumValue="2000-1-1" MaximumValue="2008-1-1" Type="Date"></asp:RangeValidator>
        </p>
    </div>
    </form>
</body>
</html>
