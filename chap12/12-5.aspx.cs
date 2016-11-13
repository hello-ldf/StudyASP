using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap12_12_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "6.80";
            Label2.Text = DateTime.Now.ToString();
            Label3.Text = DateTime.Now.ToString();
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "0")
        {
            Timer1.Enabled = true;
            Timer1.Interval = 100;
        }
        if (RadioButtonList1.SelectedValue == "5")
        {
            Timer1.Enabled = true;
            Timer1.Interval = 5000;
        }
        if (RadioButtonList1.SelectedValue == "60")
        {
            Timer1.Enabled = true;
            Timer1.Interval = 60000;
        }
        if (RadioButtonList1.SelectedValue == "-1")
        {
            Timer1.Enabled = false;
        }
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = GetStockPrice();
        Label2.Text = DateTime.Now.ToString();
    }

    private string GetStockPrice()
    {
        double randomStockPrice = 6.7 + new Random().NextDouble();
        return randomStockPrice.ToString("C");
    }
}