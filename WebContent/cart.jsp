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
    <title>FashionHub | Cart Page</title>
    
    
    
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


<%@ include file="header.jsp"%> 
 
<%
		String name = (String)session.getAttribute("user");
        System.out.println(name);
        session.setAttribute("user", name); 
  %>
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion/Bannerregister.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Cart Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.jsp">Home</a></li>                   
          <li class="active">Cart</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
  <div>
  	<h3 style="color: red;"><%=ServletHandler.getErrorMessage(request)%></h3>
	<h3 style="color: green;"><%=ServletHandler.getSuccessMessage(request)%></h3>
 </div>
 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="purchaseItem" method = "post">
             
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Total</th>
                      </tr>
                    </thead>
                    
                    <tbody>
					  <%
					  		int subtotal = 0;
					      	int index=1;
					      	List list=ServletHandler.getList(request);
					      	List list2 = (List)session.getAttribute("list2");
					      	List list3 = (List)session.getAttribute("list3");
					      	System.out.println(list2.size());
					      	Iterator it3 = list3.iterator();
					      	Iterator it2 = list2.iterator();
					      	Iterator it=list.iterator();
					      	
					      	session.setAttribute("list", list); 
					      	session.setAttribute("list2", list2); 
					      	session.setAttribute("list3", list3); 
					      	
					      	while(it.hasNext() && it2.hasNext() && it3.hasNext()){
					      		System.out.println("TEST");
					      		Image img=(Image)it.next();
					      		Item itm = (Item)it2.next();
					      		Cart crt = (Cart)it3.next();
					  %>
					    <tr>
					      <td><a class="remove" href="RemoveCart?item_code=<%=img.getItemcode()%>"><fa class="fa fa-close"></fa></a></td>
					      <td><a href="#"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="img"></a></td>
					      <td><a class="aa-cart-title" href="#"><%= itm.getItemname() %></a></td>
                       	  <td>Rs.<%= itm.getItemprice() %></td>
                          <td><input class="aa-cart-quantity" type="number" name = "quantity" value="<%=crt.getQuantity() %>"></td>
                          <%
                          	int total = Integer.parseInt(itm.getItemprice()) * crt.getQuantity();
                          	subtotal += total;
                          	System.out.println(total);
                          %>
                          <td>Rs.<%=total %></td>
                          
					    </tr>
					<%} %>
					  </tbody>
                  </table>
                  <!--  <a href="updateCart" class="aa-cart-view-btn">Update Cart</a> -->
                </div>
             
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Cart Totals</h4>
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>Subtotal</th>
                     <td>Rs.<%=subtotal %></td>
                   </tr>
                   <tr>
                     <th>Total</th>
                     <td>Rs.<%=subtotal %></td>
                   </tr>
                 </tbody>
               </table><br>
               <input  type ="submit" class="aa-cart-view-btn"  value = "Process To Checkout">
             </div>
             </form>
           </div>
           
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