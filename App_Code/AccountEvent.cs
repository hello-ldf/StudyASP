using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///AccountEvent 的摘要说明
/// </summary>
public class AccountEvent
{
    public event EventHandler Overdraw;

    public void OnOverdraw(object sender, EventArgs e)
    {
        if (Overdraw != null)
        {
            Overdraw(this, e);
        }
    }

    public AccountEvent(string id, string name, decimal balance)
    {
        this._ID = id;
        this._Name = name;
        this._Balance = balance;
    }

     private string _ID;
    public string ID
    {
        get { return _ID; }
        set { _ID = value; }
    }

    private string _Name;
    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }

    private decimal _Balance;
    public decimal Balance
    {
        get { return _Balance; }
        set { _Balance = value; }
    }

    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            this._Balance += amount;
        }
        else
        {
            throw new Exception("存款金额不能小于0或等于0！");
        }
    }

    public void Acquire(decimal amount)
    {
        if (amount <= this._Balance)
        {
            this._Balance -= amount;
        }
        else
        {
            OnOverdraw(this, EventArgs.Empty);
            return;
        }
    }
}