<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>FashionHub | Customer Details Page</title>
    
    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
  
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  	<%@ include file="header.jsp"%>
  <!-- / header section -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="img/fashion/bannerLogin.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Customer Details Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>                   
          <li class="active">Customer Details</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
                <div class="aa-myaccount-login">
                <%
                	String name = (String)session.getAttribute("user");
                	System.out.println(name);
                	session.setAttribute("user", name); 
         		%>
                <h4>Customer Details</h4>
                	Hi, <b>${user}, </b> Please give us your information.
                	
					<form class="aa-costomerdata-form" action="registerDataServ" method = "post">
					<div class="col-md-6">
						<label for="firstname">First Name</label><br>
						<input type="text" name="firstname" placeholder="Enter Your First Name Here..."><br>
						<label for="middlename">Middle Name</label><br>
						<input type="text" name="middlename" placeholder="Enter Your Middle Name Here..."><br>
						<label for="lastname">Last Name</label><br>
						<input type="text" name="lastname" placeholder="Enter Your Last Name Here..."><br>
						<label for="address">Address</label><br>
						<input type="text" name="address" placeholder="Enter Your Address Here..."><br>
					</div>
					<div class="col-md-6">
						<label for="birthday">Birthday</label> <br>
						<input type="date" name="birthday"><br>
						<br>
						<label for="gender">Gender</label><br>
						<input type="radio" id="male" name="gender" value="male"> 
					
						<label for="male">Male</label><span> &emsp; </span>
						<input type="radio" id="female" name="gender" value="female"> 
						<label for="female">Female</label> <span> &emsp; </span>
						<input type="radio" id="other" name="gender" value="other"> 
						<label for="other">Other</label>
						<br>
						<label for="email">E-mail Address</label><br>
						<input type="email" name="email" placeholder="Enter Your E-mail Address Here...">
						<br>
						<label for="tp">Telephone Number</label><br>
						<input type="text" name="telephone" placeholder="Enter Your Telephone Number Here...">
						<br>
						<label for="ap">Profile Picture</label><br>
						<input type="file" name="AccountPhoto" value="" />
						<br>
						<button class="aa-browse-btn" type="submit">Submit</button>
					</div>
				</div>
				</form>
                </div>     
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

  <!-- Start header section -->
  	<%@ include file="footer.jsp"%>
  <!-- / header section -->


    
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="js/sequence.js"></script>
  <script src="js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
  

  </body>
</html>