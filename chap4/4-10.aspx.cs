using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap4_4_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Account> accounts = new List<Account>();
        Account account1 = new Account("4312", "李代福", 100);
        Account account2 = new Account("4313", "黎志恒", 200);
        accounts.Add(account1);
        accounts.Add(account2);

        foreach (Account account in accounts) {
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();

            cell1.Text = account.ID;
            cell2.Text = account.Name;
            cell3.Text = account.Balance.ToString();
            TextBox inputText = new TextBox();
            cell4.Controls.Add(inputText);

            row.Cells.Add(cell1);
            row.Cells.Add(cell2);
            row.Cells.Add(cell3);
            row.Cells.Add(cell4);

            Table1.Rows.Add(row);
        }
    }
}