<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderform1.aspx.cs" Inherits="orderform1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!DOCTYPE HTML>
<html lang="zxx">
   <head>
      <title>Item Order Form Responsive Widget Template :: w3layouts</title>
      <!-- Meta tag Keywords -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta charset="UTF-8" />
      <meta name="keywords" content="Item Order Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
         />
      <script>
          addEventListener("load", function () {
              setTimeout(hideURLbar, 0);
          }, false);

          function hideURLbar() {
              window.scrollTo(0, 1);
          }
      </script>
      <!-- Meta tag Keywords -->
      <!-- css files -->
      <link rel="stylesheet" href="styles/main2.css" type="text/css" media="all" />
      <!-- Style-CSS -->
      <!-- Font-Awesome-Icons-CSS -->
      <!-- //css files -->
      <!-- web-fonts -->
      <link href="//fonts.googleapis.com/css?family=Ubuntu:400,500" rel="stylesheet">
      <!-- //web-fonts -->
   </head>
   <body>
      <!-- title -->
      <h1 class="header-w3ls">Item Order Form</h1>
      <!-- //title -->
      <!-- content -->
      <div class="porduct-order-agile">
          <form id="form1" runat="server">
            <div class="form-group">
               <p>Name</p>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
&nbsp;</div>
            <div class="form-group">
               <p>Email </p>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;</div>
            <div class="form-group">
               <p>Phone</p>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
&nbsp;</div>
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Address</p>
                   <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
&nbsp;</div>
               <div class="form-left-to-w3l">
                  <p>Street Address</p>
                   <asp:TextBox ID="txtstreetaddress" runat="server"></asp:TextBox>
&nbsp;</div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>City</p>
                   <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
&nbsp;<div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <p>State</p>
                   <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
