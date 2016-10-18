using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int sum = 0;
        int i = 1;
        int n = int.Parse(TextBox1.Text);
        while (i <= n)
        {
            sum += i;
            i++;
        }
        Label1.Text = "和为：" + sum.ToString();
    }
}