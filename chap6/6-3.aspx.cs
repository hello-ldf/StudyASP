using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<center>");
        for (int i = 1; i <= 4; i++)
        {
            Response.Write("<p><font size="+i.ToString()+">我喜欢ASP.NET</font></p>");
        }
        Response.Write("</center>");
    }
}