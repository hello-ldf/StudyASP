using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap8_8_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            try
            {
                LinkButton del = (LinkButton)e.Row.Cells[3].Controls[0];
                del.OnClientClick = "return confirm('您真的要删除分类名为"+e.Row.Cells[1].Text+"的记录吗？');";
            }
            catch
            {

            }
        }
    }
}