using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
        //conn.Open();
        // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
        SqlCommand com = new SqlCommand("select username,emailid,password  from Registeration where username ='"+ Session["Login"] +"'", conn);
        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TextBox1.Text = ds.Tables[0].Rows[0].ToString();
        //TextBox3.Text = ds.Tables[0].Rows[1].ToString();
        //TextBox4.Text = ds.Tables[0].Rows[2].ToString();
    }
}