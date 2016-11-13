using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class chap14_14_3 : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sourcePath = TextBox1.Text.Trim();
        string targetPath = TextBox2.Text.Trim();
        if (sourcePath.Length > 0 && targetPath.Length > 0)
        {
            Label1.Text = CopyMoveFile(sourcePath, targetPath, true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sourcePath = TextBox1.Text.Trim();
        string targetPath = TextBox2.Text.Trim();
        if (sourcePath.Length > 0 && targetPath.Length > 0)
        {
            Label1.Text = CopyMoveFile(sourcePath, targetPath, false);
        }
    }

    private string CopyMoveFile(string sourcePath, string targetPath, Boolean flag)
    {
        string msg = "";

        //string pathRoot = Server.MapPath("");
        //sourcePath = Path.Combine(pathRoot, sourcePath);
        //targetPath = Path.Combine(pathRoot, targetPath);

        try
        {
            string dirName = Path.GetDirectoryName(sourcePath);
            if (!Directory.Exists(dirName))
            {
                Directory.CreateDirectory(dirName);
                msg += "1.源文件夹不存在，新建源文件夹。<br/>";
            }

            // string fileName = Path.GetFileName(sourcePath);
            if (!File.Exists(sourcePath))
            {
                using (FileStream fs = File.Create(sourcePath)) { }
                //File.Create(sourcePath);  create之后返回一个fs，不关闭会报占用。
                msg += "2.源文件不存在，新建源文件。<br/>";
            }

            string targetDirName = Path.GetDirectoryName(targetPath);
            if (!Directory.Exists(targetDirName))
            {
                Directory.CreateDirectory(targetDirName);
                msg += "3.目标文件夹不存在，新建目标文件夹。<br/>";
            }

            if (flag)
            {
                if (File.Exists(targetPath))
                {
                    File.Delete(targetPath);
                    msg += "4.目标文件已存在，删除目标文件。<br/>";
                }
                File.Move(sourcePath, targetPath);
                msg += "5-2.移动文件。<br/>";
            }
            else
            {
                if (File.Exists(targetPath))
                {
                    File.Delete(targetPath);
                    msg += "4.目标文件已存在，删除目标文件。<br/>";
                }
                File.Copy(sourcePath, targetPath);
                msg += "5-1.复制文件。<br/>";
            }

            if (File.Exists(sourcePath))
            {
                msg += "6-1.源文件存在，复制完成。<br/>";
            }
            else
            {
                msg += "6-2.源文件不存在，移动完成。<br/>";
            }
        }
        catch (Exception e)
        {
            msg += "7.异常。" + e.Message;
        }

        return msg;
    }
}