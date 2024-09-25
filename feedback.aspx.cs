using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
                string from, to, pass, messagebody;
                MailMessage message = new MailMessage();
                from = "venkatramanan39762@gmail.com";
                to = "nandhagopal0143@gmail.com";
                pass = "qdms vwmg yxcr edfn";
                messagebody = "customer Name "+uname.Text.ToString() + "; Phone Number: " + phone.Text + "; Satification (yes/no): " + Radio_feedback.SelectedValue + "; Feedback: " + "'" + msg.Text + "'";
                message.To.Add(to);
                message.From = new MailAddress(from);
                message.Body = messagebody;
                message.Subject = "sri Amman Engineering Feedback";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.EnableSsl = true;
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, pass);

                smtp.Send(message);
                Response.Write("feedback Sent SuccessFully");
                  }
        
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}