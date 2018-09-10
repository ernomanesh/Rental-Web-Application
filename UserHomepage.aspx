﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHomepage.aspx.cs" Inherits="Sunset_Rentals_Web_App.UserHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous">
    </script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/rentaldecorations.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <script>
         $(document).ready(function myfunction() {
             $("#btnBookings").click(function myfunction() {
                 window.location.href = "RentalBookings.aspx";
             });
         });
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="navbar navbar-default navbar-fixed-top header" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span><img alt="logo" src="House Images/logo.jpg" height="30" width="100"/></span><b><span class="spa">Eden</span> ville</b></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="About Us.aspx">About Us</a></li>
                          <li><a href="Contacts.aspx">Contacts</a></li>
                           <li class="dropdown">
                              
                        <li class="dropdown">
                            <a href="HouseDetails.aspx" class="dropdown-toggle" data-toggle="dropdown">Houses<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                  <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Rooms</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="SignIn.aspx">Single Room</a></li>
                                 <li><a href="SignIn.aspx">One Bed Room</a></li>
                                 <li><a href="SignIn.aspx">Two Bed Room</a></li>
                                 <li><a href="SignIn.aspx">Three Bed Room</a></li>
                                  <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Affordable Category</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="SignIn.aspx">Tents</a></li>
                                 <li><a href="SignIn.aspx">Mabati Rooms</a></li>
                                <li><a href="SignIn.aspx">Container Rooms</a></li>
                                  <li role="separator" class="divider"></li>
                                  <li class="dropdown-header">Special Category</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="SignIn.aspx">Bungalow</a></li>
                                 <li><a href="SignIn.aspx">Massionate</a></li>
                            </ul>
                        </li>
                         <li>
                            <button id="btnBookings" class="btn btn-primary navbar-btn" type="button">
                           Rental Booking <span class="badge" id="pCount" runat="server">1</span>
                        </button>
 </li>
                         <li><a  href="RentalBookings.aspx">My Booking</a></li>
                          <li>
                               <asp:Button ID="btnSignIn" Class="btn btn-default navbar-btn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                              <asp:Button ID="btnSignOut" Class="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnSignOut_Click" />
                          </li>
                    </ul>
                    <br />
                </div>
            </div>
        </div>
        </div>
        <br /><br /><br /><br />
        <asp:Label ID="lblSucess" runat="server" CssClass="text-success"></asp:Label>
    </form>
     <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br />
    <!----footer------>
       <div id="footer" class="footer">
           <div class="container">
               <div class="row">
                   <div class="col-lg-4 col-md-4">
                       <h4><u>Contact Us</u></h4>
                       <p><i class="glyphicon glyphicon-home"></i> 123 Uperhill Road</p>
                       <p><i class="glyphicon glyphicon-envelope"></i> info@sunset Rentals.com</p>
                       <p><i class="glyphicon glyphicon-phone"></i> +254728279832 or 92329232</p>
                       <p><i class="glyphicon glyphicon-globe"></i> www.sunsetrentals.com</p>
                        <p><i class="glyphicon glyphicon-user"></i> Fax: (020)344343</p>

                   </div>
                   <div class="col-lg-4 col-md-4">
                       <h4><u>Contact Us</u></h4>
                       <p><i class="glyphicon glyphicon-pushpin"></i>About Us</p>
                        <p><i class="glyphicon glyphicon-pushpin"></i>Privacy</p>
                        <p><i class="glyphicon glyphicon-pushpin"></i>Terms & Conditions</p>
                   </div>
                   <div class="col-lg-4 col-md-4">
                       <h4><u>Stay in Touch</u></h4>
                       <p><i class="glyphicon glyphicon-globe"></i> Facebook</p>
                       <p><i class="glyphicon glyphicon-globe"></i> Twitter</p>
                      <p><i class="glyphicon glyphicon-globe"></i> Intsagram</p>
                       <p><i class="glyphicon glyphicon-globe"></i> GitHub</p>
                       <input type="email" placeholder="Subscribe for updates"/><button class="btn btn-success">Subscribe</button>
                       <p class="pull-right"><a href="#">Back to top</a></p>
                   </div>
               </div>
           </div>
           <hr />
           <p class="center">&copy Sunset Rentals Powered By Young Tech Solutions.</p>
       </div>
         <!----footer------>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script> 
</body>
</html>
