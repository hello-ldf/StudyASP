<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-4.aspx.cs" Inherits="chap9_9_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:ChangePassword ID="ChangePassword1" runat="server" DisplayUserName="true" ContinueDestinationPageUrl="~/chap9/9-1.aspx">
                </asp:ChangePassword>
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        <asp:ChangePassword ID="ChangePassword2" runat="server" ContinueDestinationPageUrl="~/chap9/9-3.aspx">
                        </asp:ChangePassword>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="Member">
                    <ContentTemplate>
                        <asp:ChangePassword ID="ChangePassword3" runat="server" ContinueDestinationPageUrl="~/chap9/9-3.aspx">
                        </asp:ChangePassword>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
