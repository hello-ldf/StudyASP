<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12-5.aspx.cs" Inherits="chap12_12_5" %>

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
        <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                汇率：1$ 兑换RMB
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                时间：
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" />
            </Triggers>
        </asp:UpdatePanel>
        <br/>刷新频率：
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true"
        OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="0">实时</asp:ListItem>
            <asp:ListItem Value="5">5秒</asp:ListItem>
            <asp:ListItem Value="60">60秒</asp:ListItem>
            <asp:ListItem Value="-1" Selected="True">不刷新</asp:ListItem>
        </asp:RadioButtonList>
        页面最后更新时间：
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
