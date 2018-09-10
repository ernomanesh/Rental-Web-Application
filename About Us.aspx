<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="Sunset_Rentals_Web_App.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>About Us</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/rentaldecorations.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
        <br />
        <br />
        <br />
        <br />

       <!---------Our Team Members----------->
        <div class="team">
            <div class="container">
                <div class="row">
                    <hr />
                    <h3 class="center conactname">Our Team Members</h3>
                    <hr />
                    <p class="center">Below are our team members who ensure that our EdenVille Rentals runs efficiently.</p>
                    <div class="col-lg-4">
                        <img src="House Images/loginimage.png" class="img-circle" alt="ernestonsase" />
                        <h4>CANDITA MUKUNDI</h4>
                        <b>CEO AND FOUNDER</b>
                        <p>Candita Mukundi is a professional when delaing it comes to delaing with quality rental apartment and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                     <div class="col-lg-4">
                        <img src="House Images/loginimage.png" class="img-circle" alt="kca" />
                        <h4>KCA</h4>
                        <b>WEB DEVELOPER</b>
                        <p>KCA University is a professional when delaing it comes to delaing with quality hadware materials and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                     <div class="col-lg-4">
                        <img src="House Images/loginimage.png" class="img-circle" alt="ernestonsase" />
                        <h4>WORKER</h4>
                        <b>DELIVERIES AND COMPLAINTS</b>
                        <p>Candita Mukundi is a professional when delaing it comes to delaing with quality hadware materials and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
         <!---------Our Team Members----------->
        <div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
        <hr />
        <!-----mision/vision &others---->
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h1 class="contau center">Our Mission</h1>
                    <p  class="missio">Our mission is to ensure that our clients get better, equal, fast and efficient services while they access our site or personnel.We are dedicated to provide affordable housing which is one of the big four agenda of our government</p>
                </div>
                <div class="col-lg-4">
                    <h1  class="contau center"> Our Motto</h1>
                    <p  class="missio">Our mission is to ensure that our clients get better, equal, fast and efficient services while they access our site or personnel.We are dedicated to provide affordable housing which is one of the big four agenda of our government</p>
                </div>
                <div class="col-lg-4">
                    <h1 class="contau center">Our Physiology</h1>
                    <p  class="missio">Our mission is to ensure that our clients get better, equal, fast and efficient services while they access our site or personnel.We are dedicated to provide affordable housing which is one of the big four agenda of our government</p>
                </div>
            </div>
        </div>
        <!-----mision/vision &others---->
        <hr />
        <div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
        <!-----trusted partnesrs---->
        <div class ="container">
            <div class="row">
                <h1 class="center">TRUSTED BY:</h1>
                    <h3 class="center"><span class="spa">Below are our </span>trasted associates</h3>
                <div>
                    <img src="House Images/bambui1.png" height="200" width="300" />
          </div>
                <hr />
                    <img src="House Images/cement2.jpg" height="200" width="300" />
                <div>
                <hr />

                    <img src="House Images/online shop.jpg" height="200" width="300" />
                </div>
            </div>
                </div>
        
        <!-----trusted partnesrs---->
        

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

