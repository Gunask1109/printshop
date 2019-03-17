using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_examples_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";

            SqlCommand com = new SqlCommand("insert into productdetails (DealerName,productcode,productname,quantity,createddate,createdby,modifieddate,modifiedby,mobileno,Is_Active) values (@dealername,@productcode,@productname,@quantity,@createddate,@createdby,@modifieddate,@modifiedby,@mobileno,@Is_Active)", conn);
            com.Parameters.AddWithValue("@dealername", TextBox1.Text);
            com.Parameters.AddWithValue("@productcode", TextBox2.Text);
            com.Parameters.AddWithValue("@productname", TextBox3.Text);

            com.Parameters.AddWithValue("@quantity", TextBox5.Text);
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
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}