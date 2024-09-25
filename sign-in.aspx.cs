using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_email.Text == "Admin@gmail.com" && txt_password.Text == "Admin")
            {
                Response.Redirect("Admin_page.aspx");
            }
            else if (txt_email.Text != "" && txt_password.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_login", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_email.Text;
                SqlParameter p2 = new SqlParameter("@password", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txt_password.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int i = ds.Tables[0].Rows.Count;
                if (i > 0)
                {
                    Response.Write("<script>alert('login in success');window.location = 'index.aspx';</script>");
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("try again later");
                }
                con.Close();

            }

            else
                Response.Write("Fill the necessary credentials");



            } 
    }
}