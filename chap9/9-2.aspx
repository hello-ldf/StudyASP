<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-2.aspx.cs" Inherits="chap9_9_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/chap9/9-1.aspx" AutoGeneratePassword="false" OnCreatedUser="CreateUserWizard1_CreatedUser">
            <MailDefinition BodyFileName="~/chap9/ThankEmail.txt" From="604862524@qq.com" IsBodyHtml="true" Subject="感谢注册"></MailDefinition>
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
