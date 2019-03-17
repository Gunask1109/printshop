using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;


public partial class Registeration : System.Web.UI.Page
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
            SqlCommand com = new SqlCommand("insert into Registeration (username,emailid,password,createdby,createddate) values (@username,@emailid,@password,@createdby,@createddate)", conn);
            com.Parameters.AddWithValue("@username", TextBoxUN.Text);
            com.Parameters.AddWithValue("@emailid", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@createdby", "System date");
            com.Parameters.AddWithValue("@createddate", System.DateTime.Now);
            com.ExecuteNonQuery();
           // Response.Redirect("Manager.aspx");
            lblregisteration.Visible = true;

            

            lblregisteration.Text = "Registration is successful";
            TextBoxUN.Text = "";
            TextBoxEmail.Text = "";
            TextBoxPass.Text = "";
            TextBoxRPass.Text = "";
            Response.Redirect("login.aspx");

            //Response.Write("Registration is successful");

           SendEmail("Test");

           // Response.Write(SendMail("mukeshnadar@hotmail.com", "guna.sekar7045@gmail.com", "", "abc", "orderplaced"));
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    public static void SendEmail(string emailbody)
    {
        // Specify the from and to email address
        MailMessage mailMessage = new MailMessage
            ("guna.sekar7045@gmail.com", "mukeshnadar@hotmail.com");
        // Specify the email body
        mailMessage.Body = emailbody;
        // Specify the email Subject
        mailMessage.Subject = "Exception";

        // No need to specify the SMTP settings as these 
        // are already specified in web.config
        SmtpClient smtpClient = new SmtpClient();
        // Finall send the email message using Send() method
        smtpClient.Send(mailMessage);
    } 

    public static void SendEmail1(string emailbody)
    {
        // Specify the from and to email address
        MailMessage mailMessage = new MailMessage("guna.sekar7045@gmail.com", "mukeshnadar@hotmail.com");
        // Specify the email body
        mailMessage.Body = emailbody;
        // Specify the email Subject
        mailMessage.Subject = "Exception";

        // Specify the SMTP server name and post number
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        // Specify your gmail address and password
        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "guna.sekar7045@gmail.com",
            Password = "guna1190"
        };
        // Gmail works on SSL, so set this property to true
        smtpClient.EnableSsl = true;
        // Finall send the email message using Send() method
        smtpClient.Send(mailMessage);
    } 


  

    public string SendMail(string toList, string from, string ccList,
    string subject, string body)
    {

        MailMessage message = new MailMessage();
        SmtpClient smtpClient = new SmtpClient();
        string msg = string.Empty;
        try
        {
            MailAddress fromAddress = new MailAddress(from);
            message.From = fromAddress;
            message.To.Add(toList);
            if (ccList != null && ccList != string.Empty)
                message.CC.Add(ccList);
            message.Subject = subject;
            message.IsBodyHtml = true;
            message.Body = body;
            // We use gmail as our smtp client
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = true;
            smtpClient.Credentials = new System.Net.NetworkCredential(
                "guna.sekar7045@gmail.com", "guna1190");

            smtpClient.Send(message);
            msg = "Successful<BR>";
        }
        catch (Exception ex)
        {
            msg = ex.Message;
        }
        return msg;
    }
}