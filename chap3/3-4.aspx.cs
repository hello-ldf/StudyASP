using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i < 5; i++)
        {
            for (int j = 1; j < 20 - i; j++)
            {
                Response.Write("&nbsp;");
            }
            for (int k = 1; k < 2 * i; k++)
            {
                Response.Write("*");
            }
            Response.Write("<br />");
        }
    }
}