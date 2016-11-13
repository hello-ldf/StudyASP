using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write("页面第一次加载！");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("按钮事件响应！");
    }
}