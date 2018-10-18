﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:2.0.50727.8793
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace OSPS.AppFramework.DBModule
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[System.Data.Linq.Mapping.DatabaseAttribute(Name="ZHOSPS")]
	public partial class T_OrderStateDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertT_OrderStatus(T_OrderStatus instance);
    partial void UpdateT_OrderStatus(T_OrderStatus instance);
    partial void DeleteT_OrderStatus(T_OrderStatus instance);
    #endregion
		
		public T_OrderStateDataContext() : 
				base(global::OSPS.AppFramework.DBModule.Properties.Settings.Default.ZHOSPSConnectionString1, mappingSource)
		{
			OnCreated();
		}
		
		public T_OrderStateDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public T_OrderStateDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public T_OrderStateDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public T_OrderStateDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<T_OrderStatus> T_OrderStatus
		{
			get
			{
				return this.GetTable<T_OrderStatus>();
			}
		}
	}
	
	[Table(Name="dbo.T_OrderStatus")]
	public partial class T_OrderStatus : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _F_ID;
		
		private string _F_Name;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnF_IDChanging(int value);
    partial void OnF_IDChanged();
    partial void OnF_NameChanging(string value);
    partial void OnF_NameChanged();
    #endregion
		
		public T_OrderStatus()
		{
			OnCreated();
		}
		
		[Column(Storage="_F_ID", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int F_ID
		{
			get
			{
				return this._F_ID;
			}
			set
			{
				if ((this._F_ID != value))
				{
					this.OnF_IDChanging(value);
					this.SendPropertyChanging();
					this._F_ID = value;
					this.SendPropertyChanged("F_ID");
					this.OnF_IDChanged();
				}
			}
		}
		
		[Column(Storage="_F_Name", DbType="VarChar(20)")]
		public string F_Name
		{
			get
			{
				return this._F_Name;
			}
			set
			{
				if ((this._F_Name != value))
				{
					this.OnF_NameChanging(value);
					this.SendPropertyChanging();
					this._F_Name = value;
					this.SendPropertyChanged("F_Name");
					this.OnF_NameChanged();
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
}
#pragma warning restore 1591