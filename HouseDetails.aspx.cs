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
    public partial class HouseDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["HID"] != null)
            {
                if (!IsPostBack)
                {
                    BindHouseImages();
                    BindHouseDetails();
                }
            }
            else
            {
                Response.Redirect("~/RentalHouses.aspx");
            }
        }

        private void BindHouseDetails()
        {
            Int64 HID = Convert.ToInt64(Request.QueryString["HID"]);

            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblHouses where HID=" + HID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrHouseDetails.DataSource = dtBrands;
                        rptrHouseDetails.DataBind();
                    }
                }
            }
        }

        private void BindHouseImages()
        {
            Int64 HID = Convert.ToInt64(Request.QueryString["HID"]);

            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblHouseImages where HID=" + HID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrImages.DataSource = dtBrands;
                        rptrImages.DataBind();
                    }
                }
            }
        }

        protected String GetActiveClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }

        protected void rptrHouseDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
                string CategoryID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
                string SubCategoryID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
                string GenreID = (e.Item.FindControl("hfGenreID") as HiddenField).Value;

                RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;

                String CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from tblSizes where BrandID=" + BrandID + "and CategoryID=" + CategoryID + "and SubCategoryID=" + SubCategoryID + "and GenreID=" + GenreID + "", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dtBrands = new DataTable();
                            sda.Fill(dtBrands);
                            rblSize.DataSource = dtBrands;
                            rblSize.DataTextField = "SizeName";
                            rblSize.DataValueField = "SizeID";
                            rblSize.DataBind();
                        }
                    }
                }
            }
        }

        protected void BtnAddToBooking_Click(object sender, EventArgs e)
        {
            string selectedSize = string.Empty;
            foreach (RepeaterItem item in rptrHouseDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var rbList = item.FindControl("rblSize") as RadioButtonList;
                    selectedSize = rbList.SelectedValue;

                    var lblerr = item.FindControl("lblerr") as Label;
                    lblerr.Text = "";
                }
            }
            if (selectedSize != "")
            {

                Int64 HID = Convert.ToInt64(Request.QueryString["HID"]);
                if (Request.Cookies["BookingPID"] != null)
                {
                    String CookiePID = Request.Cookies["BookingPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + HID + "-" + selectedSize;

                    HttpCookie BookingHouses = new HttpCookie("BookingPID");
                    BookingHouses.Values["BookingPID"] = CookiePID;
                    BookingHouses.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(BookingHouses);
                }
                else
                {
                    HttpCookie BookingHouses = new HttpCookie("BookingPID");
                    BookingHouses.Values["BookingPID"] = HID.ToString()+"-"+ selectedSize;
                    BookingHouses.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(BookingHouses);
                }
                Response.Redirect("~/HouseDetails.aspx?HID=" + HID);
            }
            else
            {
                foreach (RepeaterItem item in rptrHouseDetails.Items)
                {
                    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        var lblerr = item.FindControl("lblerr") as Label;
                        lblerr.Text = "Please Select a Size";
                    }
                }
            }
        }
    }
}