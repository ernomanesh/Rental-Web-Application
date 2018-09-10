<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Sunset_Rentals_Web_App.Home" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
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
                                
                           </li>
                        <li class="dropdown">
                            <a href="SignIn.aspx" class="dropdown-toggle" data-toggle="dropdown">Houses<b class="caret"></b></a>
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
                       <li>
                            <button id="btnBookings" class="btn btn-primary navbar-btn" type="button">
                           Rental Booking <span class="badge" id="pCount" runat="server">1</span>
                        </button>

                       </li>
                          <li id="btnSignUp" runat="server"><a href="Sign Up.aspx">Sign Up</a></li>
                          <li id="btnSignIn" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                        <li>
                           
                        </li>
                    </ul>
                    
                </div>
            </div>
        </div>
        </div>

         <!---Carousel---->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="House Images/Dining Area.jpg" alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
         <h4>Dining Area</h4>
          <p>Spacious dining room with all the kitchen set cutlery and draws.</p>
          <p><a class="btn btn-lg btn-primary" href="Sign Up.aspx" role="button">Join Us Today For great deals</a></p>
            <span class="badge">Original</span>
      </div>
    </div>
    <div class="item">
      <img src="House Images/City.jpg" alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
         <h4>City Apartments</h4>
          <p>Various modern apartments overview.</p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Like Our Social Media Handles</a></p>
            <span class="badge">Spetacular</span>
      </div>
    </div>
      <div class="item">
      <img src="House Images/kitchen-cabinets-door-knobssuttonpeopleskitchen-with-regard-to-kitchen-cabinet-door-knobs.jpg" alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
        <h4>Various Cabinets</h4>
          <p>Closable and with different size kitchen cabinets with elegance.</p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Thank you for visiting our site</a></p>
            <span class="badge">Elegance</span>
      </div>
    </div>
       <div class="item">
      <img src="House Images/rent-house.jpg" alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
        <h4>Rent With Us For Great Offers</h4>
          <p>Elegant rooms with good social amenities and great offers.</p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Welcome back for great offers</a></p>
            <span class="badge">Elegance</span>
      </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
          <!---Carousel---->
            </div>
            <br />
        <br />
        
        <!-----middle contents----->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="House Images/Bungalow.jpeg" alt="bungalow1" height="200" width="300" />
                <h3 class="conta">Bungalow</h3>
                <p class="missio">Renting Management Information system is a system that will be used to automate the renting of rooms that are available and also the system will be used to confirm the units that have been rented out by the landlord. The scope of the system is to enhance recording of data from different tenants and also updating when one vacates the room that has been occupied or unoccupied space that is yet to be rent out.</p>
                <p><a class="btn btn-primary" href="#" role="button">VIew More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="House Images/Condo.jpeg" alt="Condo1" height="200" width="300" />
                <h3 class="conta">Condo</h3>
                <p  class="missio">Renting Management Information system is a system that will be used to automate the renting of rooms that are available and also the system will be used to confirm the units that have been rented out by the landlord. The scope of the system is to enhance recording of data from different tenants and also updating when one vacates the room that has been occupied or unoccupied space that is yet to be rent out.</p>
                <p><a class="btn btn-primary" href="#" role="button">VIew More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="House Images/Gated Community.jpeg" alt="gated" height="200" width="300" />
                <h3 class="conta">Gated Community</h3>
                <p  class="missio">Renting Management Information system is a system that will be used to automate the renting of rooms that are available and also the system will be used to confirm the units that have been rented out by the landlord. The scope of the system is to enhance recording of data from different tenants and also updating when one vacates the room that has been occupied or unoccupied space that is yet to be rent out.</p>
                <p><a class="btn btn-primary" href="#" role="button">VIew More &raquo;</a></p>
            </div>

            </div>
        </div>
        <!-----middle contents----->
       
             <br />
        <!-----pricing of our houses---->
        <div id="pricing" class="pricing">
            <div class="container">
                <div class="row">
                 <h3><b><u>Pricing of Various Houses</u></b></h3>
                    <p>Our pricing of the various house units range from the quality and material used to make the houses.</p>
                    <div class="col-lg-3 col-md-3">
                        <div class="packages">
                            <h4>One Bedroom</h4>
                            <h1>6,000</h1>
                            <b>Monthly</b>
                            <p>Spacious with one cabinet for placing your items.</p>
                            <hr />
                            <ol>
                                <li> Spacious</li>
                                <li>Well lit</li>
                                <li>Social Amenities available</li>
                                <li>Certified by Ministry</li>
                                <li>Affordable price</li>
                            </ol>
                                <button class="btn btn-success">Get Started &raquo</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="packages">
                            <h4>Mabati</h4>
                            <h1>3,000</h1>
                            <b>Monthly</b>
                            <p>Spacious with one cabinet for placing your items.</p>
                            <hr />
                            <ol>
                                <li> Spacious</li>
                                <li>Well lit</li>
                                <li>Social Amenities available</li>
                                <li>Certified by Ministry</li>
                                <li>Affordable price</li>
                            </ol>
                                <button class="btn btn-success">Get Started &raquo</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="packages">
                            <h4>Two Bedroom</h4>
                            <h1>15,000</h1>
                            <b>Monthly</b>
                            <p>Spacious with one cabinet for placing your items.</p>
                            <hr />
                            <ol>
                                <li> Spacious</li>
                                <li>Well lit</li>
                                <li>Social Amenities available</li>
                                <li>Certified by Ministry</li>
                                <li>Affordable price</li>
                            </ol>
                                <button class="btn btn-success">Get Started &raquo</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="packages">
                            <h4>Three Bedroom</h4>
                            <h1>25,000</h1>
                            <b>Monthly</b>
                            <p>Spacious with one cabinet for placing your items.</p>
                            <hr />
                            <ol>
                                <li> Spacious</li>
                                <li>Well lit</li>
                                <li>Social Amenities available</li>
                                <li>Certified by Ministry</li>
                                <li>Affordable price</li>
                            </ol>
                                <button class="btn btn-success">Get Started &raquo</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-----pricing of our houses---->
        <hr />

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
