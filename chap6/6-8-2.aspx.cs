using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_8_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
        {
            Label1.Text = Session["Name"] + "欢迎您！";
        }
        else
        {
            Response.Redirect("~/chap6/6-8-1.aspx");
        }
    }
}