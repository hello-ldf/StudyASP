using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class chap9_9_7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] roles = Roles.GetAllRoles();
            ListBox1.DataSource = roles;
            ListBox1.DataBind();
            MembershipUserCollection users = Membership.GetAllUsers();
            ListBox2.DataSource = users;
            ListBox2.DataBind();
        }
        if (ListBox1.SelectedItem != null)
        {
            GetUserInRoles();
        }
    }

    private void GetUserInRoles()
    {
        string[] users = Roles.GetUsersInRole(ListBox1.SelectedValue);
        GridView1.DataSource = users;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedItem == null)
        {
            Label3.Text = "请选择角色";
            return;
        }
        if (ListBox2.SelectedItem == null)
        {
            Label3.Text = "请选择用户";
            return;
        }

        string[] users = new string[ListBox2.GetSelectedIndices().Length];
        for (int i = 0; i < users.Length; i++)
        {
            users[i] = ListBox2.Items[ListBox2.GetSelectedIndices()[i]].Value;
        }
        try
        {
            Roles.AddUsersToRole(users, ListBox1.SelectedValue);
            GetUserInRoles();
        }
        catch(Exception ee)
        {
            Label3.Text = ee.Message;
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gvRow = GridView1.Rows[e.RowIndex];
        Label userName = (Label)gvRow.Cells[0].FindControl("Label1");
        try
        {
            Roles.RemoveUserFromRole(userName.Text, ListBox1.SelectedValue);
        }
        catch (Exception ee)
        {
            Label3.Text = ee.Message;
        }
        GetUserInRoles();
    }
}