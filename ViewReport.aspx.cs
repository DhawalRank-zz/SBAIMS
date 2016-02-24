using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;


namespace SBAIMS
{
    public partial class ViewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                PrintReport();
        }

        void PrintReport()
        {

            try
            {
                string id = "";
                id = Request.QueryString["ID"].ToString();

                SqlConnection con = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");

                SqlDataAdapter ad = new SqlDataAdapter("USP_GETINVOICE", con);
                ad.SelectCommand.CommandType = CommandType.StoredProcedure;
                ad.SelectCommand.Parameters.Add("@T001_INVOICEOD", id);
                ad.SelectCommand.Parameters.Add("@C_Id", "");
                ad.SelectCommand.Parameters.Add("@T001_DATE", "");
                ad.SelectCommand.Parameters.Add("@C_City", "");


                DataSet ds = new DataSet();
                ad.Fill(ds);
                DataTable dt = ds.Tables[0];

                if (dt.Columns.Count > 0)
                {
                    ReportDocument RptDoc = new ReportDocument();
                    RptDoc.Load(Server.MapPath("Invoice.rpt"));
                    RptDoc.SetDataSource(dt);
                    CrystalReportViewer2.ReportSource = RptDoc;
                    CrystalReportViewer2.RefreshReport();

                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}