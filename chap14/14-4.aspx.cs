using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Text;

public partial class chap14_14_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filePath = Path.Combine(Request.PhysicalApplicationPath, @"chap14/test.txt");
        if (File.Exists(filePath))
        {// 打开 读
            Label1.Text = ReadFile(filePath);
        }
        else
        {// 新建 写
            AppendFile("The First Line!");
            Label1.Text = "The First Line!";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        AppendFile(TextBox1.Text);
        Label1.Text += TextBox1.Text;
    }
    private void AppendFile(string str)
    {
        string filePath = Path.Combine(Request.PhysicalApplicationPath, @"chap14/test.txt");
        FileStream fs = File.Open(filePath, FileMode.Append, FileAccess.Write, FileShare.None);
        byte[] dataBuf = new byte[str.Length];
        dataBuf = Encoding.UTF8.GetBytes(str);
        fs.Write(dataBuf, 0, str.Length);
        fs.Flush();
        fs.Close();
    }
    private string ReadFile(string filePath)
    {
        FileStream fs = File.Open(filePath, FileMode.Open, FileAccess.Read, FileShare.Read);
        byte[] data = new byte[fs.Length];
        fs.Read(data, 0, (int)fs.Length);
        fs.Close();
        return Encoding.UTF8.GetString(data);
    }

}