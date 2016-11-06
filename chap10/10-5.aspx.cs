using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class chap10_10_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int i = 1;
            foreach (WebPart part in WebPartManager1.WebParts)
            {
                if(part is GenericWebPart)
                {
                    part.Title = string.Format("WebPart 控件 NO. {0}", i);
                    i++;
                }
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        WebPartManager1.DisplayMode = WebPartManager1.DisplayModes[DropDownList1.SelectedValue];
    }
}