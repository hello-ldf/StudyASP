using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap10_10_4 : System.Web.UI.UserControl
{
    private string _text;
    public string Text
    {
        get { return _text; }
        set { _text = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Text = this.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "搜索完成";
    }
}