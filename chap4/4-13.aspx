<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-13.aspx.cs" Inherits="chap4_4_13" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <span class="style1" >1、您从事的是那种应用程序的编程？</span>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="Web应用程序" />
                    <asp:ListItem Value="Windows应用程序" />
                </asp:RadioButtonList>
                <asp:Button ID="Button1" runat="server" Text="下一个" CommandName="NextView"/>
            </asp:View>

            <asp:View ID="View2" runat="server">
            <span class="style1" >2、您最常用的语言是哪一种？</span>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="C#语言" />
                <asp:ListItem Value="Java" />
                </asp:RadioButtonList>
                <asp:Button ID="Button3" runat="server" Text="上一个" CommandName="PrevView" />
                <asp:Button ID="Button2" runat="server" Text="下一个" CommandName="NextView" 
                    onclick="Button2_Click"/>
            </asp:View>

            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                <asp:Button ID="Button4" runat="server" Text="保存" onclick="Button4_Click" />
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
