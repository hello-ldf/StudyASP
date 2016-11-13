using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap5_5_6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            Label1.Text = "验证通过！";
        else
            Label1.Text = "验证未通过！";
    }

    protected void ServerValidate(object source, ServerValidateEventArgs args)
    {
        string cId = args.Value;
        args.IsValid = true;

        try
        {
            DateTime.Parse(cId.Substring(6,4)+"-"+cId.Substring(10,2)+"-"+cId.Substring(12,2));
        }
        catch{
            args.IsValid = false;
        }
    }
}