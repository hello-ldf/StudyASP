using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class chap14_14_5 : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        string currentDir = Server.MapPath("");
        string filePath = Path.Combine(currentDir, @"test.txt");
        TextWriter sw = new StreamWriter(filePath);
        sw.Write(TextBox1.Text);
        sw.Flush();
        sw.Close();
        Label1.Text = "写入成功！";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string currentDir = Server.MapPath("");
        string filePath = Path.Combine(currentDir, @"test.txt");
        TextReader sr = new StreamReader(filePath); // 如果文件不存在，报错
        Label1.Text = sr.ReadToEnd();
        sr.Close();
    }
}