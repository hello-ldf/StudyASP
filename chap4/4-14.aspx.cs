using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if(Wizard1.ActiveStepIndex == 1)
        {
            Label1.Text = "您选择了：<br/>" + RadioButtonList1.Text + "<br/>" + RadioButtonList2.Text;
        }
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
}