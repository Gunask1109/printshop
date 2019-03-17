using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System;
using System.IO;

public partial class orderform3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MiniProjectConnectionString"].ConnectionString);
            conn.Open();
            // string insertQuery = "insert into UserData (UserName,Email,Password) values (@Uname ,@email ,@password)";
            SqlCommand com = new SqlCommand("insert into OrderDetails1 (CustomerName, Email, PhoneNo, Address, Street, City, State, Pincode, Country, ProductCode1, ProductName1, Quantity1, ProductCode2, ProductName2, Quantity2, ProductCode3, ProductName3, Quantity3, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy ,ProductCode4, ProductName4, Quantity4,ProductCode5, ProductName5, Quantity5,ProductCode6, ProductName6, Quantity6 ) values (@CustomerName, @Email, @PhoneNo, @Address, @Street, @City, @State, @Pincode, @Country, @ProductCode1, @ProductName1, @Quantity1, @ProductCode2, @ProductName2, @Quantity2, @ProductCode3, @ProductName3, @Quantity3, @CreatedDate, @CreatedBy, @ModifiedDate, @ModifiedBy, @ProductCode4,@ProductName4,@Quantity4,@ProductCode5,@ProductName5,@Quantity5,@ProductCode6,@ProductName6,@Quantity6)", conn);
            com.Parameters.AddWithValue("@CustomerName", txtname.Text);
            com.Parameters.AddWithValue("@Email", txtemail.Text);
            com.Parameters.AddWithValue("@PhoneNo", txtphone.Text);
            com.Parameters.AddWithValue("@Address", txtaddress.Text);
            com.Parameters.AddWithValue("@Street", txtstreetaddress.Text);
            com.Parameters.AddWithValue("@City", txtcity.Text);
            com.Parameters.AddWithValue("@State", txtstate.Text);
            com.Parameters.AddWithValue("@Pincode", txtpincode.Text);
            com.Parameters.AddWithValue("@Country", ddlCountry.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductCode1", ddlprodcode1.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName1", ddlprodname1.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity1", ddlquantity1.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductCode2", ddlprodcode2.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName2", ddlprodname2.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity2", ddlquantity2.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductCode3", ddlprodcode3.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName3", ddlprodname3.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity3", ddlquantity3.SelectedItem.Text);
            com.Parameters.AddWithValue("@CreatedDate", System.DateTime.Now);
            com.Parameters.AddWithValue("@CreatedBy", "ABC");
            com.Parameters.AddWithValue("@ModifiedDate", System.DateTime.Now);
            com.Parameters.AddWithValue("@ModifiedBy", "NULL");
            com.Parameters.AddWithValue("@ProductCode4", ddlprodcode4.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName4", ddlprodname4.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity4", ddlquantity4.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductCode5", ddlprodcode5.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName5", ddlprodname5.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity5", ddlquantity5.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductCode6", ddlprodcode6.SelectedItem.Text);
            com.Parameters.AddWithValue("@ProductName6", ddlprodname6.SelectedItem.Text);
            com.Parameters.AddWithValue("@Quantity6", ddlquantity6.SelectedItem.Text);

            com.ExecuteNonQuery();
            //Response.Redirect("contact.aspx");
            //lblregisteration.Visible = true;



            // lblregisteration.Text = "Registration is successful";

            //Response.Redirect("login.aspx");

            //Response.Write("Registration is successful");



            // Response.Write(SendMail("mukeshnadar@hotmail.com", "guna.sekar7045@gmail.com", "", "abc", "orderplaced"));
            conn.Close();
            SendMail();
            Response.Redirect("display.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlprodcode1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public void SendMail()
    {

        string productcode = "product Code = ";
        string productcode1 = ddlprodcode1.SelectedValue;

        string productname = "product name = ";
        string productname1 = ddlprodname1.SelectedValue;

        string quantity = "Quantity = ";
        string quantity1 = ddlquantity1.SelectedValue;

        string productcode2 = "product Code 2 = ";
        string productcode21 = ddlprodcode2.SelectedValue;

        string productname2 = "product name 2 = ";
        string productname21 = ddlprodname2.SelectedValue;

        string quantity2 = "Quantity 2 = ";
        string quantity21 = ddlquantity2.SelectedValue;

        string productcode3 = "product Code 3= ";
        string productcode31 = ddlprodcode3.SelectedValue;

        string productname3 = "product name 3 = ";
        string productname31 = ddlprodname3.SelectedValue;

        string quantity3 = "Quantity 3 = ";
        string quantity31 = ddlquantity3.SelectedValue;

        string productcode4 = "product Code 4 = ";
        string productcode41 = ddlprodcode4.SelectedValue;

        string productname4 = "product name 4 = ";
        string productname41 = ddlprodname4.SelectedValue;

        string quantity4 = "Quantity 4 = ";
        string quantity41 = ddlquantity4.SelectedValue;

        string productcode5 = "product Code 5 = ";
        string productcode51 = ddlprodcode5.SelectedValue;

        string productname5 = "product name 5 = ";
        string productname51 = ddlprodname5.SelectedValue;

        string quantity5 = "Quantity 5 = ";
        string quantity51 = ddlquantity5.SelectedValue;

        string productcode6 = "product Code 6 = ";
        string productcode61 = ddlprodcode6.SelectedValue;

        string productname6 = "product name 6 = ";
        string productname61 = ddlprodname6.SelectedValue;

        string quantity6 = "Quantity 6 = ";
        string quantity61 = ddlquantity6.SelectedValue;


        //string text = "<table><tr><td>EmpId</td><td>Emp name</td><td>age</td></tr><tr><td>value</td><td>value</td><td>value</td></tr></table>";
        MailMessage mail = new MailMessage();
        mail.To.Add(txtemail.Text);
        mail.From = new MailAddress("someshchopdekar99@gmail.com");
        mail.Subject = "Email using Gmail";
        string Body = "Your order has been placed";
        mail.Body = Body + "\n" + "\n" + "Customer Name =" + txtname.Text + "\n" + "Mobile No =" + txtphone.Text + "\n" + productcode + productcode1 + "\n" + productname + productname1 + "\n" + quantity + quantity1 + "\n" + "--------------" + "\n" + productcode2 + productcode21 + "\n" + productname2 + productname21 + "\n" + quantity2 + quantity21 + "\n" + "--------------" + productcode3 + productcode31 + "\n" + productname3 + productname31 + "\n" + quantity3 + quantity31 + "--------------" + "\n" + productcode4 + productcode41 + "\n" + productname4 + productname41 + "\n" + quantity4 + quantity41 + "\n" + "--------------" + "--------------" + "\n" + productcode5 + productcode51 + "\n" + productname5 + productname51 + "\n" + quantity5 + quantity51 + "\n" + "--------------" + "--------------" + "\n" + productcode6 + productcode61 + "\n" + productname6 + productname61 + "\n" + quantity6 + quantity61;

        //"order Code = '"ddlprodname1.SelectedItem.Text"'" + 
        //     "<th>order name</th>" +
        //     "<th>quantity</th>" +
        //     "<th>Your Full Name</th>" +
        //     "<th>Position in your Company</th>" +
        //     "<th>Phone Number</th>" +
        //     "<th>Email Address</th>" +
        //  "<tr/><tr>" +
        //     "<td>" + ddlprodcode1.SelectedValue + "</td>" +
        //     "<td>" + ddlprodname1.SelectedValue + "</td>" +
        //     "<td>" + ddlquantity1.SelectedValue + "</td>" +
        //     //"<td>" + FullContactName.Value + "</td>" +
        //     //"<td>" + ContactTitle.Value + "</td>" +
        //     //"<td>" + PhoneNumber.Value + "</td>" +
        //     //"<td>" + ContactEmail.Value + "</td>" +
        //  "</tr></table>";
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
            //("Gunask1117@gmail.com","Guna1117");
            ("someshchopdekar99@gmail.com", "Somesh@1234");


        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
    }

    private string CreateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("email.htm")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{fname}", ddlprodcode3.SelectedValue); //replacing Parameters

        body = body.Replace("{lname}", ddlprodcode3.SelectedValue);

        body = body.Replace("{dob}", ddlprodcode3.SelectedValue);
        body = body.Replace("{post}", ddlprodcode3.SelectedValue);
        body = body.Replace("{designation}", ddlprodcode3.SelectedValue);

        return body;

    }
    protected void btnaddproduct_Click(object sender, EventArgs e)
    {
        orderpanel.Visible = true;
        btnaddproduct.Visible = false;

    }
}

