using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class chap3_3_7_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connUrl = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\LeeSum\Desktop\StudyASP\App_Data\MyPet.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(connUrl);
        try
        {
            conn.Open();
        }
        catch(Exception ee)
        {
            Response.Write(ee.Message);
        }
        finally
        {
            conn.Close();
        }
    }
}