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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkuserid_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(@"Data Source=AP\sqlexpress;Initial Catalog=SBAIMS;Integrated Security=True");
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("select * from User_Master where UserID=@UserID", con1);
            cmd1.Parameters.AddWithValue("@UserID",chkuserid.Text);
            SqlDataAdapter adptr1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            adptr1.Fill(ds1, "User_Master");
            if (ds1.Tables["User_Master"].Rows.Count > 0)
            {
                pwd.Text = ds1.Tables["User_Master"].Rows[0]["Password"].ToString();
                string Body = "Your password is :" + pwd.Text;
                Function.SendEmail("shantinathbookagency@gmail.com", "Password Recovery", Body);
                labeluid.Text = "Mail Sent Succsessfully.";
                labeluid.Visible = true;
                con1.Close();
            }
            else
            {
                labeluid.Visible = true;
            }
        }

        protected void backtologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}