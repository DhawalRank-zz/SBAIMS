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
    public partial class addtoinventory : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submitaddbooks_Click(object sender, EventArgs e)
        {
            string s = ViewState["s"].ToString();   
            SqlConnection con = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Book_Master(P_Id,B_Title,B_Quantity,B_Price,B_Commission,B_Genre,B_Author,B_Low,B_Shelf,B_Binding,B_Pages,Imported) values('" + Convert.ToInt16(ViewState["s"].ToString()) + "','" + abktitle.Text + "','" + abkqty.Text + "','" + abkprice.Text + "','" + abkcomm.Text + "','" + abkgenre.Text + "','" + abkauthor.Text + "','" + abklqa.Text + "','" + absno.Text + "','" + abbinding.Text + "','" + abknp.Text + "','" + abimported.SelectedItem + "') ", con);
            cmd.ExecuteNonQuery();
            con.Close();

            addbookssubmit.Visible = true;
            abktitle.Text = "";
            abkqty.Text = "";
            abkprice.Text = "";
            abkcomm.Text = "";
            abkgenre.Text = "";
            abkauthor.Text = "";
            absno.Text = "";
            abbinding.Text = "";
            abklqa.Text = "";
            abknp.Text = "";
            aspub.Text = "";
            aspub.Focus();
        }

        protected void submitaddpub_Click(object sender, EventArgs e)
        {

            SqlConnection bcon = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            bcon.Open();
            SqlCommand bcmd = new SqlCommand("Insert into Publication_Master(Publication,Publisher,P_Contact,P_Contact2,P_Email,P_BankAccount) values('" + bkpub.Text + "','" + bkpname.Text + "','" + bkpc1.Text + "','" + bkpc2.Text + "','" + bkpemail.Text + "','" + bkpban.Text + "') ", bcon);
            bcmd.ExecuteNonQuery();
            bcon.Close();

            labeladdpub.Visible = true;
            bkpub.Text = "";
            bkpname.Text = "";
            bkpc1.Text = "";
            bkpc2.Text = "";
            bkpemail.Text = "";
            bkpban.Text = "";
            bkpub.Focus();
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> GetPublication(string prefixText)
        {
            SqlConnection acon = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            acon.Open();
            SqlCommand acmd = new SqlCommand("select Publication,P_Id from Publication_Master where Publication like @Name+'%'", acon);
            acmd.Parameters.AddWithValue("@Name", prefixText);
            SqlDataAdapter da = new SqlDataAdapter(acmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            acon.Close();
            List<string> PNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string item = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString());
                PNames.Add(item);
                //PNames.Add(dt.Rows[i][0].ToString());
            }
            return PNames;

        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> GetBook(string prefixText)
        {
            SqlConnection ccon = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            ccon.Open();
            SqlCommand ccmd = new SqlCommand("select B_Title,B_Id from Book_Master where B_Title like @Name+'%'", ccon);
            ccmd.Parameters.AddWithValue("@Name", prefixText);
            SqlDataAdapter da = new SqlDataAdapter(ccmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ccon.Close();
            List<string> PNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string item = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString());
                PNames.Add(item);
                //PNames.Add(dt.Rows[i][0].ToString());
            }
            return PNames;
        }

        protected void aspub_TextChanged(object sender, EventArgs e)
        {
            string id = Request.Form[HiddenField1.UniqueID];
            if (id == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert_rl", "alert('This is not a valid publication name. If it is a new publication then please fill the Publication Form first.');", true);
                aspub.Text = "";
                aspub.Focus();
            }
            else
            {
               ViewState["s"]  = Convert.ToInt16(Request.Form[HiddenField1.UniqueID]);
                abktitle.Focus();
                HiddenField1.Value = "";
            }
        }

    }
}