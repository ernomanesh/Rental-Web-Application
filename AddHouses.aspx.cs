using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Sunset_Rentals_Web_App
{
    public partial class AddHouses : System.Web.UI.Page
    {
       public static string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindBrands();
                BindCategory();
                BindGenre();
                ddlSubCategory.Enabled = false;
                ddlGenre.Enabled = false;
            }
        }

        private void BindGenre()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(" select * from tblGenre", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlGenre.DataSource = dt;
                    ddlGenre.DataTextField = "GenreName";
                    ddlGenre.DataValueField = "GenreID";
                    ddlGenre.DataBind();
                    ddlGenre.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(" select * from tblCategories", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindBrands()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(" select * from tblBrands", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlBrands.DataSource = dt;
                    ddlBrands.DataTextField = "Name";
                    ddlBrands.DataValueField = "BrandID";
                    ddlBrands.DataBind();
                    ddlBrands.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        protected void BtnAddd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procInsertHouses", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@HName", txtHName.Text);
                cmd.Parameters.AddWithValue("@HPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@HSelPrice", txtSelPrice.Text);
                cmd.Parameters.AddWithValue("@HBrandID", ddlBrands.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@HCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@HSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@HGenre", ddlGenre.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@HDescription", txtDesc.Text);
                cmd.Parameters.AddWithValue("@HProductDetails", txtHDetails.Text);
                cmd.Parameters.AddWithValue("@HMaterialCare", txtMatCare.Text);
                if(cbFD.Checked==true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }
                if (cb30DRet.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@30daysReturn", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@30daysReturn", 0.ToString());
                }
                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                con.Open();
                Int64 HID =Convert.ToInt64(cmd.ExecuteScalar());

                //Insert House Floor SizeQuantity
                for(int i = 0; i < CblSize.Items.Count; i++)
                {
                    if(CblSize.Items[i].Selected==true)
                    {
                        Int64 SizeID =Convert.ToInt64 (CblSize.Items[i].Value);
                        int Quantity = Convert.ToInt32(txtHouseFloor.Text);

                        SqlCommand cmd2 = new SqlCommand("insert into tblHouseSizeQuantity values('" +HID+ "','" +SizeID+ "','" +Quantity+ "')", con);
                        cmd2.ExecuteNonQuery();
                    }
                }

                //Insert and Upload Images
                if(FuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/House Images/ProductImages/") + HID;
                    if(!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FuImg01.PostedFile.FileName);
                    FuImg01.SaveAs(SavePath + "\\" + txtHName.Text.ToString().Trim()+"01"+ Extention);

                    SqlCommand cmd3 = new SqlCommand("insert into tblHouseImages values ('" + HID + "','" + txtHName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                    cmd3.ExecuteNonQuery();
                }
                if (FuImg02.HasFile)
                {
                    string SavePath = Server.MapPath("~/House Images/ProductImages/") + HID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FuImg02.PostedFile.FileName);
                    FuImg02.SaveAs(SavePath + "\\" + txtHName.Text.ToString().Trim() + "02" + Extention);

                    SqlCommand cmd4 = new SqlCommand("insert into tblHouseImages values ('" + HID + "','" + txtHName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                    cmd4.ExecuteNonQuery();
                }
                if (FuImg03.HasFile)
                {
                    string SavePath = Server.MapPath("~/House Images/ProductImages/") + HID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FuImg03.PostedFile.FileName);
                    FuImg03.SaveAs(SavePath + "\\" + txtHName.Text.ToString().Trim() + "03" + Extention);

                    SqlCommand cmd5 = new SqlCommand("insert into tblHouseImages values ('" + HID + "','" + txtHName.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
                    cmd5.ExecuteNonQuery();
                }
                if (FuImg04.HasFile)
                {
                    string SavePath = Server.MapPath("~/House Images/ProductImages/") + HID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FuImg04.PostedFile.FileName);
                    FuImg04.SaveAs(SavePath + "\\" + txtHName.Text.ToString().Trim() + "04" + Extention);

                    SqlCommand cmd6 = new SqlCommand("insert into tblHouseImages values ('" + HID + "','" + txtHName.Text.ToString().Trim() + "04" + "','" + Extention + "')", con);
                    cmd6.ExecuteNonQuery();
                }
                if (FuImg05.HasFile)
                {
                    string SavePath = Server.MapPath("~/House Images/ProductImages/") + HID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FuImg05.PostedFile.FileName);
                    FuImg05.SaveAs(SavePath + "\\" + txtHName.Text.ToString().Trim() + "05" + Extention);

                    SqlCommand cmd7 = new SqlCommand("insert into tblHouseImages values ('" + HID + "','" + txtHName.Text.ToString().Trim() + "05" + "','" + Extention + "')", con);
                    cmd7.ExecuteNonQuery();
                }
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(" select * from tblSubCategories where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                    ddlSubCategory.Enabled = true;
                }
            }
        }

        protected void ddlGenre_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tblSizes where BrandID='" + ddlBrands.SelectedItem.Value + "' and CategoryID='" + ddlCategory.SelectedItem.Value + "' and SubCategoryID='" + ddlSubCategory.SelectedItem.Value + "' and GenreID='" + ddlGenre.SelectedItem.Value + "' ", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    CblSize.DataSource = dt;
                    CblSize.DataTextField = "SizeName";
                    CblSize.DataValueField = "SizeID";
                    CblSize.DataBind();

                }
            }
        }

        protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlSubCategory.SelectedIndex!=0)
            {
                ddlGenre.Enabled = true;
            }
        }
    }
}