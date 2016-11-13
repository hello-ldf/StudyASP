using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap8_8_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "您选择的ProductId为：";
        foreach(GridViewRow gvRow in GridView1.Rows)
        {
            CheckBox checkItem = (CheckBox)gvRow.FindControl("CheckItem");
            if (checkItem.Checked)
            {
                Label1.Text += gvRow.Cells[1].Text + "、";
            }
        }
    }
    protected void CheckAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox checkAll = (CheckBox)sender;
        CheckBox checkItem;
        foreach (GridViewRow gvRow in GridView1.Rows)
        {
            checkItem = (CheckBox)gvRow.FindControl("CheckItem");
            if (checkAll.Checked)
                checkItem.Checked = true;
            else
                checkItem.Checked = false;
        }
    }
}