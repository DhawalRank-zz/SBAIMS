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
    public partial class CreateInvoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
        DataClasses1DataContext Myda = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateInvoiceNo();
                PopulateCustomer();
                PopulateBookDetails();
            }
            PopulateInvoiceBook();
        }

        void PopulateInvoiceNo()
        {
            int iInvoiceNo = 0;

            List<USP_GETINVOICEDETAILSResult> lstInvoiceNo;
            lstInvoiceNo = Myda.USP_GETINVOICEDETAILS("", "", null).ToList();

            if (lstInvoiceNo.Count > 0)
            {
                for (int i = 0; i < lstInvoiceNo.Count; i++)
                {
                    int.TryParse(lstInvoiceNo[i].T001_INVOICEOD.ToString(), out iInvoiceNo);
                }

            }



            lblInvoiceNo.Text = (iInvoiceNo + 1).ToString();
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

        void PopulateBookDetails()
        {

            List<USP_GETBOOKResult> lstBookName;
            lstBookName = Myda.USP_GETBOOK("").ToList();

            if (lstBookName.Count > 0)
            {
                ddBookName.DataSource = lstBookName;
                ddBookName.DataTextField = "B_Title";
                ddBookName.DataValueField = "B_Id";
                ddBookName.DataBind();
            }
            else
            {
                ddBookName.DataSource = null;
                ddBookName.DataBind();
            }
        }

        void PopulateTotalRs()
        {
            int iB_Id = 0, iQty = 0;
            string sB_Id = "-1";

            int dPrice = 0, dTotelRs = 0;

            if (!string.IsNullOrEmpty(ddBookName.Text.Trim()))
                int.TryParse(ddBookName.SelectedValue.ToString(), out iB_Id);
            if (iB_Id > 0)
                sB_Id = iB_Id.ToString();

            List<USP_GETBOOKResult> lstBookDetails;
            lstBookDetails = Myda.USP_GETBOOK(sB_Id).ToList();
            if (lstBookDetails.Count > 0)
            {
                int.TryParse(lstBookDetails[0].B_Price.ToString(), out dPrice);
            }

            int.TryParse(txtQty.Text.Trim(), out iQty);
            dTotelRs = iQty * dPrice;




        }

        void PopulateInvoiceBook()
        {
            int iT001_INVOICEOD = 0;
            string sT001_INVOICEOD = "-1";

            int.TryParse(lblInvoiceNo.Text.Trim(), out iT001_INVOICEOD);
            if (iT001_INVOICEOD > 0)
                sT001_INVOICEOD = iT001_INVOICEOD.ToString();

            decimal dTotalRs = 0;

            List<USP_GETINVOICEBOOKResult> lstInvoiceBook;
            lstInvoiceBook = Myda.USP_GETINVOICEBOOK(sT001_INVOICEOD).ToList();
            if (lstInvoiceBook.Count > 0)
            {
                for (int i = 0; i < lstInvoiceBook.Count; i++)
                {
                    decimal iTota = 0;
                    decimal.TryParse(lstInvoiceBook[i].T002_TOTALRS.ToString(), out iTota);
                    dTotalRs = dTotalRs + iTota;
                }

                lblTotalRs.Text = dTotalRs.ToString();
                gvPhotoAlbum.DataSource = lstInvoiceBook;
                gvPhotoAlbum.DataBind();
            }
            else
            {
                lblTotalRs.Text = "";
                gvPhotoAlbum.DataSource = null;
                gvPhotoAlbum.DataBind();
            }


        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            PopulateTotalRs();
        }


        protected void btnAddInvoice_Click(object sender, EventArgs e)
        {
            try
            {
                int iT001_INVOICEOD = 0, iB_Id, iT002_QTY = 0;
                decimal dT002_TOTALRS = 0;

                int.TryParse(lblInvoiceNo.Text.Trim(), out iT001_INVOICEOD);
                int.TryParse(ddBookName.SelectedValue.ToString(), out iB_Id);
                int.TryParse(txtQty.Text.Trim(), out iT002_QTY);


                string sB_Id = "-1";

                int dPrice = 0, dTotelRs = 0;
                if (iB_Id > 0)
                    sB_Id = iB_Id.ToString();

                List<USP_GETBOOKResult> lstBookDetails;
                lstBookDetails = Myda.USP_GETBOOK(sB_Id).ToList();
                if (lstBookDetails.Count > 0)
                {
                    int.TryParse(lstBookDetails[0].B_Price.ToString(), out dPrice);
                }


                dT002_TOTALRS = iT002_QTY * dPrice;


                Myda.USP_ADDINVOICEBOOK(0, iT001_INVOICEOD, iB_Id, iT002_QTY, dT002_TOTALRS);
                PopulateInvoiceBook();

                ddBookName.SelectedIndex = 0;
                txtQty.Text = "";
                ddBookName.Focus();

            }
            catch (Exception ex)
            {

                throw;
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            AddInvoice();
        }

        void AddInvoice()
        {
            try
            {
                int iC_Id = 0;
                DateTime dtT001_DATE = DateTime.Now;
                decimal dT001_DISCOUNT = 0, dT001_TAX = 0, dT001_NETRS = 0, dT001_TOTALRS = 0;
                string sT001_NOTE = "";
                int iDiscountRs = 0, iTaxRs = 0;

                decimal.TryParse(txtDiscount.Text.Trim(), out dT001_DISCOUNT);
                decimal.TryParse(txtTax.Text.Trim(), out dT001_TAX);

                int.TryParse(ddCustomerName.SelectedValue.ToString(), out iC_Id);
                decimal.TryParse(lblTotalRs.Text.Trim(), out dT001_TOTALRS);
                DateTime.TryParse(txtDate.Text.Trim(), out dtT001_DATE);


                decimal dTotalPrice = 0, dTex = 0, dDiscount = 0, dTotalTax = 0, dTotalDiscout = 0, dNetPrice = 0;

                decimal.TryParse(lblTotalRs.Text.Trim(), out dTotalPrice);
                decimal.TryParse(txtTax.Text.Trim(), out dTex);
                decimal.TryParse(txtDiscount.Text.Trim(), out dDiscount);
                dTotalTax = (dTotalPrice * dTex) / 100;
                dTotalDiscout = (dTotalPrice * dDiscount) / 100;
                dNetPrice = (dTotalPrice + dTotalTax) - dTotalDiscout;

                dT001_NETRS = dNetPrice;

                //decimal dDiscountAmount = dT001_TOTALRS - dT001_DISCOUNT;
                //dT001_NETRS = dDiscountAmount - dT001_TAX;
                Myda.USP_ADDINVOICE(0, iC_Id, dtT001_DATE, dT001_TOTALRS, dDiscount, dTex, dT001_NETRS, sT001_NOTE);
                // Response.Write("<script> alert('Invoice details addedd..'); </script>");
                int iInvoiceNo = 0;
                int.TryParse(lblInvoiceNo.Text.Trim(), out iInvoiceNo);

                Response.Redirect("ViewInvoice.aspx?ID=" + iInvoiceNo);
            }
            catch (Exception ex)
            {

                throw;
            }







        }
        protected void gvPhotoAlbum_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    Button l = (Button)e.Row.FindControl("imgbtnDelete");
                    l.Attributes.Add("onclick", "javascript:return " + "confirm('" + "Are You Delete this Book Title?" + "')");
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void imgbtnDelete_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int iid = 0;
                int.TryParse(e.CommandArgument.ToString(), out iid);

                Myda.USP_DELETEINVOICEBOOK(iid);
                PopulateInvoiceBook();

            }
            catch (Exception ex)
            {

            }
        }
    }
}