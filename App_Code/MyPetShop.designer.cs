﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="MyPetShop")]
public partial class MyPetShopDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void InsertCategory(Category instance);
  partial void UpdateCategory(Category instance);
  partial void DeleteCategory(Category instance);
  partial void InsertOrder(Order instance);
  partial void UpdateOrder(Order instance);
  partial void DeleteOrder(Order instance);
  partial void InsertOrderItem(OrderItem instance);
  partial void UpdateOrderItem(OrderItem instance);
  partial void DeleteOrderItem(OrderItem instance);
  partial void InsertProduct(Product instance);
  partial void UpdateProduct(Product instance);
  partial void DeleteProduct(Product instance);
  partial void InsertSupplier(Supplier instance);
  partial void UpdateSupplier(Supplier instance);
  partial void DeleteSupplier(Supplier instance);
  #endregion
	
	public MyPetShopDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["MyPetShopConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Category> Category
	{
		get
		{
			return this.GetTable<Category>();
		}
	}
	
	public System.Data.Linq.Table<Order> Order
	{
		get
		{
			return this.GetTable<Order>();
		}
	}
	
	public System.Data.Linq.Table<OrderItem> OrderItem
	{
		get
		{
			return this.GetTable<OrderItem>();
		}
	}
	
	public System.Data.Linq.Table<Product> Product
	{
		get
		{
			return this.GetTable<Product>();
		}
	}
	
	public System.Data.Linq.Table<Supplier> Supplier
	{
		get
		{
			return this.GetTable<Supplier>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Category")]
public partial class Category : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _CategoryId;
	
	private string _Name;
	
	private string _Descn;
	
	private EntitySet<Product> _Product;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnCategoryIdChanging(int value);
    partial void OnCategoryIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnDescnChanging(string value);
    partial void OnDescnChanged();
    #endregion
	
	public Category()
	{
		this._Product = new EntitySet<Product>(new Action<Product>(this.attach_Product), new Action<Product>(this.detach_Product));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int CategoryId
	{
		get
		{
			return this._CategoryId;
		}
		set
		{
			if ((this._CategoryId != value))
			{
				this.OnCategoryIdChanging(value);
				this.SendPropertyChanging();
				this._CategoryId = value;
				this.SendPropertyChanged("CategoryId");
				this.OnCategoryIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(80)")]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Descn", DbType="VarChar(255)")]
	public string Descn
	{
		get
		{
			return this._Descn;
		}
		set
		{
			if ((this._Descn != value))
			{
				this.OnDescnChanging(value);
				this.SendPropertyChanging();
				this._Descn = value;
				this.SendPropertyChanged("Descn");
				this.OnDescnChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Category_Product", Storage="_Product", ThisKey="CategoryId", OtherKey="CategoryId")]
	public EntitySet<Product> Product
	{
		get
		{
			return this._Product;
		}
		set
		{
			this._Product.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_Product(Product entity)
	{
		this.SendPropertyChanging();
		entity.Category = this;
	}
	
	private void detach_Product(Product entity)
	{
		this.SendPropertyChanging();
		entity.Category = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[Order]")]
public partial class Order : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _OrderId;
	
	private string _UserName;
	
	private System.Nullable<System.DateTime> _OrderDate;
	
	private string _Addr1;
	
	private string _Addr2;
	
	private string _City;
	
	private string _State;
	
	private string _Zip;
	
	private string _Phone;
	
	private string _Status;
	
	private EntitySet<OrderItem> _OrderItem;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnOrderIdChanging(int value);
    partial void OnOrderIdChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnOrderDateChanging(System.Nullable<System.DateTime> value);
    partial void OnOrderDateChanged();
    partial void OnAddr1Changing(string value);
    partial void OnAddr1Changed();
    partial void OnAddr2Changing(string value);
    partial void OnAddr2Changed();
    partial void OnCityChanging(string value);
    partial void OnCityChanged();
    partial void OnStateChanging(string value);
    partial void OnStateChanged();
    partial void OnZipChanging(string value);
    partial void OnZipChanged();
    partial void OnPhoneChanging(string value);
    partial void OnPhoneChanged();
    partial void OnStatusChanging(string value);
    partial void OnStatusChanged();
    #endregion
	
	public Order()
	{
		this._OrderItem = new EntitySet<OrderItem>(new Action<OrderItem>(this.attach_OrderItem), new Action<OrderItem>(this.detach_OrderItem));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrderId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int OrderId
	{
		get
		{
			return this._OrderId;
		}
		set
		{
			if ((this._OrderId != value))
			{
				this.OnOrderIdChanging(value);
				this.SendPropertyChanging();
				this._OrderId = value;
				this.SendPropertyChanged("OrderId");
				this.OnOrderIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="VarChar(80) NOT NULL", CanBeNull=false)]
	public string UserName
	{
		get
		{
			return this._UserName;
		}
		set
		{
			if ((this._UserName != value))
			{
				this.OnUserNameChanging(value);
				this.SendPropertyChanging();
				this._UserName = value;
				this.SendPropertyChanged("UserName");
				this.OnUserNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrderDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> OrderDate
	{
		get
		{
			return this._OrderDate;
		}
		set
		{
			if ((this._OrderDate != value))
			{
				this.OnOrderDateChanging(value);
				this.SendPropertyChanging();
				this._OrderDate = value;
				this.SendPropertyChanged("OrderDate");
				this.OnOrderDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Addr1", DbType="VarChar(80)")]
	public string Addr1
	{
		get
		{
			return this._Addr1;
		}
		set
		{
			if ((this._Addr1 != value))
			{
				this.OnAddr1Changing(value);
				this.SendPropertyChanging();
				this._Addr1 = value;
				this.SendPropertyChanged("Addr1");
				this.OnAddr1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Addr2", DbType="VarChar(80)")]
	public string Addr2
	{
		get
		{
			return this._Addr2;
		}
		set
		{
			if ((this._Addr2 != value))
			{
				this.OnAddr2Changing(value);
				this.SendPropertyChanging();
				this._Addr2 = value;
				this.SendPropertyChanged("Addr2");
				this.OnAddr2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(80)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this.OnCityChanging(value);
				this.SendPropertyChanging();
				this._City = value;
				this.SendPropertyChanged("City");
				this.OnCityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_State", DbType="VarChar(80)")]
	public string State
	{
		get
		{
			return this._State;
		}
		set
		{
			if ((this._State != value))
			{
				this.OnStateChanging(value);
				this.SendPropertyChanging();
				this._State = value;
				this.SendPropertyChanged("State");
				this.OnStateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Zip", DbType="VarChar(5)")]
	public string Zip
	{
		get
		{
			return this._Zip;
		}
		set
		{
			if ((this._Zip != value))
			{
				this.OnZipChanging(value);
				this.SendPropertyChanging();
				this._Zip = value;
				this.SendPropertyChanged("Zip");
				this.OnZipChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Phone", DbType="VarChar(40)")]
	public string Phone
	{
		get
		{
			return this._Phone;
		}
		set
		{
			if ((this._Phone != value))
			{
				this.OnPhoneChanging(value);
				this.SendPropertyChanging();
				this._Phone = value;
				this.SendPropertyChanged("Phone");
				this.OnPhoneChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Status", DbType="VarChar(10)")]
	public string Status
	{
		get
		{
			return this._Status;
		}
		set
		{
			if ((this._Status != value))
			{
				this.OnStatusChanging(value);
				this.SendPropertyChanging();
				this._Status = value;
				this.SendPropertyChanged("Status");
				this.OnStatusChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Order_OrderItem", Storage="_OrderItem", ThisKey="OrderId", OtherKey="OrderId")]
	public EntitySet<OrderItem> OrderItem
	{
		get
		{
			return this._OrderItem;
		}
		set
		{
			this._OrderItem.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_OrderItem(OrderItem entity)
	{
		this.SendPropertyChanging();
		entity.Order = this;
	}
	
	private void detach_OrderItem(OrderItem entity)
	{
		this.SendPropertyChanging();
		entity.Order = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.OrderItem")]
public partial class OrderItem : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ItemId;
	
	private int _OrderId;
	
	private string _ProName;
	
	private System.Nullable<decimal> _ListPrice;
	
	private int _Qty;
	
	private System.Nullable<decimal> _TotalPrice;
	
	private EntityRef<Order> _Order;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnItemIdChanging(int value);
    partial void OnItemIdChanged();
    partial void OnOrderIdChanging(int value);
    partial void OnOrderIdChanged();
    partial void OnProNameChanging(string value);
    partial void OnProNameChanged();
    partial void OnListPriceChanging(System.Nullable<decimal> value);
    partial void OnListPriceChanged();
    partial void OnQtyChanging(int value);
    partial void OnQtyChanged();
    partial void OnTotalPriceChanging(System.Nullable<decimal> value);
    partial void OnTotalPriceChanged();
    #endregion
	
	public OrderItem()
	{
		this._Order = default(EntityRef<Order>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ItemId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ItemId
	{
		get
		{
			return this._ItemId;
		}
		set
		{
			if ((this._ItemId != value))
			{
				this.OnItemIdChanging(value);
				this.SendPropertyChanging();
				this._ItemId = value;
				this.SendPropertyChanged("ItemId");
				this.OnItemIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrderId", DbType="Int NOT NULL")]
	public int OrderId
	{
		get
		{
			return this._OrderId;
		}
		set
		{
			if ((this._OrderId != value))
			{
				if (this._Order.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnOrderIdChanging(value);
				this.SendPropertyChanging();
				this._OrderId = value;
				this.SendPropertyChanged("OrderId");
				this.OnOrderIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProName", DbType="VarChar(80)")]
	public string ProName
	{
		get
		{
			return this._ProName;
		}
		set
		{
			if ((this._ProName != value))
			{
				this.OnProNameChanging(value);
				this.SendPropertyChanging();
				this._ProName = value;
				this.SendPropertyChanged("ProName");
				this.OnProNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ListPrice", DbType="Decimal(10,2)")]
	public System.Nullable<decimal> ListPrice
	{
		get
		{
			return this._ListPrice;
		}
		set
		{
			if ((this._ListPrice != value))
			{
				this.OnListPriceChanging(value);
				this.SendPropertyChanging();
				this._ListPrice = value;
				this.SendPropertyChanged("ListPrice");
				this.OnListPriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Qty", DbType="Int NOT NULL")]
	public int Qty
	{
		get
		{
			return this._Qty;
		}
		set
		{
			if ((this._Qty != value))
			{
				this.OnQtyChanging(value);
				this.SendPropertyChanging();
				this._Qty = value;
				this.SendPropertyChanged("Qty");
				this.OnQtyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TotalPrice", DbType="Decimal(10,2)")]
	public System.Nullable<decimal> TotalPrice
	{
		get
		{
			return this._TotalPrice;
		}
		set
		{
			if ((this._TotalPrice != value))
			{
				this.OnTotalPriceChanging(value);
				this.SendPropertyChanging();
				this._TotalPrice = value;
				this.SendPropertyChanged("TotalPrice");
				this.OnTotalPriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Order_OrderItem", Storage="_Order", ThisKey="OrderId", OtherKey="OrderId", IsForeignKey=true)]
	public Order Order
	{
		get
		{
			return this._Order.Entity;
		}
		set
		{
			Order previousValue = this._Order.Entity;
			if (((previousValue != value) 
						|| (this._Order.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Order.Entity = null;
					previousValue.OrderItem.Remove(this);
				}
				this._Order.Entity = value;
				if ((value != null))
				{
					value.OrderItem.Add(this);
					this._OrderId = value.OrderId;
				}
				else
				{
					this._OrderId = default(int);
				}
				this.SendPropertyChanged("Order");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Product")]
public partial class Product : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ProductId;
	
	private int _CategoryId;
	
	private System.Nullable<decimal> _ListPrice;
	
	private System.Nullable<decimal> _UnitCost;
	
	private int _SuppId;
	
	private string _Name;
	
	private string _Descn;
	
	private string _Image;
	
	private int _Qty;
	
	private EntityRef<Category> _Category;
	
	private EntityRef<Supplier> _Supplier;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnProductIdChanging(int value);
    partial void OnProductIdChanged();
    partial void OnCategoryIdChanging(int value);
    partial void OnCategoryIdChanged();
    partial void OnListPriceChanging(System.Nullable<decimal> value);
    partial void OnListPriceChanged();
    partial void OnUnitCostChanging(System.Nullable<decimal> value);
    partial void OnUnitCostChanged();
    partial void OnSuppIdChanging(int value);
    partial void OnSuppIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnDescnChanging(string value);
    partial void OnDescnChanged();
    partial void OnImageChanging(string value);
    partial void OnImageChanged();
    partial void OnQtyChanging(int value);
    partial void OnQtyChanged();
    #endregion
	
	public Product()
	{
		this._Category = default(EntityRef<Category>);
		this._Supplier = default(EntityRef<Supplier>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ProductId
	{
		get
		{
			return this._ProductId;
		}
		set
		{
			if ((this._ProductId != value))
			{
				this.OnProductIdChanging(value);
				this.SendPropertyChanging();
				this._ProductId = value;
				this.SendPropertyChanged("ProductId");
				this.OnProductIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryId", DbType="Int NOT NULL")]
	public int CategoryId
	{
		get
		{
			return this._CategoryId;
		}
		set
		{
			if ((this._CategoryId != value))
			{
				if (this._Category.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnCategoryIdChanging(value);
				this.SendPropertyChanging();
				this._CategoryId = value;
				this.SendPropertyChanged("CategoryId");
				this.OnCategoryIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ListPrice", DbType="Decimal(10,2)")]
	public System.Nullable<decimal> ListPrice
	{
		get
		{
			return this._ListPrice;
		}
		set
		{
			if ((this._ListPrice != value))
			{
				this.OnListPriceChanging(value);
				this.SendPropertyChanging();
				this._ListPrice = value;
				this.SendPropertyChanged("ListPrice");
				this.OnListPriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UnitCost", DbType="Decimal(10,2)")]
	public System.Nullable<decimal> UnitCost
	{
		get
		{
			return this._UnitCost;
		}
		set
		{
			if ((this._UnitCost != value))
			{
				this.OnUnitCostChanging(value);
				this.SendPropertyChanging();
				this._UnitCost = value;
				this.SendPropertyChanged("UnitCost");
				this.OnUnitCostChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SuppId", DbType="Int NOT NULL")]
	public int SuppId
	{
		get
		{
			return this._SuppId;
		}
		set
		{
			if ((this._SuppId != value))
			{
				if (this._Supplier.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnSuppIdChanging(value);
				this.SendPropertyChanging();
				this._SuppId = value;
				this.SendPropertyChanged("SuppId");
				this.OnSuppIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(80)")]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Descn", DbType="VarChar(255)")]
	public string Descn
	{
		get
		{
			return this._Descn;
		}
		set
		{
			if ((this._Descn != value))
			{
				this.OnDescnChanging(value);
				this.SendPropertyChanging();
				this._Descn = value;
				this.SendPropertyChanged("Descn");
				this.OnDescnChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Image", DbType="VarChar(80)")]
	public string Image
	{
		get
		{
			return this._Image;
		}
		set
		{
			if ((this._Image != value))
			{
				this.OnImageChanging(value);
				this.SendPropertyChanging();
				this._Image = value;
				this.SendPropertyChanged("Image");
				this.OnImageChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Qty", DbType="Int NOT NULL")]
	public int Qty
	{
		get
		{
			return this._Qty;
		}
		set
		{
			if ((this._Qty != value))
			{
				this.OnQtyChanging(value);
				this.SendPropertyChanging();
				this._Qty = value;
				this.SendPropertyChanged("Qty");
				this.OnQtyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Category_Product", Storage="_Category", ThisKey="CategoryId", OtherKey="CategoryId", IsForeignKey=true)]
	public Category Category
	{
		get
		{
			return this._Category.Entity;
		}
		set
		{
			Category previousValue = this._Category.Entity;
			if (((previousValue != value) 
						|| (this._Category.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Category.Entity = null;
					previousValue.Product.Remove(this);
				}
				this._Category.Entity = value;
				if ((value != null))
				{
					value.Product.Add(this);
					this._CategoryId = value.CategoryId;
				}
				else
				{
					this._CategoryId = default(int);
				}
				this.SendPropertyChanged("Category");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Supplier_Product", Storage="_Supplier", ThisKey="SuppId", OtherKey="SuppId", IsForeignKey=true)]
	public Supplier Supplier
	{
		get
		{
			return this._Supplier.Entity;
		}
		set
		{
			Supplier previousValue = this._Supplier.Entity;
			if (((previousValue != value) 
						|| (this._Supplier.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Supplier.Entity = null;
					previousValue.Product.Remove(this);
				}
				this._Supplier.Entity = value;
				if ((value != null))
				{
					value.Product.Add(this);
					this._SuppId = value.SuppId;
				}
				else
				{
					this._SuppId = default(int);
				}
				this.SendPropertyChanged("Supplier");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Supplier")]
public partial class Supplier : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _SuppId;
	
	private string _Name;
	
	private string _Addr1;
	
	private string _Addr2;
	
	private string _City;
	
	private string _State;
	
	private string _Zip;
	
	private string _Phone;
	
	private EntitySet<Product> _Product;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSuppIdChanging(int value);
    partial void OnSuppIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnAddr1Changing(string value);
    partial void OnAddr1Changed();
    partial void OnAddr2Changing(string value);
    partial void OnAddr2Changed();
    partial void OnCityChanging(string value);
    partial void OnCityChanged();
    partial void OnStateChanging(string value);
    partial void OnStateChanged();
    partial void OnZipChanging(string value);
    partial void OnZipChanged();
    partial void OnPhoneChanging(string value);
    partial void OnPhoneChanged();
    #endregion
	
	public Supplier()
	{
		this._Product = new EntitySet<Product>(new Action<Product>(this.attach_Product), new Action<Product>(this.detach_Product));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SuppId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int SuppId
	{
		get
		{
			return this._SuppId;
		}
		set
		{
			if ((this._SuppId != value))
			{
				this.OnSuppIdChanging(value);
				this.SendPropertyChanging();
				this._SuppId = value;
				this.SendPropertyChanged("SuppId");
				this.OnSuppIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(80)")]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Addr1", DbType="VarChar(80)")]
	public string Addr1
	{
		get
		{
			return this._Addr1;
		}
		set
		{
			if ((this._Addr1 != value))
			{
				this.OnAddr1Changing(value);
				this.SendPropertyChanging();
				this._Addr1 = value;
				this.SendPropertyChanged("Addr1");
				this.OnAddr1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Addr2", DbType="VarChar(80)")]
	public string Addr2
	{
		get
		{
			return this._Addr2;
		}
		set
		{
			if ((this._Addr2 != value))
			{
				this.OnAddr2Changing(value);
				this.SendPropertyChanging();
				this._Addr2 = value;
				this.SendPropertyChanged("Addr2");
				this.OnAddr2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(80)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this.OnCityChanging(value);
				this.SendPropertyChanging();
				this._City = value;
				this.SendPropertyChanged("City");
				this.OnCityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_State", DbType="VarChar(80)")]
	public string State
	{
		get
		{
			return this._State;
		}
		set
		{
			if ((this._State != value))
			{
				this.OnStateChanging(value);
				this.SendPropertyChanging();
				this._State = value;
				this.SendPropertyChanged("State");
				this.OnStateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Zip", DbType="VarChar(5)")]
	public string Zip
	{
		get
		{
			return this._Zip;
		}
		set
		{
			if ((this._Zip != value))
			{
				this.OnZipChanging(value);
				this.SendPropertyChanging();
				this._Zip = value;
				this.SendPropertyChanged("Zip");
				this.OnZipChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Phone", DbType="VarChar(40)")]
	public string Phone
	{
		get
		{
			return this._Phone;
		}
		set
		{
			if ((this._Phone != value))
			{
				this.OnPhoneChanging(value);
				this.SendPropertyChanging();
				this._Phone = value;
				this.SendPropertyChanged("Phone");
				this.OnPhoneChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Supplier_Product", Storage="_Product", ThisKey="SuppId", OtherKey="SuppId")]
	public EntitySet<Product> Product
	{
		get
		{
			return this._Product;
		}
		set
		{
			this._Product.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_Product(Product entity)
	{
		this.SendPropertyChanging();
		entity.Supplier = this;
	}
	
	private void detach_Product(Product entity)
	{
		this.SendPropertyChanging();
		entity.Supplier = null;
	}
}
#pragma warning restore 1591
