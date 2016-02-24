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
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void login1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from User_Master where UserID=@UserID and Password=@Password", con);
            cmd.Parameters.AddWithValue("@UserID", userid.Value);
            cmd.Parameters.AddWithValue("@Password",password.Value);
            SqlDataAdapter adptr = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adptr.Fill(ds, "User_Master");
            if (ds.Tables["User_Master"].Rows.Count > 0)
            {

                Session["slogin"] = userid.Value;
                Response.Redirect("Home.aspx");
                con.Close();

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert_rl", "alert('Invalid UserID & Passowrd Combination. Please Retry! ');", true);
            }             
        }               
    }
}
