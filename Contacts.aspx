<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Sunset_Rentals_Web_App.Contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Contact Us</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/rentaldecorations.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
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
                        
                          <li><a href="Sign Up.aspx">Sign Up</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

        <!-----contacts----->
        <div class="container">
            <div class="row">                 
                    <br /><br/>
                    <br /><br/>
                    <img src="House Images/contact-us.jpg" alt="bungalow1"  />
                    <h1 class="conta"><span class="spa">Get</span> in Touch</h1>
                    <hr />
                     <div class="col-lg-3">     
                    <p><i class="glyphicon glyphicon-map-marker"></i></p>
                    <h3 class="contau">Visit Us</h3>
                    <p>Uperhill Road,NHIF Building,2nd Floor</p>
                </div>
                 <div class="col-lg-3">     
                    <p><i class="glyphicon glyphicon-phone"></i></p>
                    <h3 class="contau">Our Contacts</h3>
                    <p>PO BOX 123-00100 or +2547382892 <br /> 33434343</p>
                </div>
                 <div class="col-lg-3">     
                    <p><i class="glyphicon glyphicon-envelope"></i></p>
                    <h3 class="contau">E-Mail Us</h3>
                    <p>Info@sunsetrentals.gmail.com or Info@sunsetrentals.yahoo.com </p>
                </div>
                 <div class="col-lg-3">     
                    <p><i class="glyphicon glyphicon-globe"></i></p>
                    <h3 class="contau">Our Website</h3>
                    <p>http://www.sunsetrentals.com</p>
                </div>
                <br />              
            </div>
        </div>
        <!-----contacts----->
        <div class="col-lg-12">
            <hr />
            <h1 class="conta">Map Specific Location</h1>
            <h3><i class="glyphicon glyphicon-refresh contau center">Please ensure you have an internet access to load the map!!!!!!!!!!!</i></h3>
            <hr />
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.840237452397!2d36.791357789327634!3d-1.2686965931230747!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1744d1f496ef%3A0xa2a048835be09d59!2sRiverside+Dr%2C+Nairobi!5e0!3m2!1sen!2ske!4v1499522197345" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </div>

        <!----clients message---->
        <div id="contact" class="contact">
            <div class="container">
                <div class="row">
                    <h2>Contact US</h2>
                    <p>Please send us any burning query that you will have using the form.</p>
                    <div class="col-lg-6 col-md-6">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="text" class="form-control" aria-describedby="sizaing-addon1" placeholder="full name"/>
                        </div>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input type="text" class="form-control" aria-describedby="sizaing-addon1" placeholder="Email Adress"/>
                        </div>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-phone"></i></span>
                            <input type="text" class="form-control" aria-describedby="sizaing-addon1" placeholder="Phone Number"/>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="input-group">
                            <textarea name="" id="" cols="80" rows="6" class="form-control"></textarea>
                            <button class="btn btn-lg">Submitt your message...</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!----clients message---->

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

    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script> 
</body>
</html>
