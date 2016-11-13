<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12-6.aspx.cs" Inherits="chap12_12_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="发出请求" onclick="Button1_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            正在连接服务器...
        </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
