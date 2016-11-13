using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class chap9_9_6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetAllUsers();
        }
    }

    private void GetAllUsers()
    {
        MembershipUserCollection users = Membership.GetAllUsers();
        GridView1.DataSource = users;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gvRow = GridView1.Rows[e.RowIndex];
        string userName = gvRow.Cells[0].Text;
        Membership.DeleteUser(userName);
        GetAllUsers();
    }
}