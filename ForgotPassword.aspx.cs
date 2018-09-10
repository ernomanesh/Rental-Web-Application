using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace Sunset_Rentals_Web_App
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btPassRec_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["SunsetRentalsDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Email= '"+tbEmailid.Text+"' ",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count!=0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('"+myGUID+"','"+Uid+"',getdate())",con);
                    cmd1.ExecuteNonQuery();

                    //send email
                    string ToEmailAddress = dt.Rows[0][3].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody = "Hi"+Username+ ",<br/><br/> Click the link below to reset yor password <br/><br/> http://localhost:60378/RecoverPassword.aspx?Uid="+myGUID;
                    MailMessage PassRecMail = new MailMessage("youremail@gmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    SmtpClient SMTP = new SmtpClient("smtp.gmailcom", 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "yourusername@gmail.com",
                        Password = "YourGmailPassword"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);

                    lblPassRec.Text=("Check your email to reset your password");
                    lblPassRec.ForeColor =Color.ForestGreen;
                }
                else
                {
                    lblPassRec.Text = ("Sorry,your email address DOES NOT exist in our database");
                    lblPassRec.ForeColor = Color.DarkRed;
                }
            }
        }
    }
}