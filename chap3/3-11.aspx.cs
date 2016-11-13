using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap3_3_11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account account = new Account("3113002319", "李代福", 200);
        Response.Write("学号：" + account.ID + "&nbsp姓名：" + account.Name + "<br/>");
        Response.Write("余额：" + account.Balance+"<br/>");
        account.Deposit(100);
        Response.Write("存入100元后<br/>");
        Response.Write("余额：" + account.Balance + "<br/>");
        account.Acquire(150);
        Response.Write("取出150元后<br/>");
        Response.Write("余额：" + account.Balance + "<br/>");
    }
}