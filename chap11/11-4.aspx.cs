using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap11_11_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length == 0)
        {
            return;
        }
        TreeNode childNode = new TreeNode();
        childNode.Value = TextBox1.Text.Trim();
        if (TreeView1.SelectedNode != null)
        {
            TreeView1.SelectedNode.ChildNodes.Add(childNode);
        }
        else
        {
            TreeView1.Nodes.Add(childNode);
        }
        TextBox1.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TreeView1.SelectedNode != null)
        {
            TreeView1.SelectedNode.Parent.ChildNodes.Remove(TreeView1.SelectedNode);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TreeView1.ExpandAll();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TreeView1.CollapseAll();
    }
}