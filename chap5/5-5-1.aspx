<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5-5-1.aspx.cs" Inherits="chap5_5_5_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script language="javascript" type="text/javascript">
        function ClientValidate(source, args) {
            if (args.Value % 2 == 0)
                args.IsValid = true
            else
                args.IsValid = false
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="不是一个偶数！" ControlToValidate="TextBox1" ClientValidationFunction="ClientValidate"></asp:CustomValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
