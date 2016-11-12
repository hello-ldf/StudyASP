using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class chap14_14_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DriveInfo[] drives =  DriveInfo.GetDrives();
            foreach (DriveInfo d in drives)
            {
                if (d.IsReady)
                {
                    TreeNode node = new TreeNode();
                    node.Value = d.Name;
                    TreeView1.Nodes.Add(node);

                    TreeNode childNode = new TreeNode();
                    childNode.Value = "驱动器的卷标：" + d.VolumeLabel;
                    node.ChildNodes.Add(childNode);
                    childNode = new TreeNode();
                    childNode.Value = "驱动的类型：" + d.DriveType;
                    node.ChildNodes.Add(childNode);
                    childNode = new TreeNode();
                    childNode.Value = "文件系统：" + d.DriveFormat;
                    node.ChildNodes.Add(childNode);
                    childNode = new TreeNode();
                    childNode.Value = "可用空闲空间量：" + d.AvailableFreeSpace;
                    node.ChildNodes.Add(childNode);
                    childNode = new TreeNode();
                    childNode.Value = "可用空闲空间总量：" + d.TotalFreeSpace;
                    node.ChildNodes.Add(childNode);
                    childNode = new TreeNode();
                    childNode.Value = "存储空间约总大小：" + d.TotalSize;
                    node.ChildNodes.Add(childNode);
                }
                else
                {
                    TreeNode node = new TreeNode();
                    node.Value = d.Name + "（驱动器没有准备好）";
                    TreeView1.Nodes.Add(node);
                }
            }
        }
    }
}