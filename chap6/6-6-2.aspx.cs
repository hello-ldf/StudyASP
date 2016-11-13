using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_6_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "用户名：" + PreviousPage.Name + "<br/>密&nbsp码：";
        TextBox pw = (TextBox)PreviousPage.FindControl("TextBox2");
        Label1.Text += pw.Text + "<br/>";
    }
}