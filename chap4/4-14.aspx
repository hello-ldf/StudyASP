<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4-14.aspx.cs" Inherits="chap4_4_14" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" Height="148px" Width="382px" 
            ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick" onfinishbuttonclick="Wizard1_FinishButtonClick">
            <HeaderTemplate>用户编程习惯调查</HeaderTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="程序类型" StepType="Start">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="Web应用程序" />
                        <asp:ListItem Value="Windows应用程序" />
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="程序语言" StepType="Step">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Value="C#" />
                        <asp:ListItem Value="Java" />
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="完成" StepType="Finish">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
