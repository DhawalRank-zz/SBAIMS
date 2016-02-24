using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SBAIMS
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["slogin"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }
        
        protected void yeslogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Default.aspx");
        }
       
        protected void deletebooks_Click(object sender, EventArgs e)
        {

            /*
                    SqlConnection econ = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
                    econ.Open();
                    SqlCommand ecmd = new SqlCommand("Delete from Book_Master where B_Id='" + ddbid.Text + "'", econ);
                    ecmd.ExecuteNonQuery();
                    econ.Close();
                    labeldeletebooks.Visible = true;
                    ddbid.Text = "";
             */
        }

       

    }
}
