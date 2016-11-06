<%@ Page Language="C#" AutoEventWireup="true" CodeFile="10-5.aspx.cs" Inherits="chap10_10_5" %>
<%@ Register Src="~/chap10/10-4.ascx" TagName="SearchBT" TagPrefix="ldf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:WebPartManager ID="WebPartManager1" runat="server"/>
        <table style="width:100%" >
        <tr valign="middle" style="background: #00ccff">
        <td colspan="2">
        <span style="font-size: 16pt;font-family:Verdana"><strong>Web部件应用</strong></span>
        </td>
        <td style="height:22px">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Browser</asp:ListItem>
                <asp:ListItem>Design</asp:ListItem>
                <asp:ListItem>Catalog</asp:ListItem>
                <asp:ListItem>Edit</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        <tr valign="top">
        <td style="width:20%">
            <asp:CatalogZone ID="CatalogZone1" runat="server">
            <ZoneTemplate><asp:PageCatalogPart runat="server" ID="PageCatalogPart1" /></ZoneTemplate>
            </asp:CatalogZone>
            <asp:EditorZone ID="EditorZone1" runat="server">
            <ZoneTemplate><asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" /></ZoneTemplate>
            </asp:EditorZone>
        </td>
        <td style="width:60%">
            <asp:WebPartZone ID="WebPartZone1" runat="server">
            <ZoneTemplate>
            <ldf:SearchBT ID="SearchBT1" runat="server" Text="搜索"/>
            </ZoneTemplate>
            </asp:WebPartZone>
        </td>
        <td style="width:20%">
            <asp:WebPartZone ID="WebPartZone2" runat="server">
            <ZoneTemplate>
                <asp:Calendar ID="Calendar1" runat="server" ShowTitle="true"></asp:Calendar>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </ZoneTemplate>
            </asp:WebPartZone>
        </td>
        </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
