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
    public partial class AddGenre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandsRpt();
        }

        private void BindBrandsRpt()
        {
            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblGenre", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrCategory.DataSource = dtBrands;
                        rptrCategory.DataBind();
                    }
                }
            }
        }

        protected void BtnAddd_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblGenre values('" +txtGenreName.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtGenreName.Text = string.Empty;
            }
            BindBrandsRpt();
        }
    }
}