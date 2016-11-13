using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_1 : System.Web.UI.Page
{
    enum Color
    {
        Red = 1, Yellow, Blue
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Color enTest = Color.Yellow;
        var i = (int)Color.Yellow;
        Response.Write("enTest的值为："+enTest+"<br/>");
        Response.Write("i的值为："+i);
    }
}