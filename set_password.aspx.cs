using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class set_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_password.Text != "" && txt_cpassword.Text != "")
                {
                    if (txt_password.Text == txt_cpassword.Text)
                    {

                        SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                        con.Open();
                        SqlCommand cmd = new SqlCommand("sp_Update_Password", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        SqlParameter p1 = new SqlParameter("@email", SqlDbType.VarChar);
                        cmd.Parameters.Add(p1).Value = Session["reg_email"];
                        SqlParameter p2 = new SqlParameter("@password", SqlDbType.VarChar);
                        cmd.Parameters.Add(p2).Value = txt_password.Text;
                        SqlParameter p3 = new SqlParameter("@Cpassword", SqlDbType.VarChar);
                        cmd.Parameters.Add(p3).Value = txt_cpassword.Text;
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Response.Write("Password Updated Successfull");
                            Response.Redirect("sign-in.aspx");
                        }
                        else
                        {
                            Response.Write("Password Updation Failed");
                        }
                        con.Close();
                    }

                }
                else
                {
                    Response.Write("Fill All the Data");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}