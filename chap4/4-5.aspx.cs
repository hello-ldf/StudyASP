using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindYear();
            BindMonth();
            BindDay();
        }
    }

    protected void BindYear()
    {
        DropDownList1.Items.Clear();
        int currentYear = DateTime.Now.Year;
        int startYear = currentYear - 10;
        for (int i = startYear; i <= currentYear; i++)
        {
            DropDownList1.Items.Add(new ListItem(i.ToString()));
        }
        DropDownList1.SelectedValue = currentYear.ToString();
    }
    protected void BindMonth()
    {
        DropDownList2.Items.Clear();
        for (int i = 1; i <= 12; i++)
        {
            DropDownList2.Items.Add(new ListItem(i.ToString()));
        }
        DropDownList2.SelectedValue = "1";
    }
    protected void BindDay()
    {
        DropDownList3.Items.Clear();
        string year = DropDownList1.SelectedValue;
        string month = DropDownList2.SelectedValue;
        int day = DateTime.DaysInMonth(int.Parse(year), int.Parse(month));
        for (int i = 1; i <= day; i++)
        {
            DropDownList3.Items.Add(new ListItem(i.ToString()));
        }
    }

    protected void SelectChanged(object sender, EventArgs e)
    {
        BindDay();
    }
}