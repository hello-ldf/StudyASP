using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "谢谢您的参与！<br/>您选择了:<br/>" + RadioButtonList1.Text + "<br/>" + RadioButtonList2.Text;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Button4.Enabled = false;
    }
}