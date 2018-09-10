<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Sunset_Rentals_Web_App.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                                <a href="Partner Companies.aspx" class="dropdown-toggle" data-toggle="dropdown">Partner Companies<b class="caret"></b></a>
                                 <ul class="dropdown-menu">
                                     <li role="separator" class="divider"></li>
                                      <li><a href="Partner Companies.aspx">Ministry of Housing</a></li>
                                 <li><a href="Partner Companies.aspx">Bamburi Cement</a></li>
                                 <li><a href="Partner Companies.aspx">HFC</a></li>
                                 <li><a href="Partner Companies.aspx">Rental Association</a></li>
                                 </ul>
                           </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Houses<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                  <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Rooms</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Single Room</a></li>
                                 <li><a href="#">One Bed Room</a></li>
                                 <li><a href="#">Two Bed Room</a></li>
                                 <li><a href="#">Three Bed Room</a></li>
                                  <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Affordable Category</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="#">Tents</a></li>
                                 <li><a href="#">Mabati Rooms</a></li>
                                <li><a href="#">Container Rooms</a></li>
                                  <li role="separator" class="divider"></li>
                                  <li class="dropdown-header">Special Category</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="#">Bungalow</a></li>
                                 <li><a href="#">Massionate</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Events</a></li>
                        <li><a href="#">Testimonials</a></li>
                           <li><a href="Sign Up.aspx">Sign Up</a></li>
                          <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                    <br />
                </div>
            </div>
        </div>
        </div>
        </div>

        <div class="container">
            <div class="form-horizontal">
                <h2>Recover your forgotten Password</h2>
                <hr />
                <h4>Please enter your email address we will send you the instructions to reset your password</h4>
                <div class="form-group">
                    <asp:Label ID="Lblemail" runat="server" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbEmailid" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please enter your Email Address" ControlToValidate="tbEmailid"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btPassRec" runat="server" CssClass="btn btn-default" Text="Send" OnClick="btPassRec_Click" />
                        <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

    </form>
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
