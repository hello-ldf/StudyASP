using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Linq.SqlClient;

public partial class chap7_LinqDemo : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          r.Name
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      where r.UnitCost > 10
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      orderby r.UnitCost descending
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      group r by r.CategoryId;
        foreach(var g in results) 
        {
            if (g.Key == 2)
            {
                var results2 = from r in g
                               select r;
                GridView1.DataSource = results2;
                GridView1.DataBind();
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      group r by r.CategoryId into g
                      select new
                      {
                          Key = g.Key,
                          Count = g.Count(),
                          MaxPrice = g.Max(p => p.ListPrice),
                          MinPrice = g.Min(p => p.ListPrice),
                          AvgPrice = g.Average(p => p.ListPrice)
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          r.Category.Name
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Write("不建议使用");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        var results = from r in db.Category
                      where SqlMethods.Like(r.CategoryId.ToString(), "%2%")
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
}