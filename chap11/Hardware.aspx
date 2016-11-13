<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hardware.aspx.cs" Inherits="chap11_Hardware" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot" PathSeparator="-->"
             ParentLevelsDisplayed="1">
             <PathSeparatorTemplate>
                 <asp:Image ID="Image1" runat="server" Height="16px" Width="16px"
                     ImageUrl="~/Picture/doge1.jpg" />
             </PathSeparatorTemplate>
        </asp:SiteMapPath>
    </div>
    </form>
</body>
</html>
