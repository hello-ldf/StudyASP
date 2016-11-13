<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "不管你输入什么，我都喜欢ASP.NET！";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>单文件页模型</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server">请输入内容</asp:TextBox>
            <asp:Label ID="Label1" runat="server" ForeColor="#FF9933"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
        </p>
    </div>
    </form>
</body>
</html>
