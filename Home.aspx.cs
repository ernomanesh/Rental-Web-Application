using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sunset_Rentals_Web_App
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBookingNumber();

             if (Session["USERNAME"] != null)
            {
                btnSignUp.Visible = false;
                btnSignIn.Visible = false;
                btnSignOut.Visible = true;
            }
            else
            {

                btnSignUp.Visible = true;
                btnSignIn.Visible = true;
                btnSignOut.Visible = false;
            }
        }
        public void BindBookingNumber()
        {
            if (Request.Cookies["BookingPID"] != null)
            {
                String CookiePID = Request.Cookies["BookingPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }

      // * protected void btnSignOut_Click(object sender, EventArgs e)
       // {
       //     Session["USERNAME"] = null;
       //     Response.Redirect("~/Home.aspx");
      //  }
    }
}