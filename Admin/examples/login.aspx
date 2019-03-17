<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
<title>Trendy Flat Login Form A Responsive Widget Template :: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Trendy Flat Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!--font-awesome-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--//font-awesome-css-->
<!-- css files -->
<link href="login.css" rel="stylesheet" type="text/css" media="all">
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900iSlabo+27px&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!--//online-fonts -->
<body>
<!--header-->
<div class="agileheader">
	<h1> Login Form</h1>
</div>
<!--//header-->
<!--main-->
<section class="main-w3l">
	<div class="w3layouts-main">
		<h2>Login Now</h2>
			<div class="w3ls-form">
				<form id="form1" runat="server">
					<div class="email-w3ls">
                    <%--<tr>
                    <td>
                    <asp:textbox id="txtemail" runat="server"></asp:textbox>
                    </td>
                    </tr>--%>
						<asp:textbox type="username" name="username" placeholder="username" id="username" runat="server"></asp:textbox>
						<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
					</div>
                   
                    	
					<div class="w3ls-password">
						<asp:textbox type="password" name="password" placeholder="Password" required="" id="password" runat="server"></asp:textbox>
						<span class="icon3"><i class="fa fa-lock" aria-hidden="true"></i></span>
					</div>	
					<span><input type="checkbox" />Remember Me</span>
					<h6><a href="#">Forgot Password?</a></h6>
						<div class="clear"></div>
						<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Login" />
&nbsp;</form>
			</div>	
			<div class="w3ls-bottom">
				<p>Don't Have an Account ?<a href="Registeration.aspx">Register Now</a></p>
			</div>	
	</div>	
</section>
<!--//main-->
<!--footer-->
<div class="footer-w3l">
	<p>&copy; 2019 Login Form. All rights reserved by <a href="home.aspx">JJ-Printer's</a></p>
</div>
<!--//footer-->

</body>
</html>
