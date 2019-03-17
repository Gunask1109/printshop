<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title> Register Form </title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="styles/reg.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
<!--//online-fonts -->
</head>
<body>
<div class="header">
	<h1>Register Form</h1>
</div>
<div class="w3-main">
	<!-- Main -->
    <asp:Label ID="lblregisteration" runat="server" BackColor="White" Visible="false"></asp:Label>
	<div class="about-bottom main-agile book-form">
		<div class="alert-close"> </div>
		<h2 class="tittle">Register Here</h2>
		<form id="form1" runat="server">
			<div class="form-date-w3-agileits">
				<label> User Name 
                <asp:TextBox ID="TextBoxUN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                    ControlToValidate="TextBoxUN" ForeColor="Red" BorderColor="Black"></asp:RequiredFieldValidator>
                </label>
				&nbsp;<label>Email 
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                    ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
				&nbsp;<label>Password 
                <asp:TextBox ID="TextBoxPass" runat="server" 
                     TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" 
                    ControlToValidate="TextBoxPass" ForeColor="Red"></asp:RequiredFieldValidator>

                </label>
				&nbsp;<label>CONFIRM Password 
                <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" 
                    ></asp:TextBox>
                
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" 
                    ControlToValidate="TextBoxRPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password Is Incorrect" ValueToCompare="TextBoxPass" 
                    ControlToValidate="TextBoxRPass" ForeColor="Red"></asp:CompareValidator>--%>

                          </label>
               
				&nbsp;</div>
			<div class="make wow shake">
				  <asp:Button ID="Button1" runat="server"  Text="Submit" Width="124px" 
                      onclick="Button1_Click" />
&nbsp;</div>
		</form>
	</div>

	<!-- //Main -->
</div>
<!-- footer -->
<div class="footer-w3l">
	<p>&copy; 2019  Register Form. All rights reserved by <a href="home.aspx">JJ-Printers</a></p>
</div>
<!-- //footer -->
<!-- js-scripts-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script>		    $(document).ready(function (c) {
		        $('.alert-close').on('click', function (c) {
		            $('.main-agile').fadeOut('slow', function (c) {
		                $('.main-agile').remove();
		            });
		        });
		    });
	</script>
<!-- //js-scripts-->
</body>
</html>
