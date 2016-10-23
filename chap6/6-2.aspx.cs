using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap6_6_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "服务器IP地址：" + Request.ServerVariables["Local_ADDR"];
        Label1.Text += "<br/>客户端IP地址：" + Request.ServerVariables["Remote_addr"];
        Label1.Text += "<br/>浏览器类型：" + Request.Browser["Browser"];
        Label1.Text += "<br/>浏览器版本：" + Request.Browser["Version"];
        Label1.Text += "<br/>是否支持Cookies：" + Request.Browser["Cookies"];
    }
}