using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_8_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "ssg" && TextBox2.Text == "123")
        {
            Session.Add("Name", TextBox1.Text);
            Response.Redirect("~/chap6/6-8-2.aspx");
        }
    }
}