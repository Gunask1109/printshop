using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Admin_examples_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            //conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
            SqlCommand com = new SqlCommand("select username,emailid,password  from Registeration where username ='" + Session["Login"] + "'", conn);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
            conn.Close();
        }
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
        conn.Open();
        // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
        string emailid = "'"+TextBox3.Text+"'";
        string pwd = "'" + TextBox4.Text + "'";

        SqlCommand com = new SqlCommand("update Registeration set emailid = " + emailid + " , Password = " + pwd + " where username ='" + Session["Login"] + "'", conn);
        com.ExecuteNonQuery();
        Response.Redirect("update.aspx");
        conn.Close();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}