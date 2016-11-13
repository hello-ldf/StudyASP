<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12-2.aspx.cs" Inherits="chap12_12_2" %>

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
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="刷新UpdatePanel" 
                onclick="Button1_Click" />
        </ContentTemplate>
        </asp:UpdatePanel>

        <asp:Label ID="Label1" runat="server" Text="控件外标签"></asp:Label>
    </div>
    </form>
</body>
</html>
