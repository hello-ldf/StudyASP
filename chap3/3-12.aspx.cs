using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccountEvent account = new AccountEvent("3113002319", "李代福", 200);
        account.Overdraw += new EventHandler(account_Overdraw);
        account.Acquire(300);
    }

    private void account_Overdraw(object sender, EventArgs e)
    {
        Response.Write("余额不足！");
    }
}