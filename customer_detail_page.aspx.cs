using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class customer_detail_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_fname.Text != "" &&
            txt_lname.Text != "" &&
            txt_email.Text != "" &&
            txt_ph.Text != "" &&
            txt_address.Text != "" &&
            txt_city.Text != "" &&
            txt_state.SelectedIndex != 0 &&
            txt_zip.Text != ""
            )
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_customers", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@FirstName", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_fname.Text;
                SqlParameter p2 = new SqlParameter("@LastName", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txt_lname.Text;
                SqlParameter p3 = new SqlParameter("@Email", SqlDbType.VarChar);
                cmd.Parameters.Add(p3).Value = txt_email.Text;
                SqlParameter p4 = new SqlParameter("@Phone", SqlDbType.VarChar);
                cmd.Parameters.Add(p4).Value = txt_ph.Text;
                SqlParameter p5 = new SqlParameter("@Address", SqlDbType.VarChar);
                cmd.Parameters.Add(p5).Value = txt_address.Text;
                SqlParameter p6 = new SqlParameter("@City", SqlDbType.VarChar);
                cmd.Parameters.Add(p6).Value = txt_city.Text;
                SqlParameter p7 = new SqlParameter("@State", SqlDbType.VarChar);
                cmd.Parameters.Add(p7).Value = txt_state.Text;
                SqlParameter p8 = new SqlParameter("@ZipCode", SqlDbType.VarChar);
                cmd.Parameters.Add(p8).Value = txt_zip.Text;
                SqlParameter p9 = new SqlParameter("@gender", SqlDbType.VarChar);
                cmd.Parameters.Add(p9).Value = Radio_gender.SelectedValue.ToString();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Customer Added Successfully");
                    txt_fname.Text = "";
                    txt_lname.Text = "";
                    txt_email.Text = "";
                    txt_ph.Text = "";
                    txt_address.Text = "";
                    txt_city.Text = "";
                    txt_state.SelectedIndex = 0;
                    txt_zip.Text = "";
                    Radio_gender.Items.Clear();
                    success_message.Visible = true;
                }
                else
                {
                    Response.Write("Failed To Add a New Customer");
                    success_message.Visible = false;
                }
                con.Close();
            }
            else 
            {
                Response.Write("please prove all the details");
            }
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_Show_customers", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            data_grid_Customers.DataSource = ds.Tables[0];
            data_grid_Customers.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txt_fname.Text != "" &&
            txt_lname.Text != "" &&
            txt_email.Text != "" &&
            txt_ph.Text != "" &&
            txt_address.Text != "" &&
            txt_city.Text != "" &&
            txt_state.SelectedIndex != 0 &&
            txt_zip.Text != ""
            )
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_edit_customers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@FirstName", SqlDbType.VarChar);
            cmd.Parameters.Add(p1).Value = txt_fname.Text;
            SqlParameter p2 = new SqlParameter("@LastName", SqlDbType.VarChar);
            cmd.Parameters.Add(p2).Value = txt_lname.Text;
            SqlParameter p3 = new SqlParameter("@Email", SqlDbType.VarChar);
            cmd.Parameters.Add(p3).Value = txt_email.Text;
            SqlParameter p4 = new SqlParameter("@Phone", SqlDbType.VarChar);
            cmd.Parameters.Add(p4).Value = txt_ph.Text;
            SqlParameter p5 = new SqlParameter("@Address", SqlDbType.VarChar);
            cmd.Parameters.Add(p5).Value = txt_address.Text;
            SqlParameter p6 = new SqlParameter("@City", SqlDbType.VarChar);
            cmd.Parameters.Add(p6).Value = txt_city.Text;
            SqlParameter p7 = new SqlParameter("@State", SqlDbType.VarChar);
            cmd.Parameters.Add(p7).Value = txt_state.Text;
            SqlParameter p8 = new SqlParameter("@ZipCode", SqlDbType.VarChar);
            cmd.Parameters.Add(p8).Value = txt_zip.Text;
            SqlParameter p9 = new SqlParameter("@gender", SqlDbType.VarChar);
            cmd.Parameters.Add(p9).Value = Radio_gender.SelectedValue.ToString();

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Customer details edited Successfully");
                txt_fname.Text = "";
                txt_lname.Text = "";
                txt_email.Text = "";
                txt_ph.Text = "";
                txt_address.Text = "";
                txt_city.Text = "";
                txt_state.SelectedIndex = 0;
                txt_zip.Text = "";
                Radio_gender.Items.Clear();
                success_message.Visible = true;
            }
            else
            {
                Response.Write("Failed To edit a New Customer");
                success_message.Visible = false;
            }
            con.Close();
        }
            else 
            {
                Response.Write("please prove all the crt details");
            }
}

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (txt_email.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_Customer_delete", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_email.Text.Trim();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Customer detail deleted successfully");
                }
                else
                {
                    Response.Write("Failed To delete Customer deteail ");
                }
                con.Close();
            }
            else
            {
                Response.Write("Fill The Mail id");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_Show_customers", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            data_grid_Customers.DataSource = ds.Tables[0];
            data_grid_Customers.DataBind();
            con.Close();
            Response.Write("Data Refreshed SuccessFully!");
        }
    }
}