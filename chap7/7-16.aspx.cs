using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap7_7_16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        Category category = new Category();
        category.Name = TextBox1.Text;
        category.Descn = TextBox2.Text;
        db.Category.InsertOnSubmit(category);
        db.SubmitChanges();
        GridView1.DataBind();
    }
}