using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap5_5_5_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ServerValidate(object source, ServerValidateEventArgs args)
    {
        int value = int.Parse(args.Value);
        if (value % 2 == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            Label1.Text = "验证成功";
    }
}