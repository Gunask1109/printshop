using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft.Reporting.WebForms;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getdetails();
    }

    private void getdetails()
    {
        try
        {
            string name = "'" + TextBox1.Text + "'";
                
               
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
            SqlDataAdapter da = new SqlDataAdapter("select CustomerName,Email,PhoneNo,ProductCode1,ProductName1,Quantity1,ProductCode2,ProductName2,Quantity2,ProductCode3,ProductName3,Quantity3,ProductCode4,ProductName4,Quantity4,ProductCode5,ProductName5,Quantity5,ProductCode6,ProductName6,Quantity6 from OrderDetails1 where CustomerName =" + name + "", conn);

            DataTable dt = new DataTable();
            da.Fill(dt);

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1",dt));
            ReportViewer1.LocalReport.Refresh();

           
           // com.ExecuteNonQuery();
            //Response.Redirect("contact.aspx");
            //lblregisteration.Visible = true;



            // lblregisteration.Text = "Registration is successful";

            //Response.Redirect("login.aspx");

            //Response.Write("Registration is successful");



            // Response.Write(SendMail("mukeshnadar@hotmail.com", "guna.sekar7045@gmail.com", "", "abc", "orderplaced"));
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
   

}