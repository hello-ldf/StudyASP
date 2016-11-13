using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class chap14_14_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TreeView1.Nodes.Clear();
        string path = TextBox1.Text;
        if (Directory.Exists(path))
        {
            DirectoryInfo dirInfo = new DirectoryInfo(path);
            TreeNode node = new TreeNode(path);
            TreeView1.Nodes.Add(node);
            Label1.Text = "目录大小：" + DirSize(node, dirInfo).ToString() + " Byte";
        }
        else
        {
            Label1.Text = "该路径不存在";
        }
    }

    private static long DirSize(TreeNode parent, DirectoryInfo dirInfo)
    {
        long size = 0;

        FileInfo[] files = dirInfo.GetFiles();
        foreach (FileInfo file in files)
        {
            TreeNode childNode = new TreeNode();
            childNode.Value = "文件：" + file.Name
                + " 大小：" + file.Length
                + " 日期：" + file.CreationTime;
            parent.ChildNodes.Add(childNode);
            size += file.Length;
        }

        DirectoryInfo[] dirs = dirInfo.GetDirectories();
        foreach (DirectoryInfo dir in dirs)
        {
            TreeNode childNode = new TreeNode();
            childNode.Value = "文件夹：" + dir.Name
                + " 日期：" + dir.CreationTime;
            parent.ChildNodes.Add(childNode);
            size += DirSize(childNode, dir);
        }

        return size;
    }
}