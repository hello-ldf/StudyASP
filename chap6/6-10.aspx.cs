using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.PostCode = TextBox1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "存储的邮政编码为：" + Profile.PostCode;
    }
}