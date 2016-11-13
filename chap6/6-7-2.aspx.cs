using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_7_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Name"] != null)
        {
            Label1.Text = Request.Cookies["Name"].Value + "，欢迎您回来！";
        }
        else
        {
            Response.Redirect("~/chap6/6-7-1.aspx");
        }
    }
}