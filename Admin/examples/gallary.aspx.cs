using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_examples_gallary : System.Web.UI.Page
{
    int statusflag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            conn.Open();
            string productcode = "'" + TextBox1.Text + "'";

            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
            SqlCommand com = new SqlCommand("SELECT top 1 [DealerName] ,[productcode] ,[productname] ,sum([quantity]) as quantity,mobileno FROM [MiniProject].[dbo].[productdetails] where Is_Active = 1  and productcode =  " + productcode + " group by DealerName, productcode, [productname],mobileno order by DealerName", conn);


            //SqlCommand com = new SqlCommand("SELECT [DealerName] ,[productcode] ,[productname] ,sum([quantity]) as quantity FROM [MiniProject].[dbo].[productdetails] group by DealerName, productcode, [productname] order by DealerName", conn);

            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            TextBox2.Text = ds.Tables[0].Rows[0]["productcode"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["productname"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["quantity"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["DealerName"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["mobileno"].ToString();

           statusflag = 1;
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";

            SqlCommand com = new SqlCommand("insert into productdetails (DealerName,productcode,productname,quantity,createddate,createdby,modifieddate,modifiedby,mobileno,Is_Active) values (@dealername,@productcode,@productname,@quantity,@createddate,@createdby,@modifieddate,@modifiedby,@mobileno,@Is_Active)", conn);
            com.Parameters.AddWithValue("@dealername", TextBox5.Text);
            com.Parameters.AddWithValue("@productcode", TextBox2.Text);
            com.Parameters.AddWithValue("@productname", TextBox3.Text);

            com.Parameters.AddWithValue("@quantity", TextBox6.Text);
            com.Parameters.AddWithValue("@createddate", System.DateTime.Now);
            com.Parameters.AddWithValue("@createdby", "System");
            com.Parameters.AddWithValue("@modifieddate", System.DateTime.Now);
            com.Parameters.AddWithValue("@modifiedby", "System date");
            com.Parameters.AddWithValue("@mobileno", TextBox4.Text);
            com.Parameters.AddWithValue("@Is_Active", "1");
            com.ExecuteNonQuery();
            Response.Redirect("formsubmit.aspx");
            // lblregisteration.Visible = true;



            // lblregisteration.Text = "Registration is successful";
             conn.Close();
           
                //SqlCommand com = new SqlCommand("update productdetails set [productcode] = " + TextBox2.Text + ",[productname] = " + TextBox3.Text + ",mobileno = " + TextBox4.Text + ",quantity = " + TextBox6.Text + ", [modifieddate] = @modifieddate where quantity in quantity in (select max(quantity) from productdetails) and productcode = " + TextBox2.Text + "", conn);
                //com.Parameters.AddWithValue("@modifieddate", System.DateTime.Now);
                ////com.Parameters.AddWithValue("@modifiedby", "System date");
                //com.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand com = new SqlCommand("update productdetails set Is_Active = 0 where productcode = '" + TextBox2.Text + "'", conn);
        com.Parameters.AddWithValue("@modifieddate", System.DateTime.Now);
        //com.Parameters.AddWithValue("@modifiedby", "System date");
        com.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("formsubmit.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand com = new SqlCommand("update productdetails set [productcode] = '" + TextBox2.Text + "' ,[productname] = '" + TextBox3.Text + "',mobileno = '" + TextBox4.Text + "',quantity = '" + TextBox6.Text + "', [modifieddate] = @modifieddate where  productcode = " + TextBox2.Text + "", conn);
        com.Parameters.AddWithValue("@modifieddate", System.DateTime.Now);
        //com.Parameters.AddWithValue("@modifiedby", "System date");
        com.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("formsubmit.aspx");
    }
}