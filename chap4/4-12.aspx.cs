using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button btSure = new Button();
        btSure.Text = "确认";
        btSure.ID = "btSure";
        btSure.Click += new EventHandler(btSure_Click);
        PlaceHolder1.Controls.Add(btSure);

        TextBox textBox = new TextBox();
        textBox.ID = "textBox";
        PlaceHolder1.Controls.Add(textBox);
    }

    protected void btSure_Click(object sender, EventArgs e)
    {
        Response.Write("你点了确认");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox textBox = (TextBox)PlaceHolder1.FindControl("textBox");
        Response.Write(textBox.Text);
    }
}