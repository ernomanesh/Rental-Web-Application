using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace Sunset_Rentals_Web_App
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            if(TbUname.Text!="" &TbPassword.Text!="" &&TbName.Text!="" &&Tbemail.Text!="" &&TbCPass.Text!="")
            {
                if (TbPassword.Text == TbCPass.Text)
                {            
            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into Users values('"+TbUname.Text+ "','" + TbPassword.Text + "','" + Tbemail.Text + "','" + TbName.Text + "','U')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                        lblMsg.Text = "Registration Sucessfull";
                        lblMsg.ForeColor = Color.DarkOliveGreen;
                        Response.Redirect("~/SignIn.aspx");
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.DarkRed;
                    lblMsg.Text = "password do not match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.DarkRed;
                lblMsg.Text="All fields are Mandatory";
            }
    }
}
}