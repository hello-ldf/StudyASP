using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap10_10_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request["DropDownList1"] != "0")
        {
            Page.Theme = Request["DropDownList1"];
        }
    }
}