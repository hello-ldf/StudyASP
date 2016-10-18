using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] strName = {"赵","钱","孙","李"};
        Array.Sort(strName);
        foreach (string n in strName)
        {
            Response.Write(n+"<br />");
        }
    }
}