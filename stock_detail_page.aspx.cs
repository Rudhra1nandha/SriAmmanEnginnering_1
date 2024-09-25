using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SriAmmanEngineeringAndWorks_ASPDotNet
{
    public partial class stock_detail_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Txt_item_name.Text != "" && Txt_id.Text != "" && txt_category.Text != "" && Txt_description.Text != "" && Txt_location.Text != "" )
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_stock_detail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@stock_name", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = Txt_item_name.Text;
                SqlParameter p2 = new SqlParameter("@stock_id", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = Txt_id.Text;
                SqlParameter p3 = new SqlParameter("@category", SqlDbType.VarChar);
                cmd.Parameters.Add(p3).Value = txt_category.Text;
                SqlParameter p4 = new SqlParameter("@description", SqlDbType.VarChar);
                cmd.Parameters.Add(p4).Value = Txt_description.Text;
                SqlParameter p5 = new SqlParameter("@location", SqlDbType.VarChar);
                cmd.Parameters.Add(p5).Value = Txt_location.Text;
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("product Added Successfully");
                    Txt_item_name.Text = "";
                    Txt_id.Text = "";
                    txt_category.Text = "";
                    Txt_description.Text = "";
                    Txt_location.Text = "";
                }
                else
                {
                    Response.Write("Failed To Add a Item");
                }
                con.Close();
            }
            else
            {
                Response.Write("please, fill the necessary creditiantials!");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetch_stock", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            data_grid_stockdetails.DataSource = ds.Tables[0];
            data_grid_stockdetails.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Txt_item_name.Text != "" && Txt_id.Text != "" && txt_category.Text != "" && Txt_description.Text != "" && Txt_location.Text != "" )
            {
                    SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_stock_update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@stock_name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Txt_item_name.Text.Trim();
                    SqlParameter p2 = new SqlParameter("@stock_id", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Txt_id.Text.Trim();
                    SqlParameter p3 = new SqlParameter("@category", SqlDbType.VarChar);
                    cmd.Parameters.Add(p3).Value = txt_category.Text.Trim();
                    SqlParameter p4 = new SqlParameter("@description", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = Txt_description.Text.Trim();
                    SqlParameter p5 = new SqlParameter("@location", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = Txt_location.Text.Trim();
                   
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Stock details Updated Successfully");
                    Txt_item_name.Text = "";
                    Txt_id.Text = "";
                    txt_category.Text = "";
                    Txt_description.Text = "";
                    Txt_location.Text = "";
                    }
                    else
                    {
                        Response.Write("Failed To update Stock details / enter a valied stock ID");
                    }
                con.Close();
            }
            else
            {
                Response.Write("Please Fill All The Data");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Txt_id.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source = VENKAT\\SQLEXPRESS01; Integrated Security = true; Initial Catalog = Sri_Amman_Engineering");
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_stock_delete", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@stock_id", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = Txt_id.Text.Trim();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Stock detail data deleted successfully");
                }
                else
                {
                    Response.Write("Failed To delete Stock deteail data");
                }
                con.Close();
            }
            else
            {
                Response.Write("Fill The Stock id");
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
            data_grid_stockdetails.DataSource = ds.Tables[0];
            data_grid_stockdetails.DataBind();
            con.Close();
            int i= ds.Tables[0].Rows.Count;
            Label1.Text = i.ToString();
            if (i < 10)
            {
                Label2.Text = "Stock is too Low !!!";
            }
        }
    }
}