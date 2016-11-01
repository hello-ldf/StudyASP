<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-3.aspx.cs" Inherits="chap9_9_3" %>

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
                您还未登录！<asp:LoginStatus ID="LoginStatus1" runat="server" />
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Member">
                    <ContentTemplate>
                        Welcome:<asp:LoginName ID="LoginName2" runat="server" />
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server">密码修改</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton4" runat="server">购物记录</asp:LinkButton>
                        &nbsp;<asp:LoginStatus ID="LoginStatus3" runat="server" />
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        Welcome:<asp:LoginName ID="LoginName1" runat="server" />&nbsp
                        <asp:LinkButton ID="LinkButton1" runat="server">密码修改</asp:LinkButton>&nbsp
                        <asp:LinkButton ID="LinkButton2" runat="server">系统管理</asp:LinkButton>&nbsp
                        <asp:LoginStatus ID="LoginStatus2" runat="server" />
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
