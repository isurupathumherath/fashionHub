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
    <title>FashionHub | Home</title>
    
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
  
  <!-- Start header section -->
  	<%@ include file="header.jsp"%>
  <!-- / header section -->
  <center><div>
  	<h3 style="color: red;"><%=ServletHandler.getErrorMessage(request)%></h3>
	<h3 style="color: green;"><%=ServletHandler.getSuccessMessage(request)%></h3>
  </div></center>
  
  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <!--  
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/s1.jpg" alt="Men slide img" />
              </div>
              <div class="seq-title">
               <span data-seq>Save Up to 75% Off</span>                
                <h2 data-seq>Men Collection</h2>                
                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/s2.jpg" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Save Up to 40% Off</span>                
                <h2 data-seq>Wristwatch Collection</h2>                
                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/s3.jpg" alt="Women Jeans slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Save Up to 75% Off</span>                
                <h2 data-seq>Jeans Collection</h2>                
                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="img/slider/s4.jpg" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Save Up to 75% Off</span>                
                <h2 data-seq>Exclusive Shoes</h2>                
                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>
            <!-- single slide item -->  
             <li>
              <div class="seq-model">
                <img data-seq src="img/slider/s5.jpg" alt="Male Female slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Save Up to 50% Off</span>                
                <h2 data-seq>Best Collection</h2>                
                <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>                   
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>
  <!-- / slider -->
  <!-- Start Promo section -->
  <!--  
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left 
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">                    
                    <img src="img/women.jpg" alt="img">                    
                    <div class="aa-prom-content">
                      <span>50% Off</span>
                      <h4><a href="#">For Women</a></h4>                      
                    </div>
                  </div>
                </div>
              </div>
              -->
              <!-- promo right 
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/men.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Exclusive Item</span>
                        <h4><a href="#">For Men</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/shoes.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Sale Off</span>
                        <h4><a href="#">On Shoes</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/kids.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>New Arrivals</span>
                        <h4><a href="#">For Kids</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="img/bags.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>25% Off</span>
                        <h4><a href="#">For Bags</a></h4>                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </section>
  -->
  <%
  	int index=1;
	List list=ServletHandler.getList(request);
	List list2 = (List)session.getAttribute("list2");
	Iterator it=list.iterator();
	Iterator it2=list2.iterator();
	if(it.hasNext() && it2.hasNext()){
		Image img=(Image)it.next();
		Item itm = (Item)it2.next();
  %>
  <!-- / Promo section -->
  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                
                 <ul class="nav nav-tabs aa-products-tab">
                 <!-- start prduct navigation  
                    <li class="active"><a href="SearchItem" data-toggle="tab" name="men">Men</a></li>
                    <li><a href="#women" data-toggle="tab">Women</a></li>
                    <li><a href="#sports" data-toggle="tab">Sports</a></li>
                    <li><a href="#electronics" data-toggle="tab">Electronics</a></li>
                 -->
                  </ul>
                 
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <!-- Start men product category -->
                    <div class="tab-pane fade in active" id="men">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="#"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                        
                          
                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE!</span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next();
                        	itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="#"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                         
                         
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                         
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>">Polo T-Shirt</a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-hot" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                          

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image()%>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>     
                          <% img=(Image)it.next(); itm = (Item)it2.next();%>                    

                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>                        
                      </ul>
                      
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300"" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                        

                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE!</span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                         

                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                         


                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-hot" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="#"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                          

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image()%>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>     
                          <% img=(Image)it.next(); itm = (Item)it2.next();%>                    

                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>                        
                      </ul>
                      
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300"" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                        

                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#">SALE!</span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next(); %>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                         

                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                             <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                         

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next(); %>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-hot" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="#"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>                          
                          
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image()%>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span><span class="aa-product-price"></span>
                            </figcaption>
                          </figure>                          

                          <!-- product badge -->
                          <span class="aa-badge aa-sale" href="#"></span>
                        </li>
                        <!-- start single product item -->
                        <li>
                        <% img=(Image)it.next(); itm = (Item)it2.next();%>
                          <figure>
                            <a class="aa-product-img" href="ShowProduct?item_code=<%=img.getItemcode()%>"><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="polo shirt img" alt="Item Image" width="250" height="300"></a>
                            <a class="aa-add-card-btn" href='AddToCart?item_code=<%=img.getItemcode()%>'><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="ShowProduct?item_code=<%=img.getItemcode()%>"><%= itm.getItemname() %></a></h4>
                              <span class="aa-product-price">Rs.<%= itm.getItemprice() %></span>
                            </figcaption>
                          </figure>     
                          <% img=(Image)it.next(); itm = (Item)it2.next();%>                    
   
                          <!-- product badge -->
                           <span class="aa-badge aa-sold-out" href="#"></span>
                        </li>                        
                      </ul>
                      <a class="aa-browse-btn" href="loadImage">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                    </div>
                    
                     <% } %>
                  </div>
                  <!-- quick view modal -->                  
                  <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">                      
                        <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <div class="row">
                            <!-- Modal view slider -->
                            <div class="col-md-6 col-sm-6 col-xs-12">                              
                              <div class="aa-product-view-slider">                                
                                <div class="simpleLens-gallery-container" id="demo-1">
                                  <div class="simpleLens-container">
                                      <div class="simpleLens-big-image-container">
                                          <a class="simpleLens-lens-image" data-lens-image="img/view-slider/large/polo-shirt-1.png">
                                              <img src="img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image">
                                          </a>
                                      </div>
                                  </div>
                                  <div class="simpleLens-thumbnails-container">
                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="img/view-slider/large/polo-shirt-1.png"
                                         data-big-image="img/view-slider/medium/polo-shirt-1.png">
                                          <img src="img/view-slider/thumbnail/polo-shirt-1.png">
                                      </a>                                    
                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="img/view-slider/large/polo-shirt-3.png"
                                         data-big-image="img/view-slider/medium/polo-shirt-3.png">
                                          <img src="img/view-slider/thumbnail/polo-shirt-3.png">
                                      </a>

                                      <a href="#" class="simpleLens-thumbnail-wrapper"
                                         data-lens-image="img/view-slider/large/polo-shirt-4.png"
                                         data-big-image="img/view-slider/medium/polo-shirt-4.png">
                                          <img src="img/view-slider/thumbnail/polo-shirt-4.png">
                                      </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- Modal view content -->
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class="aa-product-view-content">
                                <h3>T-Shirt</h3>
                                <div class="aa-price-block">
                                  <span class="aa-product-view-price">$34.99</span>
                                  <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
                                <h4>Size</h4>
                                <div class="aa-prod-view-size">
                                  <a href="#">S</a>
                                  <a href="#">M</a>
                                  <a href="#">L</a>
                                  <a href="#">XL</a>
                                </div>
                                <div class="aa-prod-quantity">
                                  <form action="">
                                    <select name="" id="">
                                      <option value="0" selected="1">1</option>
                                      <option value="1">2</option>
                                      <option value="2">3</option>
                                      <option value="3">4</option>
                                      <option value="4">5</option>
                                      <option value="5">6</option>
                                    </select>
                                  </form>
                                  <p class="aa-prod-category">
                                    Category: <a href="#">Polo T-Shirt</a>
                                  </p>
                                </div>
                                <div class="aa-prod-view-bottom">
                                  <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                  <a href="#" class="aa-add-to-cart-btn">View Details</a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>                        
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- / quick view modal -->              
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- / Products section -->
  <!-- banner section
  <section id="aa-banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">        
          <div class="row">
            <div class="aa-banner-area">
            <a href="#"><img src="img/fashion-banner.jpg" alt="fashion banner img"></a>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 -->
                
  <!-- Support section -->
  <section id="aa-support">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-truck"></span>
                <h4>FREE SHIPPING</h4>
                <P>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-clock-o"></span>
                <h4>30 DAYS MONEY BACK</h4>
                <P>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-phone"></span>
                <h4>SUPPORT 24/7</h4>
                <P>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam, nobis.</P>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Support section -->


 

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