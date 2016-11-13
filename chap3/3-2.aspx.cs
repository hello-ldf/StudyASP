using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime dtToday = DateTime.Today;
        Response.Write("今天");
        switch (dtToday.DayOfWeek)
        {
            case DayOfWeek.Monday :
                Response.Write("星期一");
                break;
            case DayOfWeek.Tuesday:
                Response.Write("星期二");
                break;
            case DayOfWeek.Wednesday:
                Response.Write("星期三");
                break;
            case DayOfWeek.Thursday:
                Response.Write("星期四");
                break;
            case DayOfWeek.Friday:
                Response.Write("星期五");
                break;
            default:
                Response.Write("休息");
                break;
        }
    }
}