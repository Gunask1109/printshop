﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        put id
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <br />
  


        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        <br />
        
              
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" 
            Height="300px" >
        </rsweb:ReportViewer>
        <br />
        <a class="dropdown-item" onclick="login()"> <asp:Image runat="server" ID="img" 
            ImageUrl="~/images/print.png" Height="26px" Width="68px" /> </a>


       
       





<script>
    function login() {
        window.print();
    }
</script>

    
    </div>
    </form>
</body>
</html>
