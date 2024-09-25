using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class Purcase_detail_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_purchase_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@customer_name", SqlDbType.VarChar);
            cmd.Parameters.Add(p1).Value = Txt_item_name.Text;
            SqlParameter p2 = new SqlParameter("@product_id", SqlDbType.VarChar);
            cmd.Parameters.Add(p2).Value = Txt_purchase_id.Text;
            SqlParameter p3 = new SqlParameter("@date", SqlDbType.VarChar);
            cmd.Parameters.Add(p3).Value = txt_date.Text;
            SqlParameter p4 = new SqlParameter("@product_Name", SqlDbType.VarChar);
            cmd.Parameters.Add(p4).Value = txt_product_name.Text;
            SqlParameter p5 = new SqlParameter("@Discount", SqlDbType.VarChar);
            cmd.Parameters.Add(p5).Value = txt_discount.Text;
            SqlParameter p6 = new SqlParameter("@Amount", SqlDbType.VarChar);
            cmd.Parameters.Add(p6).Value =txt_amount.Text;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("product Added Successfully");
                Txt_item_name.Text = "";
                Txt_purchase_id.Text = "";
                txt_date.Text = "";
                txt_product_name.Text = "";
                txt_discount.Text = "";
                txt_amount.Text = "";
            }
            else
            {
                Response.Write("Failed To Add a Item");
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetch_purchase", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            data_grid_purchase.DataSource = ds.Tables[0];
            data_grid_purchase.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Txt_item_name.Text != "" && txt_date.Text != "" && txt_product_name.Text != "" && txt_discount.Text != "" && txt_amount.Text !="")
            {
                if (Txt_purchase_id.Text != "")
                {
                    SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_purchase_detail_update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@customer_name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Txt_item_name.Text.Trim();
                    SqlParameter p2 = new SqlParameter("@product_id", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Txt_purchase_id.Text.Trim();
                    SqlParameter p3 = new SqlParameter("@date", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = txt_date.Text.Trim();
                    SqlParameter p4 = new SqlParameter("@product_name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = txt_product_name.Text.Trim();
                    SqlParameter p5 = new SqlParameter("@Discount", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = txt_discount.Text.Trim();
                    SqlParameter p6 = new SqlParameter("@Amount", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = txt_amount.Text.Trim();

                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Purchase details Updated Successfully");
                        Txt_item_name.Text = "";
                        Txt_purchase_id.Text = "";
                        txt_date.Text = "";
                        txt_product_name.Text = "";
                        txt_discount.Text = "";
                        txt_amount.Text = "";

                    }
                    else
                    {
                        Response.Write("Failed To update purchase details / enter a valied stock ID");
                    }
                    con.Close();
                }
                else 
                {
                    Response.Write("Please Fill All The Valied Purchase ID !");
                }
                
            }
            else
            {
                Response.Write("Please Fill All The Data");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Txt_purchase_id.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_purchase_delete", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@purchase_id", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = Txt_purchase_id.Text.Trim();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Purchase detail data deleted successfully");
                    Txt_purchase_id.Text = "";
                }
                else
                {
                    Response.Write("Failed To delete Stock deteail data");
                }
                con.Close();
            }
            else
            {
                Response.Write("Fill The purchase id");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetch_stock", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            data_grid_purchase.DataSource = ds.Tables[0];
            data_grid_purchase.DataBind();
            con.Close();
            int i = ds.Tables[0].Rows.Count;

            if (i < 10)
            {
                txt_total_purchase.Text = "0" + i.ToString();
            }
            else { txt_total_purchase.Text = i.ToString(); }
        }

        protected void txt_discount_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}