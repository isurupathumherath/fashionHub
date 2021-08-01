<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="fashionHub.com.DBUtil.*"%>
<%@page import="fashionHub.com.Object.Person"%>
<%@page import="java.util.Iterator"%>
<%@page import="fashionHub.com.Servlet.ServletHandler"%>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>FashionHub | Account Update Page</title>
    
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
	
	<style>
        .tab {
            display: inline-block;
            margin-left: 150px;
        }
		
		.tab1 {
            display: inline-block;
            margin-left: 300px;
        }
		
    </style>
	
	<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 8px 42px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  border-radius: 4px;
  margin: 10px 850px;
  cursor: pointer;
  border: 2px solid #555555; /* Black */
}

.button:hover {
  background-color: #f44336; /* Red */
}

	</style>
	
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


  <%@ include file="header.jsp"%>  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="img/fashion/Bannerregister.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.jsp">Home</a></li>                   
          <li class="active">User Account</li>
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

			<div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
	            <h4>Update Account</h4>
	            <h3 style="color: red;"><%=ServletHandler.getErrorMessage(request)%></h3>
				<h3 style="color: green;"><%=ServletHandler.getSuccessMessage(request)%></h3>
				
				<%
				int index = 1;
				List ls = ServletHandler.getList(request);
				Iterator it = ls.iterator();
				while(it.hasNext()) {
					Person pr = (Person)it.next();
				
				%>
				
	            <form action="updateAccount" class="aa-login-form" method="post">
	            <div class="col-md-6">
                  <label for="fname">First Name</label>
                  <input type="text" name="firstname" value= <%= pr.getFirstname() %>>
                  <label for="mname">Middle Name</label>
                  <input type="text" name="middlename" value=<%= pr.getMiddlename() %>>
                  <label for="lname">Last Name</label>
                  <input type="text" name="lastname" value=<%= pr.getLastname() %>>
                  <label for="address">Address</label>
                  <input type="text" name="address" value=<%= pr.getAddress() %>>
                 </div>
                 <div class="col-md-6">
                  <label for="birthday">Birthday</label> <span> &emsp; </span>
				  <input type="date" name="birthday" value=<%= pr.getDob() %>><br><br>
                  <label for="gender">Gender</label> <span> &emsp; </span> <br>
                  <%
                  	String gen = pr.getGender();
                	System.out.println("Gender: " + gen);
                	if(gen.equals("male")) {
                		
                  %>
                  <input type="radio" id="male" name="gender" value="male" checked>
  				  <label for="male">Male</label> <span> &emsp; </span>
  				  <input type="radio" id="female" name="gender" value="female">
				  <label for="female">Female</label> <span> &emsp; </span>
				  <input type="radio" id="other" name="gender" value="other">
				  <label for="other">Other</label><br>
  				  <% } 
                	else if(gen.equals("female")) {
                		
  				  %>
  				  <input type="radio" id="male" name="gender" value="male">
  				  <label for="male">Male</label><br>
  				  <input type="radio" id="female" name="gender" value="female" checked>
				  <label for="female">Female</label><br>
				  <input type="radio" id="other" name="gender" value="other">
				  <label for="other">Other</label><br>
				  <% }
                	else if(gen.equals("other")) {
                		
				  %>
				  <input type="radio" id="male" name="gender" value="male">
  				  <label for="male">Male</label><br>
  				  <input type="radio" id="female" name="gender" value="female">
				  <label for="female">Female</label><br>
				  <input type="radio" id="other" name="gender" value="other" checked>
				  <label for="other">Other</label><br>
				  <% } 
				  	else {
				  %>
				  <input type="radio" id="male" name="gender" value="male">
  				  <label for="male">Male</label><br>
  				  <input type="radio" id="female" name="gender" value="female">
				  <label for="female">Female</label><br>
				  <input type="radio" id="other" name="gender" value="other">
				  <label for="other">Other</label><br>
				  <% } %>
				  <br>
                  <label for="email">Email Address</label>
                  <input type="text" name="email" value=<%= pr.getEmail() %>>
                  <label for="tp">Telephone Number</label>
                  <input type="text" name="telephone" value=<%= pr.getTp() %>>
                  
                  <button type="submit" class="aa-browse-btn">Update</button>
                 </div>
                </form>
                
                <% } %>
	              
              </div>
            </div>          
         </div>
       </div>	
			
		</br>
                    
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

 <%@ include file="footer.jsp"%>

    
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