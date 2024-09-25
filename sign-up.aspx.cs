using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_register", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("@name", SqlDbType.VarChar);
            cmd.Parameters.Add(p1).Value = txt_name.Text;
            SqlParameter p2 = new SqlParameter("@email", SqlDbType.VarChar);
            cmd.Parameters.Add(p2).Value = txt_email.Text;
            SqlParameter p3 = new SqlParameter("@password", SqlDbType.VarChar);
            cmd.Parameters.Add(p3).Value = txt_password.Text;
            SqlParameter p4 = new SqlParameter("@cpassword", SqlDbType.VarChar);
            cmd.Parameters.Add(p4).Value = confirm_password.Text;

            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                Response.Write("Registered Successfully");
            }
            else
                Response.Write("try again later");
        }
    }
}