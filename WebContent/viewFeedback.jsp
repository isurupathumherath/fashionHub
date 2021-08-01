<!DOCTYPE html>
<%@page import="fashionHub.com.Servlet.*"%>
<%@page import="fashionHub.com.DBUtil.*"%>
<%@page import="fashionHub.com.Object.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>FashionHub | Admin Panel</title>
    <style>
		body {font-family: "Lato", sans-serif;}
		
		.sidebar {
		  height: 88%;
		  width: 160px;
		  position: fixed;
		  z-index: 1;
		  top: 30px;
		  bottom: 32px;
		  left: 0;
		  background-color: #111;
		  overflow-x: hidden;
		  padding-top: 16px;
		}
		
		.sidebar a {
		  padding: 6px 8px 6px 16px;
		  text-decoration: none;
		  font-size: 20px;
		  color: #818181;
		  display: block;
		}
		
		.sidebar a:hover {
		  color: #f1f1f1;
		}
		
		.main {
		  margin-left: 160px; /* Same as the width of the sidenav */
		  padding: 0px 10px;
		}
		
		@media screen and (max-height: 450px) {
		  .sidebar {padding-top: 15px;}
		  .sidebar a {font-size: 18px;}
		}
	</style>
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
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
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
  <%
		String name = (String)session.getAttribute("user");
        System.out.println(name);
        session.setAttribute("user", name); 
  %>
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

<div>
	<%@ include file="adminheader.jsp"%>
</div>

<div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="addItem.jsp"><i class="fa fa-fw fa-wrench"></i> Add Item</a>
  <a href="#clients"><i class="fa fa-fw fa-user"></i> users</a>
  <a href="ViewFeedback"><i class="fa fa-fw fa-envelope"></i> Feedback</a>
</div>

<center>
  <div>
  	<h3 style="color: red;"><%=ServletHandler.getErrorMessage(request)%></h3>
	<h3 style="color: green;"><%=ServletHandler.getSuccessMessage(request)%></h3>
 </div>
 </center>
 <!-- Cart view section -->
 <section id="cart-view" style="padding-left: 15%">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
             
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col">Name</th>
                        <th scope="col">Email Address</th>
                        <th scope="col">Company</th>
                        <th scope="col">Name</th>
                        <th scope="col">Message</th>
                      </tr>
                    </thead>
                    
                    <tbody>
					  <%
					      	int index=1;
					      	List list = (List)session.getAttribute("list");
					      	System.out.println(list.size());
					      	Iterator it=list.iterator();
					      	
					      	session.setAttribute("list", list); 
					      	
					      	while(it.hasNext()){
								Feedback fb = (Feedback)it.next();

					  %>
					    <tr>
					      <td><a class="remove" href="RemoveFeedback?feedbackid=<%=fb.getId()%>"><fa class="fa fa-close"></fa></a></td>
					      <td><a href="#"><%= fb.getName() %></a></td>
					      <td><a class="aa-cart-title" href="#"><%= fb.getEmail() %></a></td>
                       	  <td><%= fb.getSubject() %></td>
                          <td><%= fb.getCompany() %></td>
                          <td><%= fb.getMessage() %></td>
                          
					    </tr>
					<%} %>
					  </tbody>
                  </table>
                  <!--  <a href="updateCart" class="aa-cart-view-btn">Update Cart</a> -->
                </div>
             </form>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

  <!-- footer -->  
  <footer id="aa-footer" style="
    position: fixed;
    bottom: 0px;
    left: 0%;">
    <!-- footer bottom -->
        <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by Project Group SLIIT 2021</a></p>
            
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->    

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