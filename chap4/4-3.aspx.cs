using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckName(object sender, EventArgs e)
    {
        if (TextBox1.Text == "lidaifu")
        {
            Label1.Text = "该用户名已存在！";
        }
        else
        {
            Label1.Text = "√";
        }
    }
}