&nbsp;<div class="clear"></div>
               </div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Pin Code</p>
                  <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
                  &nbsp;<div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <p>Select Country</p>
                  <asp:DropDownList ID="ddlCountry" runat="server" class="form-control buttom" 
                       onselectedindexchanged="ddlCountry_SelectedIndexChanged">
                  <asp:ListItem Text="----Select Country---"></asp:ListItem>
                  <asp:ListItem  Text="India"></asp:ListItem>
                  <asp:ListItem  Text="Australia"></asp:ListItem>
                  </asp:DropDownList>
                 <%-- <select class="form-control buttom" id="ddlcountry">--%>
                    <%-- <option value="">Canada
                     </option>
                     <option >India</option>
                     <option value="category2">Oman</option>
                     <option value="category1">Australia</option>
                     <option >America</option>
                     <option >London</option>
                     <option >Goa</option>
                     <option >Canada</option>
                     <option >Srilanka</option>--%>
                     <%--
               </select>--%>
               </div>
            </div>
            <div class="order-list">
               <p>Order 1</p>
               <div class="main">
                  <div class="form-order">
                      <asp:DropDownList ID="ddlprodcode1" runat="server" class="form-control buttom" 
                          onselectedindexchanged="ddlprodcode1_SelectedIndexChanged">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodname1" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Product---"></asp:ListItem>
                 <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlquantity1" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
            </div>
            <div class="order-list">
               <p>Order 2</p>
               <div class="main">
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodcode2" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodname2" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Product---"></asp:ListItem>
                  <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                    <asp:DropDownList ID="ddlquantity2" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
            </div>
            <div class="order-list">
               <p>Order 3</p>
               <div class="main">
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodcode3" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                   </asp:DropDownList>
                  </div>
                  <div class="form-order">
                    <asp:DropDownList ID="ddlprodname3" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Prooduct---"></asp:ListItem>
                  <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlquantity3" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
   
			</div>
            <asp:Button ID="btnaddproduct" runat="server" Text="wish to add more product" 
                onclick="btnaddproduct_Click" />
            <asp:Panel ID="orderpanel" runat="server" Visible="false">
             <div class="order-list">
               <p>Order 4</p>
               <div class="main">
                  <div class="form-order">
                      <asp:DropDownList ID="ddlprodcode4" runat="server" class="form-control buttom" 
                          onselectedindexchanged="ddlprodcode1_SelectedIndexChanged">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodname4" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Product---"></asp:ListItem>
                 <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlquantity4" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
            </div>
            <div class="order-list">
               <p>Order 5</p>
               <div class="main">
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodcode5" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodname5" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Product---"></asp:ListItem>
                  <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                    <asp:DropDownList ID="ddlquantity5" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
            </div>
            <div class="order-list">
               <p>Order 6</p>
               <div class="main">
                  <div class="form-order">
                     <asp:DropDownList ID="ddlprodcode6" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Type---"></asp:ListItem>
                  <asp:ListItem  Text="Type1"></asp:ListItem>
                  <asp:ListItem  Text="Type2"></asp:ListItem>
                  <asp:ListItem  Text="Type3"></asp:ListItem>
                  <asp:ListItem  Text="Type4"></asp:ListItem>
                  <asp:ListItem  Text="Type5"></asp:ListItem>
                  <asp:ListItem  Text="Type6"></asp:ListItem>
                   </asp:DropDownList>
                  </div>
                  <div class="form-order">
                    <asp:DropDownList ID="ddlprodname6" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Prooduct---"></asp:ListItem>
                  <asp:ListItem  Text="SINGLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="DOUBLE SIDED BUSINESS CARD"></asp:ListItem>
                  <asp:ListItem  Text="TEMPLATED TYPE CARD"></asp:ListItem>
                  <asp:ListItem  Text="AGS LABEL STICKER"></asp:ListItem>
                  <asp:ListItem  Text="TRADITIONAL PAPER CARD"></asp:ListItem>
                  <asp:ListItem  Text="SLIM CARD"></asp:ListItem>
                          
                  </asp:DropDownList>
                  </div>
                  <div class="form-order">
                     <asp:DropDownList ID="ddlquantity6" runat="server" class="form-control buttom">
                  <asp:ListItem  Text="----Select Quantity---"></asp:ListItem>
                  <asp:ListItem  Text="1"></asp:ListItem>
                  <asp:ListItem  Text="2"></asp:ListItem>
                  <asp:ListItem  Text="3"></asp:ListItem>
                  <asp:ListItem  Text="4"></asp:ListItem>
                  <asp:ListItem  Text="5"></asp:ListItem>
                  <asp:ListItem  Text="6"></asp:ListItem>
                  <asp:ListItem  Text="7"></asp:ListItem>
                  <asp:ListItem  Text="8"></asp:ListItem>
                  <asp:ListItem  Text="9"></asp:ListItem>
                  <asp:ListItem  Text="10"></asp:ListItem>
                  <asp:ListItem  Text="11"></asp:ListItem>
                  <asp:ListItem  Text="12"></asp:ListItem>
                  <asp:ListItem  Text="13"></asp:ListItem>
                  <asp:ListItem  Text="14"></asp:ListItem>
                  <asp:ListItem  Text="15"></asp:ListItem>
                  <asp:ListItem  Text="16"></asp:ListItem>
                  <asp:ListItem  Text="17"></asp:ListItem>
                  <asp:ListItem  Text="18"></asp:ListItem>
                  <asp:ListItem  Text="19"></asp:ListItem>
                  <asp:ListItem  Text="20"></asp:ListItem>
                  </asp:DropDownList>
                  </div>
               </div>
   
			</div>
            </asp:Panel>
            <br />
  Date: <input type="date" name="bday" id="date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                            <asp:Button ID="Button1" runat="server" Height="60px" onclick="Button1_Click" 
                style="margin-left: 88px; margin-bottom: 4px;" Text="Submit" Width="227px" 
                    BackColor="#FF6600" ForeColor="Black" BorderColor="Black" />
			</form>
			</div>

			
			
			
			
			
			
			
			
			</div>
         </form>
      </div>
      <!-- copyright -->
      <div class="copy">
         <p>&copy; 2018 Item Order Form. All rights reserved by
            <a href="#home.aspx">JJ-Printers</a>
         </p>
      </div>
      <!-- //copyright -->
   </body>
</html>


