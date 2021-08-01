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
    <title>FashionHub | Product Detail</title>
    
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
 
    
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion/Bannerregister.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        
        <ol class="breadcrumb">
          <li><a href="loadImage">Home</a></li>         
          <li><a href="#">Product</a></li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
<%
	int subtotal = 0;
	int index=1;
	List list=ServletHandler.getList(request);
	List list2 = (List)session.getAttribute("list2");
	System.out.println(list2.size());
	Iterator it2 = list2.iterator();
	Iterator it=list.iterator();
					      	
	session.setAttribute("list", list); 
	session.setAttribute("list2", list2); 
					      	
	while(it.hasNext() && it2.hasNext()){
			System.out.println("TEST");
			Image img=(Image)it.next();
			Item itm = (Item)it2.next();
%>
  <!-- product category -->
  <section id="aa-product-details">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-product-details-area">
            <div class="aa-product-details-content">
              <div class="row">
                <!-- Modal view slider -->
                <div class="col-md-5 col-sm-5 col-xs-12">                              
                  <div class="aa-product-view-slider">                                
                    <div id="demo-1" class="simpleLens-gallery-container">
                      <div class="simpleLens-container">
                        <div class="simpleLens-big-image-container"><a data-lens-image="data:image/jpg;base64,<%=img.getBase64Image() %>" class="simpleLens-lens-image"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" class="simpleLens-big-image" width="250" height="300"></a></div>
                      </div>
                      
                    </div>
                  </div>
                </div>
                <!-- Modal view content -->
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
                    <h3><%= itm.getItemname() %></h3>
                    <div class="aa-price-block">
                      <span class="aa-product-view-price">Rs.<%= itm.getItemprice() %></span>
                      <%
                      	int x = Integer.parseInt(itm.getQuantity());
                      	String msg = null;
                      	if(x > 0) {
                      		msg = "In stock";
                      	}
                      	else {
                      		msg = "Out of Stock"; 
                      }
                      %>
                      <p class="aa-product-avilability">Avilability: <span><%= msg %></span></p>
                    </div>
                    <p><%= itm.getDescription() %></p>
                    <h4>Available Stock Quantity:  <span><%= itm.getQuantity() %></span></h4>
                    
                    <h4>Added on : <span><%= itm.getAdded_at() %></span></h4>
                    <p class="aa-prod-category">
                        Category: <a href="#"> <%= itm.getCategory() %></a>
                      </p>
                    <div class="aa-prod-quantity">
                    
                      <form action="AddToCartServ?item_code=<%=img.getItemcode()%>">
                        <input class="aa-cart-quantity" type="number" name="quantity" value="count">
                        <div class="aa-prod-view-bottom">
	                      <a class="aa-add-to-cart-btn" href="AddToCartServ?item_code=<%=img.getItemcode()%>">Add To Cart</a>
	                      <a class="aa-add-to-cart-btn" href="#">Purchase Now</a>
	                    </div>
                      </form>
                    </div>

                  </div>
                </div>
              </div>
            </div>
            <div class="aa-product-details-bottom">
              <ul class="nav nav-tabs" id="myTab2">
                <li><a href="#review" data-toggle="tab">Reviews</a></li>                
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
               
                <div class="tab-pane fade " id="review">
                 <div class="aa-product-review-area">
                   <h4>Reviews for <%= itm.getItemname() %></h4> 
                   <ul class="aa-review-nav">
                     <li>
                        <div class="media">
                          <div class="media-left">
                            <a href="#">
                              <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                            </a>
                          </div>
                          <div class="media-body">
                            <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                            <div class="aa-product-rating">
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star-o"></span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="media">
                          <div class="media-left">
                            <a href="#">
                              <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                            </a>
                          </div>
                          <div class="media-body">
                            <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                            <div class="aa-product-rating">
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star-o"></span>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                          </div>
                        </div>
                      </li>
                   </ul>
                   <% } %>
                   <h4>Add a review</h4>
                   <div class="aa-your-rating">
                     <p>Your Rating</p>
                     <select id="cars" name="cars">
					    <option value="1">Rate in 1</option>
					    <option value="2">Rate in 2</option>
					    <option value="3">Rate in 3</option>
					    <option value="4">Rate in 4</option>
					    <option value="5">Rate in 5</option>
					  </select>
                   </div>
                   <!-- review form -->
                   <form action="" class="aa-review-form">
                      <div class="form-group">
                        <label for="message">Your Review</label>
                        <textarea class="form-control" rows="3" id="message"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Name">
                      </div>  
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="example@gmail.com">
                      </div>

                      <button type="submit" class="btn btn-default aa-review-submit">Submit</button>
                   </form>
                 </div>
                </div>            
              </div>
            </div>
  
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / product category -->




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