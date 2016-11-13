using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap12_12_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "刷新时间" + DateTime.Now.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = "刷新时间" + DateTime.Now.ToString();
    }
}