using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;
using System.Data.SqlTypes;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class forgot_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_email", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_email.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int i = ds.Tables[0].Rows.Count;
                if (i > 0)
                {
                    string from, to, pass, messagebody, randomcode;
                    Random r = new Random();
                    randomcode = (r.Next(999999)).ToString();
                    MailMessage message = new MailMessage();
                    from = "venkatramanan39762@gmail.com";
                    to = txt_email.Text.ToString();
                    pass = "qdms vwmg yxcr edfn";
                    messagebody = "Your OTP Verification Code is:  " + randomcode;
                    message.To.Add(to);
                    message.From = new MailAddress(from);
                    message.Body = messagebody;
                    message.Subject = "sri Amman Engineering verification Code";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                    smtp.EnableSsl = true;
                    smtp.Port = 587;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, pass);
                    
                        smtp.Send(message);
                        Response.Write("OTP Sent SuccessFully");
                    
                    Session["randomcode"] = randomcode;
                    Session["reg_email"] = txt_email.Text.ToString();
                }
                else
                {
                    Response.Write("Email Mismatch Please Enter the Registered Email");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txt_otp.Text == Session["randomcode"].ToString())
            {
                Response.Write("Otp Verified Successfully");
                Response.Redirect("set_password.aspx");
            }
            else
            {
                Response.Write("Invalid OTP");
            }

        }
    }
}