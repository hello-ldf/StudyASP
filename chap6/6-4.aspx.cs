using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ("teacher".Equals(RadioButtonList1.SelectedValue))
            Response.Redirect("~/chap6/Teacher.aspx?name="+TextBox1.Text);
    }
}