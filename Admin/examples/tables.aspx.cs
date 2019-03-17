using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_examples_tables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            refreshdata();
        } 
    }

    public void refreshdata()
    {
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
        conn.Open();
        // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
        SqlCommand com = new SqlCommand("select * from OrderDetails1", conn);

        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();

    }  
}