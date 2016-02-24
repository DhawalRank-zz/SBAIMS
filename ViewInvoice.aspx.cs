using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SBAIMS
{
    public partial class ViewInvoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
        DataClasses1DataContext Myda = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateCustomer();
                PopulateInvoice();
            }
        }

        void PopulateCustomer()
        {
            List<USP_GETCUSTOMERResult> lstCustomer;
            lstCustomer = Myda.USP_GETCUSTOMER().ToList();
            if (lstCustomer.Count > 0)
            {
                ddCustomerName.DataSource = lstCustomer; ;
                ddCustomerName.DataTextField = "C_Name";
                ddCustomerName.DataValueField = "C_Id";
                ddCustomerName.DataBind();
            }
            else
            {
                ddCustomerName.DataSource = null;
                ddCustomerName.DataBind();
            }
        }

        void PopulateInvoice()
        {
            int iT001_INVOICEOD = 0, iC_Id = 0;
            DateTime? dtT001_DATE = null;
            string sT001_INVOICEOD = "", sC_Id = "", sC_City = "";

            if (!string.IsNullOrEmpty(txtInvoiceNo.Text.Trim()))
                int.TryParse(txtInvoiceNo.Text.Trim(), out iT001_INVOICEOD);
            if (!string.IsNullOrEmpty(ddCustomerName.Text.Trim()))
                int.TryParse(ddCustomerName.SelectedValue.ToString(), out iC_Id);
            if (!string.IsNullOrEmpty(txtDate.Text.Trim()))
                dtT001_DATE = DateTime.Parse(txtDate.Text.Trim());
            if (!string.IsNullOrEmpty(txtCityName.Text.Trim()))
                sC_City = txtCityName.Text.Trim();

            if (iT001_INVOICEOD > 0)
                sT001_INVOICEOD = iT001_INVOICEOD.ToString();
            if (iC_Id > 0)
                sC_Id = iC_Id.ToString();

            List<USP_GETINVOICEResult> lstInvoice;
            lstInvoice = Myda.USP_GETINVOICE(sT001_INVOICEOD, sC_Id, dtT001_DATE, sC_City).ToList();
            if (lstInvoice.Count > 0)
            {
                gvInvoice.DataSource = lstInvoice;
                gvInvoice.DataBind();
            }
            else
            {
                gvInvoice.DataSource = null;
                gvInvoice.DataBind();
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            PopulateInvoice();
        }
        protected void imgbtnDelete_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ViewReport.aspx?ID=" + e.CommandArgument.ToString());
        }
    }
}