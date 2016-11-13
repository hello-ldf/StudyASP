using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class chap14_14_7 : System.Web.UI.Page
{
    private string fileDir;
    protected void Page_Load(object sender, EventArgs e)
    {
        string rootPath = Request.PhysicalApplicationPath;
        fileDir = Path.Combine(rootPath, "UpLoads");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.FileName.Trim().Length == 0)
        {
            Label1.Text = "无文件上传";
            return;
        }

        if (FileUpload1.PostedFile.ContentLength > 204800)
        {
            Label1.Text = "文件大于200KB，上传失败";
            return;
        }

        string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
        if (extension != ".bmp" && extension != ".gif" && extension != ".jpg")
        {
            Label1.Text = "文件类型不是.bmp .gif .jpg";
            return;
        }

        try
        {
            string filePath = Path.Combine(fileDir, FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(filePath);
            Label1.Text = "文件上传成功";
        }
        catch(Exception exc)
        {
            Label1.Text = "文件上传失败。" + exc.Message;
        }
    }
}