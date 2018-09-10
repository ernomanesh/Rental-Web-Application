using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sunset_Rentals_Web_App
{
    public partial class TenantDetails : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompleteOrder_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into tblFinalBooking values('" + txtbookNo.Text + "','" + txtAL.Text + "','" + txtUn.Text + "','" + txtID.Text + "','" + txtaddre.Text + "','" + txtconta.Text + "','" + txtpay.Text + "','" + txtHN.Text + "','" + txtFrom.Text + "','" + txtto.Text + "')", con);
                con.Open();
               
                Response.Redirect("~/ThankYouCustomer.aspx");
            }
        }
    }
}