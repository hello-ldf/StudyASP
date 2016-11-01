<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-6.aspx.cs" Inherits="chap9_9_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="用户名" />
                <asp:BoundField DataField="CreationDate" HeaderText="注册日期" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="最后登录时间" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
