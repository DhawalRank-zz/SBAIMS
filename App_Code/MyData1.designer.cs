﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SBAIMS.App_Code
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SBAIMS")]
	public partial class MyDataDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    #endregion
		
		public MyDataDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SBAIMSConnectionString2"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public MyDataDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyDataDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyDataDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyDataDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_BOOKDETAILS")]
		public ISingleResult<USP_BOOKDETAILSResult> USP_BOOKDETAILS()
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
			return ((ISingleResult<USP_BOOKDETAILSResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETINVOICENO")]
		public ISingleResult<USP_GETINVOICENOResult> USP_GETINVOICENO()
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
			return ((ISingleResult<USP_GETINVOICENOResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETCUSTOMER")]
		public ISingleResult<USP_GETCUSTOMERResult> USP_GETCUSTOMER()
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
			return ((ISingleResult<USP_GETCUSTOMERResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETBOOK")]
		public ISingleResult<USP_GETBOOKResult> USP_GETBOOK([global::System.Data.Linq.Mapping.ParameterAttribute(Name="B_Id", DbType="VarChar(MAX)")] string b_Id)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), b_Id);
			return ((ISingleResult<USP_GETBOOKResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_ADDINVOICEBOOK")]
		public int USP_ADDINVOICEBOOK([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T002_INVOICEBOOKID", DbType="Int")] System.Nullable<int> t002_INVOICEBOOKID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_INVOICEOD", DbType="Int")] System.Nullable<int> t001_INVOICEOD, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="B_Id", DbType="Int")] System.Nullable<int> b_Id, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T002_QTY", DbType="Int")] System.Nullable<int> t002_QTY, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T002_TOTALRS", DbType="Decimal(18,2)")] System.Nullable<decimal> t002_TOTALRS)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t002_INVOICEBOOKID, t001_INVOICEOD, b_Id, t002_QTY, t002_TOTALRS);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_DELETEINVOICEBOOK")]
		public int USP_DELETEINVOICEBOOK([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T002_INVOICEBOOKID", DbType="Int")] System.Nullable<int> t002_INVOICEBOOKID)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t002_INVOICEBOOKID);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETINVOICEBOOK")]
		public ISingleResult<USP_GETINVOICEBOOKResult> USP_GETINVOICEBOOK([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_INVOICEOD", DbType="VarChar(MAX)")] string t001_INVOICEOD)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t001_INVOICEOD);
			return ((ISingleResult<USP_GETINVOICEBOOKResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_ADDINVOICE")]
		public int USP_ADDINVOICE([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_INVOICEOD", DbType="Int")] System.Nullable<int> t001_INVOICEOD, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="C_Id", DbType="Int")] System.Nullable<int> c_Id, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_DATE", DbType="Date")] System.Nullable<System.DateTime> t001_DATE, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_TOTALRS", DbType="Decimal(18,2)")] System.Nullable<decimal> t001_TOTALRS, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_DISCOUNT", DbType="Decimal(18,2)")] System.Nullable<decimal> t001_DISCOUNT, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_TAX", DbType="Decimal(18,2)")] System.Nullable<decimal> t001_TAX, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_NETRS", DbType="Decimal(18,2)")] System.Nullable<decimal> t001_NETRS, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_NOTE", DbType="VarChar(150)")] string t001_NOTE)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t001_INVOICEOD, c_Id, t001_DATE, t001_TOTALRS, t001_DISCOUNT, t001_TAX, t001_NETRS, t001_NOTE);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETINVOICEDETAILS")]
		public ISingleResult<USP_GETINVOICEDETAILSResult> USP_GETINVOICEDETAILS([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_INVOICEOD", DbType="VarChar(MAX)")] string t001_INVOICEOD, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="C_Id", DbType="VarChar(MAX)")] string c_Id, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_DATE", DbType="Date")] System.Nullable<System.DateTime> t001_DATE)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t001_INVOICEOD, c_Id, t001_DATE);
			return ((ISingleResult<USP_GETINVOICEDETAILSResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.USP_GETINVOICE")]
		public ISingleResult<USP_GETINVOICEResult> USP_GETINVOICE([global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_INVOICEOD", DbType="VarChar(MAX)")] string t001_INVOICEOD, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="C_Id", DbType="VarChar(MAX)")] string c_Id, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="T001_DATE", DbType="Date")] System.Nullable<System.DateTime> t001_DATE, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="C_City", DbType="VarChar(MAX)")] string c_City)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), t001_INVOICEOD, c_Id, t001_DATE, c_City);
			return ((ISingleResult<USP_GETINVOICEResult>)(result.ReturnValue));
		}
	}
	
	public partial class USP_BOOKDETAILSResult
	{
		
		private int _B_Id;
		
		private string _B_Title;
		
		private string _B_Author;
		
		private string _B_Quantity;
		
		private int _B_Price;
		
		private int _B_Commission;
		
		private string _B_Shelf;
		
		private string _B_Genre;
		
		private string _B_Binding;
		
		private System.Nullable<int> _B_Pages;
		
		private string _Imported;
		
		private int _P_Id;
		
		public USP_BOOKDETAILSResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Id", DbType="Int NOT NULL")]
		public int B_Id
		{
			get
			{
				return this._B_Id;
			}
			set
			{
				if ((this._B_Id != value))
				{
					this._B_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Title", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Title
		{
			get
			{
				return this._B_Title;
			}
			set
			{
				if ((this._B_Title != value))
				{
					this._B_Title = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Author", DbType="NVarChar(MAX)")]
		public string B_Author
		{
			get
			{
				return this._B_Author;
			}
			set
			{
				if ((this._B_Author != value))
				{
					this._B_Author = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Quantity", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Quantity
		{
			get
			{
				return this._B_Quantity;
			}
			set
			{
				if ((this._B_Quantity != value))
				{
					this._B_Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Price", DbType="Int NOT NULL")]
		public int B_Price
		{
			get
			{
				return this._B_Price;
			}
			set
			{
				if ((this._B_Price != value))
				{
					this._B_Price = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Commission", DbType="Int NOT NULL")]
		public int B_Commission
		{
			get
			{
				return this._B_Commission;
			}
			set
			{
				if ((this._B_Commission != value))
				{
					this._B_Commission = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Shelf", DbType="NVarChar(MAX)")]
		public string B_Shelf
		{
			get
			{
				return this._B_Shelf;
			}
			set
			{
				if ((this._B_Shelf != value))
				{
					this._B_Shelf = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Genre", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Genre
		{
			get
			{
				return this._B_Genre;
			}
			set
			{
				if ((this._B_Genre != value))
				{
					this._B_Genre = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Binding", DbType="NVarChar(MAX)")]
		public string B_Binding
		{
			get
			{
				return this._B_Binding;
			}
			set
			{
				if ((this._B_Binding != value))
				{
					this._B_Binding = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Pages", DbType="Int")]
		public System.Nullable<int> B_Pages
		{
			get
			{
				return this._B_Pages;
			}
			set
			{
				if ((this._B_Pages != value))
				{
					this._B_Pages = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imported", DbType="Char(10)")]
		public string Imported
		{
			get
			{
				return this._Imported;
			}
			set
			{
				if ((this._Imported != value))
				{
					this._Imported = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_Id", DbType="Int NOT NULL")]
		public int P_Id
		{
			get
			{
				return this._P_Id;
			}
			set
			{
				if ((this._P_Id != value))
				{
					this._P_Id = value;
				}
			}
		}
	}
	
	public partial class USP_GETINVOICENOResult
	{
		
		private System.Nullable<int> _Column1;
		
		public USP_GETINVOICENOResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Name="", Storage="_Column1", DbType="Int")]
		public System.Nullable<int> Column1
		{
			get
			{
				return this._Column1;
			}
			set
			{
				if ((this._Column1 != value))
				{
					this._Column1 = value;
				}
			}
		}
	}
	
	public partial class USP_GETCUSTOMERResult
	{
		
		private int _C_Id;
		
		private string _C_Name;
		
		private string _C_City;
		
		private System.Nullable<int> _C_Contact;
		
		private string _C_Email;
		
		public USP_GETCUSTOMERResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Id", DbType="Int NOT NULL")]
		public int C_Id
		{
			get
			{
				return this._C_Id;
			}
			set
			{
				if ((this._C_Id != value))
				{
					this._C_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Name", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string C_Name
		{
			get
			{
				return this._C_Name;
			}
			set
			{
				if ((this._C_Name != value))
				{
					this._C_Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_City", DbType="NChar(30)")]
		public string C_City
		{
			get
			{
				return this._C_City;
			}
			set
			{
				if ((this._C_City != value))
				{
					this._C_City = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Contact", DbType="Int")]
		public System.Nullable<int> C_Contact
		{
			get
			{
				return this._C_Contact;
			}
			set
			{
				if ((this._C_Contact != value))
				{
					this._C_Contact = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Email", DbType="NVarChar(50)")]
		public string C_Email
		{
			get
			{
				return this._C_Email;
			}
			set
			{
				if ((this._C_Email != value))
				{
					this._C_Email = value;
				}
			}
		}
	}
	
	public partial class USP_GETBOOKResult
	{
		
		private int _B_Id;
		
		private string _B_Title;
		
		private string _B_Author;
		
		private string _B_Quantity;
		
		private int _B_Price;
		
		private int _B_Commission;
		
		private string _B_Shelf;
		
		private string _B_Genre;
		
		private string _B_Binding;
		
		private System.Nullable<int> _B_Pages;
		
		private string _Imported;
		
		private int _P_Id;
		
		public USP_GETBOOKResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Id", DbType="Int NOT NULL")]
		public int B_Id
		{
			get
			{
				return this._B_Id;
			}
			set
			{
				if ((this._B_Id != value))
				{
					this._B_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Title", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Title
		{
			get
			{
				return this._B_Title;
			}
			set
			{
				if ((this._B_Title != value))
				{
					this._B_Title = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Author", DbType="NVarChar(MAX)")]
		public string B_Author
		{
			get
			{
				return this._B_Author;
			}
			set
			{
				if ((this._B_Author != value))
				{
					this._B_Author = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Quantity", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Quantity
		{
			get
			{
				return this._B_Quantity;
			}
			set
			{
				if ((this._B_Quantity != value))
				{
					this._B_Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Price", DbType="Int NOT NULL")]
		public int B_Price
		{
			get
			{
				return this._B_Price;
			}
			set
			{
				if ((this._B_Price != value))
				{
					this._B_Price = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Commission", DbType="Int NOT NULL")]
		public int B_Commission
		{
			get
			{
				return this._B_Commission;
			}
			set
			{
				if ((this._B_Commission != value))
				{
					this._B_Commission = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Shelf", DbType="NVarChar(MAX)")]
		public string B_Shelf
		{
			get
			{
				return this._B_Shelf;
			}
			set
			{
				if ((this._B_Shelf != value))
				{
					this._B_Shelf = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Genre", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Genre
		{
			get
			{
				return this._B_Genre;
			}
			set
			{
				if ((this._B_Genre != value))
				{
					this._B_Genre = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Binding", DbType="NVarChar(MAX)")]
		public string B_Binding
		{
			get
			{
				return this._B_Binding;
			}
			set
			{
				if ((this._B_Binding != value))
				{
					this._B_Binding = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Pages", DbType="Int")]
		public System.Nullable<int> B_Pages
		{
			get
			{
				return this._B_Pages;
			}
			set
			{
				if ((this._B_Pages != value))
				{
					this._B_Pages = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imported", DbType="Char(10)")]
		public string Imported
		{
			get
			{
				return this._Imported;
			}
			set
			{
				if ((this._Imported != value))
				{
					this._Imported = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_Id", DbType="Int NOT NULL")]
		public int P_Id
		{
			get
			{
				return this._P_Id;
			}
			set
			{
				if ((this._P_Id != value))
				{
					this._P_Id = value;
				}
			}
		}
	}
	
	public partial class USP_GETINVOICEBOOKResult
	{
		
		private int _T002_INVOICEBOOKID;
		
		private int _T001_INVOICEOD;
		
		private int _B_Id;
		
		private int _T002_QTY;
		
		private decimal _T002_TOTALRS;
		
		private int _B_Id1;
		
		private string _B_Title;
		
		private string _B_Author;
		
		private string _B_Quantity;
		
		private int _B_Price;
		
		private int _B_Commission;
		
		private string _B_Shelf;
		
		private string _B_Genre;
		
		private string _B_Binding;
		
		private System.Nullable<int> _B_Pages;
		
		private string _Imported;
		
		private int _P_Id;
		
		public USP_GETINVOICEBOOKResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_INVOICEBOOKID", DbType="Int NOT NULL")]
		public int T002_INVOICEBOOKID
		{
			get
			{
				return this._T002_INVOICEBOOKID;
			}
			set
			{
				if ((this._T002_INVOICEBOOKID != value))
				{
					this._T002_INVOICEBOOKID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_INVOICEOD", DbType="Int NOT NULL")]
		public int T001_INVOICEOD
		{
			get
			{
				return this._T001_INVOICEOD;
			}
			set
			{
				if ((this._T001_INVOICEOD != value))
				{
					this._T001_INVOICEOD = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Id", DbType="Int NOT NULL")]
		public int B_Id
		{
			get
			{
				return this._B_Id;
			}
			set
			{
				if ((this._B_Id != value))
				{
					this._B_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_QTY", DbType="Int NOT NULL")]
		public int T002_QTY
		{
			get
			{
				return this._T002_QTY;
			}
			set
			{
				if ((this._T002_QTY != value))
				{
					this._T002_QTY = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_TOTALRS", DbType="Decimal(18,2) NOT NULL")]
		public decimal T002_TOTALRS
		{
			get
			{
				return this._T002_TOTALRS;
			}
			set
			{
				if ((this._T002_TOTALRS != value))
				{
					this._T002_TOTALRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Id1", DbType="Int NOT NULL")]
		public int B_Id1
		{
			get
			{
				return this._B_Id1;
			}
			set
			{
				if ((this._B_Id1 != value))
				{
					this._B_Id1 = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Title", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Title
		{
			get
			{
				return this._B_Title;
			}
			set
			{
				if ((this._B_Title != value))
				{
					this._B_Title = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Author", DbType="NVarChar(MAX)")]
		public string B_Author
		{
			get
			{
				return this._B_Author;
			}
			set
			{
				if ((this._B_Author != value))
				{
					this._B_Author = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Quantity", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Quantity
		{
			get
			{
				return this._B_Quantity;
			}
			set
			{
				if ((this._B_Quantity != value))
				{
					this._B_Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Price", DbType="Int NOT NULL")]
		public int B_Price
		{
			get
			{
				return this._B_Price;
			}
			set
			{
				if ((this._B_Price != value))
				{
					this._B_Price = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Commission", DbType="Int NOT NULL")]
		public int B_Commission
		{
			get
			{
				return this._B_Commission;
			}
			set
			{
				if ((this._B_Commission != value))
				{
					this._B_Commission = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Shelf", DbType="NVarChar(MAX)")]
		public string B_Shelf
		{
			get
			{
				return this._B_Shelf;
			}
			set
			{
				if ((this._B_Shelf != value))
				{
					this._B_Shelf = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Genre", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Genre
		{
			get
			{
				return this._B_Genre;
			}
			set
			{
				if ((this._B_Genre != value))
				{
					this._B_Genre = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Binding", DbType="NVarChar(MAX)")]
		public string B_Binding
		{
			get
			{
				return this._B_Binding;
			}
			set
			{
				if ((this._B_Binding != value))
				{
					this._B_Binding = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Pages", DbType="Int")]
		public System.Nullable<int> B_Pages
		{
			get
			{
				return this._B_Pages;
			}
			set
			{
				if ((this._B_Pages != value))
				{
					this._B_Pages = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imported", DbType="Char(10)")]
		public string Imported
		{
			get
			{
				return this._Imported;
			}
			set
			{
				if ((this._Imported != value))
				{
					this._Imported = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_Id", DbType="Int NOT NULL")]
		public int P_Id
		{
			get
			{
				return this._P_Id;
			}
			set
			{
				if ((this._P_Id != value))
				{
					this._P_Id = value;
				}
			}
		}
	}
	
	public partial class USP_GETINVOICEDETAILSResult
	{
		
		private int _T001_INVOICEOD;
		
		private int _C_Id;
		
		private System.DateTime _T001_DATE;
		
		private decimal _T001_TOTALRS;
		
		private System.Nullable<decimal> _T001_DISCOUNT;
		
		private System.Nullable<decimal> _T001_TAX;
		
		private decimal _T001_NETRS;
		
		private string _T001_NOTE;
		
		private string _C_Name;
		
		private string _C_Name1;
		
		public USP_GETINVOICEDETAILSResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_INVOICEOD", DbType="Int NOT NULL")]
		public int T001_INVOICEOD
		{
			get
			{
				return this._T001_INVOICEOD;
			}
			set
			{
				if ((this._T001_INVOICEOD != value))
				{
					this._T001_INVOICEOD = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Id", DbType="Int NOT NULL")]
		public int C_Id
		{
			get
			{
				return this._C_Id;
			}
			set
			{
				if ((this._C_Id != value))
				{
					this._C_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_DATE", DbType="Date NOT NULL")]
		public System.DateTime T001_DATE
		{
			get
			{
				return this._T001_DATE;
			}
			set
			{
				if ((this._T001_DATE != value))
				{
					this._T001_DATE = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_TOTALRS", DbType="Decimal(18,0) NOT NULL")]
		public decimal T001_TOTALRS
		{
			get
			{
				return this._T001_TOTALRS;
			}
			set
			{
				if ((this._T001_TOTALRS != value))
				{
					this._T001_TOTALRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_DISCOUNT", DbType="Decimal(18,2)")]
		public System.Nullable<decimal> T001_DISCOUNT
		{
			get
			{
				return this._T001_DISCOUNT;
			}
			set
			{
				if ((this._T001_DISCOUNT != value))
				{
					this._T001_DISCOUNT = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_TAX", DbType="Decimal(18,2)")]
		public System.Nullable<decimal> T001_TAX
		{
			get
			{
				return this._T001_TAX;
			}
			set
			{
				if ((this._T001_TAX != value))
				{
					this._T001_TAX = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_NETRS", DbType="Decimal(18,2) NOT NULL")]
		public decimal T001_NETRS
		{
			get
			{
				return this._T001_NETRS;
			}
			set
			{
				if ((this._T001_NETRS != value))
				{
					this._T001_NETRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_NOTE", DbType="VarChar(150)")]
		public string T001_NOTE
		{
			get
			{
				return this._T001_NOTE;
			}
			set
			{
				if ((this._T001_NOTE != value))
				{
					this._T001_NOTE = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Name", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string C_Name
		{
			get
			{
				return this._C_Name;
			}
			set
			{
				if ((this._C_Name != value))
				{
					this._C_Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Name1", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string C_Name1
		{
			get
			{
				return this._C_Name1;
			}
			set
			{
				if ((this._C_Name1 != value))
				{
					this._C_Name1 = value;
				}
			}
		}
	}
	
	public partial class USP_GETINVOICEResult
	{
		
		private int _T001_INVOICEOD;
		
		private int _C_Id;
		
		private System.DateTime _T001_DATE;
		
		private decimal _T001_TOTALRS;
		
		private System.Nullable<decimal> _T001_DISCOUNT;
		
		private System.Nullable<decimal> _T001_TAX;
		
		private decimal _T001_NETRS;
		
		private string _T001_NOTE;
		
		private int _T002_INVOICEBOOKID;
		
		private int _B_Id;
		
		private int _T002_QTY;
		
		private decimal _T002_TOTALRS;
		
		private string _C_Name;
		
		private string _C_City;
		
		private System.Nullable<int> _C_Contact;
		
		private string _B_Title;
		
		private string _B_Author;
		
		private string _B_Quantity;
		
		private int _B_Price;
		
		private int _B_Commission;
		
		private string _B_Shelf;
		
		private string _B_Genre;
		
		private string _B_Binding;
		
		private System.Nullable<int> _B_Pages;
		
		private string _Imported;
		
		private int _P_Id;
		
		public USP_GETINVOICEResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_INVOICEOD", DbType="Int NOT NULL")]
		public int T001_INVOICEOD
		{
			get
			{
				return this._T001_INVOICEOD;
			}
			set
			{
				if ((this._T001_INVOICEOD != value))
				{
					this._T001_INVOICEOD = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Id", DbType="Int NOT NULL")]
		public int C_Id
		{
			get
			{
				return this._C_Id;
			}
			set
			{
				if ((this._C_Id != value))
				{
					this._C_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_DATE", DbType="Date NOT NULL")]
		public System.DateTime T001_DATE
		{
			get
			{
				return this._T001_DATE;
			}
			set
			{
				if ((this._T001_DATE != value))
				{
					this._T001_DATE = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_TOTALRS", DbType="Decimal(18,0) NOT NULL")]
		public decimal T001_TOTALRS
		{
			get
			{
				return this._T001_TOTALRS;
			}
			set
			{
				if ((this._T001_TOTALRS != value))
				{
					this._T001_TOTALRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_DISCOUNT", DbType="Decimal(18,2)")]
		public System.Nullable<decimal> T001_DISCOUNT
		{
			get
			{
				return this._T001_DISCOUNT;
			}
			set
			{
				if ((this._T001_DISCOUNT != value))
				{
					this._T001_DISCOUNT = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_TAX", DbType="Decimal(18,2)")]
		public System.Nullable<decimal> T001_TAX
		{
			get
			{
				return this._T001_TAX;
			}
			set
			{
				if ((this._T001_TAX != value))
				{
					this._T001_TAX = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_NETRS", DbType="Decimal(18,2) NOT NULL")]
		public decimal T001_NETRS
		{
			get
			{
				return this._T001_NETRS;
			}
			set
			{
				if ((this._T001_NETRS != value))
				{
					this._T001_NETRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T001_NOTE", DbType="VarChar(150)")]
		public string T001_NOTE
		{
			get
			{
				return this._T001_NOTE;
			}
			set
			{
				if ((this._T001_NOTE != value))
				{
					this._T001_NOTE = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_INVOICEBOOKID", DbType="Int NOT NULL")]
		public int T002_INVOICEBOOKID
		{
			get
			{
				return this._T002_INVOICEBOOKID;
			}
			set
			{
				if ((this._T002_INVOICEBOOKID != value))
				{
					this._T002_INVOICEBOOKID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Id", DbType="Int NOT NULL")]
		public int B_Id
		{
			get
			{
				return this._B_Id;
			}
			set
			{
				if ((this._B_Id != value))
				{
					this._B_Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_QTY", DbType="Int NOT NULL")]
		public int T002_QTY
		{
			get
			{
				return this._T002_QTY;
			}
			set
			{
				if ((this._T002_QTY != value))
				{
					this._T002_QTY = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_T002_TOTALRS", DbType="Decimal(18,2) NOT NULL")]
		public decimal T002_TOTALRS
		{
			get
			{
				return this._T002_TOTALRS;
			}
			set
			{
				if ((this._T002_TOTALRS != value))
				{
					this._T002_TOTALRS = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Name", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string C_Name
		{
			get
			{
				return this._C_Name;
			}
			set
			{
				if ((this._C_Name != value))
				{
					this._C_Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_City", DbType="NChar(30)")]
		public string C_City
		{
			get
			{
				return this._C_City;
			}
			set
			{
				if ((this._C_City != value))
				{
					this._C_City = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_C_Contact", DbType="Int")]
		public System.Nullable<int> C_Contact
		{
			get
			{
				return this._C_Contact;
			}
			set
			{
				if ((this._C_Contact != value))
				{
					this._C_Contact = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Title", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Title
		{
			get
			{
				return this._B_Title;
			}
			set
			{
				if ((this._B_Title != value))
				{
					this._B_Title = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Author", DbType="NVarChar(MAX)")]
		public string B_Author
		{
			get
			{
				return this._B_Author;
			}
			set
			{
				if ((this._B_Author != value))
				{
					this._B_Author = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Quantity", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Quantity
		{
			get
			{
				return this._B_Quantity;
			}
			set
			{
				if ((this._B_Quantity != value))
				{
					this._B_Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Price", DbType="Int NOT NULL")]
		public int B_Price
		{
			get
			{
				return this._B_Price;
			}
			set
			{
				if ((this._B_Price != value))
				{
					this._B_Price = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Commission", DbType="Int NOT NULL")]
		public int B_Commission
		{
			get
			{
				return this._B_Commission;
			}
			set
			{
				if ((this._B_Commission != value))
				{
					this._B_Commission = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Shelf", DbType="NVarChar(MAX)")]
		public string B_Shelf
		{
			get
			{
				return this._B_Shelf;
			}
			set
			{
				if ((this._B_Shelf != value))
				{
					this._B_Shelf = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Genre", DbType="NVarChar(MAX) NOT NULL", CanBeNull=false)]
		public string B_Genre
		{
			get
			{
				return this._B_Genre;
			}
			set
			{
				if ((this._B_Genre != value))
				{
					this._B_Genre = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Binding", DbType="NVarChar(MAX)")]
		public string B_Binding
		{
			get
			{
				return this._B_Binding;
			}
			set
			{
				if ((this._B_Binding != value))
				{
					this._B_Binding = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_B_Pages", DbType="Int")]
		public System.Nullable<int> B_Pages
		{
			get
			{
				return this._B_Pages;
			}
			set
			{
				if ((this._B_Pages != value))
				{
					this._B_Pages = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imported", DbType="Char(10)")]
		public string Imported
		{
			get
			{
				return this._Imported;
			}
			set
			{
				if ((this._Imported != value))
				{
					this._Imported = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_Id", DbType="Int NOT NULL")]
		public int P_Id
		{
			get
			{
				return this._P_Id;
			}
			set
			{
				if ((this._P_Id != value))
				{
					this._P_Id = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
