<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-7.aspx.cs" Inherits="chap9_9_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="角色："></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="用户："></asp:Label>
        </div>
        <div style="margin-top: 5px">
            <asp:ListBox ID="ListBox1" runat="server" Height="150px" Width="120px" AutoPostBack="true"></asp:ListBox>
            &nbsp;&nbsp;
            <asp:ListBox ID="ListBox2" runat="server" Height="150px" Width="120px" AutoPostBack="true" 
                style="margin-left: 7px"></asp:ListBox>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="添加到角色" onclick="Button1_Click" />
        </div>
        <div style="margin-top: 21px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="用户名">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItem.ToString() %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="从角色中删除" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
