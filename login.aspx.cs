using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (username.Text == "Admin" && password.Text == "Admin")
            {
                Response.Redirect("~/Admin/examples/dashboard.aspx");
            }
            else
            {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            //conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
            SqlCommand com = new SqlCommand("Select username,password from Registeration WHERE username = @username and password = @password;", conn);
            com.Parameters.AddWithValue("@username", username.Text);
            com.Parameters.AddWithValue("@password", password.Text);

            Session["Login"] = username.Text;
            com.Connection = conn;
            conn.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(ds);
            conn.Close();

            bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

            if (loginSuccessful)
            {
                Console.WriteLine("Success!");
                Response.Redirect("portfolio.aspx");
            }
            else
            {
                Console.WriteLine("Invalid username or password");
            }

            conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}