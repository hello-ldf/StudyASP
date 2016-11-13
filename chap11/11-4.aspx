<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11-4.aspx.cs" Inherits="chap11_11_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
        <td>
            <asp:TreeView ID="TreeView1" runat="server" ShowLines="true"
                 SelectedNodeStyle-BorderStyle="Solid">
                <Nodes>
                    <asp:TreeNode Text="浙江" Value="浙江">
                        <asp:TreeNode Text="杭州" Value="杭州"></asp:TreeNode>
                        <asp:TreeNode Text="嘉兴" Value="嘉兴"></asp:TreeNode>
                        <asp:TreeNode Text="宁波" Value="宁波"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="添加节点" onclick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="移除当前节点" onclick="Button2_Click" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="全部展开" onclick="Button3_Click" /><br /><br />
            <asp:Button ID="Button4" runat="server" Text="全部折叠" onclick="Button4_Click" />
        </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
