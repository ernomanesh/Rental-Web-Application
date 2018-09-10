using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sunset_Rentals_Web_App
{
    public partial class RentalBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookingHouses();
            }
        }

        private void BindBookingHouses()
        {
            if (Request.Cookies["BookingPID"] != null)
            {
                String CookieData = Request.Cookies["BookingPID"].Value.Split('=')[1];
                string[] CookieDataTray = CookieData.Split(',');
                if (CookieDataTray.Length > 0)
                {
                    h5NoteItems.InnerText = "My Bookings (" + CookieDataTray.Length + "Items)";
                    DataTable dtBrands = new DataTable();
                    Int64 BookingTotal = 0;
                    Int64 Total = 0;
                    for (int i = 0; i < CookieDataTray.Length; i++)
                    {
                        String HID = CookieDataTray[i].ToString().Split('-')[0];
                        string SizeID = CookieDataTray[i].ToString().Split('-')[1];

                        string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd = new SqlCommand("select A. *,dbo.getSizeName(" + SizeID + ") as SizeNamee, "
                                + SizeID + "as SizeIDD,SizeData.Name,SizeData.Extention from tblHouses A cross Apply(select top 1 B.Name,Extention  from tblHouseImages B where B.HID=A.HID)SizeData where A.HID="
                                + HID + "", con))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {

                                    sda.Fill(dtBrands);

                                }
                            }
                        }
                          BookingTotal+=Convert.ToInt64(dtBrands.Rows[i]["HPrice"]);
                        Total += Convert.ToInt64(dtBrands.Rows[i]["HSelPrice"]);
                    }
                    rptrbookingHouses.DataSource = dtBrands;
                    rptrbookingHouses.DataBind();
                    divRentDetails.Visible = true;

                    spanBookingTotal.InnerText = BookingTotal.ToString();
                    SpanTotal.InnerText = "ksh." + Total.ToString();
                    SpanDiscount.InnerText = "-" + (BookingTotal - Total).ToString();
                }
                else
                {
                    h5NoteItems.InnerText = "You Have not Booked a Room/House";
                    divRentDetails.Visible = false;
                }
            }
            else
            {
                h5NoteItems.InnerText = "You Have not Booked a Room/House";
                divRentDetails.Visible = false;
            }
        }
        protected void BtnRemoveBooking_Click(object sender, EventArgs e)
        {

            String CookieHID = Request.Cookies["BookingPID"].Value.Split('=')[1];
            Button btn = (Button)(sender);
            string PIDSIZE = btn.CommandArgument;

            List<string> CookieProductIDList = CookieHID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
            CookieProductIDList.Remove(PIDSIZE);
            string CookieProductIDUpdated = String.Join(",", CookieProductIDList.ToArray());
            if (CookieProductIDUpdated == "")
            {
                HttpCookie CartProducts = Request.Cookies["BookingPID"];
                CartProducts.Values["BookingPID"] = null;
                CartProducts.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(CartProducts);

            }
            else
            {
                HttpCookie CartProducts = Request.Cookies["BookingPID"];
                CartProducts.Values["BookingPID"] = CookieProductIDUpdated;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);

            }
            Response.Redirect("~/RentalBookings.aspx");
        }

        protected void BtnBookNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TenantDetails.aspx");
        }

        protected void btncontinueBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HouseDetails.aspx");

        }
    }
}
   