using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("This is a dog<hr/>");
        Response.Write("This is a dog" + Server.HtmlEncode("<hr/>") + "<br/>");
        Response.Write("<a href=~/chap6/Student.aspx?name=张 三>Student.aspx</a><br/>");
        Response.Write("<a href=~/chap6/Student.aspx?name=" + Server.UrlEncode("张 三") + ">Student.aspx</a><br/>");
    }
}