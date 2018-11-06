<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
    <%@page import="bean.bookBean" %>    
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:50:47 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Reader's Heaven</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
		
		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="./css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="./css/animate.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="./css/meanmenu.min.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="./css/owl.carousel.css">
		<!-- font-awesome css -->
        <link rel="stylesheet" href="./css/font-awesome.min.css">
		<!-- flexslider.css-->
        <link rel="stylesheet" href="./css/flexslider.css">
		<!-- chosen.min.css-->
        <link rel="stylesheet" href="./css/chosen.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="./css/style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="./css/responsive.css">
		<!-- modernizr css -->
        <script src="./js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
    <%List<categoryBean>list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=index.jsp" />
		 <% } %>
			
			<%@include file="header.jsp" %>
		
		<!-- slider-area-start -->
		<div class="slider-area">
			<div class="slider-active owl-carousel">
				<div class="single-slider pt-125 pb-130 bg-img" style="background-image:url(img/slider/1.jpg);">
				    <div class="container">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="slider-content slider-animated-1 text-center">
                                    <h1>Huge Sale</h1>
                                    <h2>Reader's Heaven</h2>
                                    <h3>Now starting at Rs99.00</h3>
                                    <a href="shop.jsp">Shop now</a>
                                </div>
                            </div>
                        </div>
				    </div>
				</div>
				<div class="single-slider slider-h1-2 pt-215 pb-100 bg-img" style="background-image:url(img/slider/2.jpg);">
				    <div class="container">
				        <div class="slider-content slider-content-2 slider-animated-1">
                            <h1>We can help get your</h1>
                            <h2>Books in Order</h2>
                            <h3>and Accessories</h3>
                            <a href="shop.jsp">Contact Us Today!</a>
                        </div>
				    </div>
				</div>
			</div>
		</div>
		<!-- slider-area-end -->
		<!-- product-area-start -->
		<div class="product-area pt-95 xs-mb">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title text-center mb-50">
							<h2>Top interesting</h2>
							<p>Browse the collection of our best selling and top interresting products. <br /> ll definitely find what you are looking for..</p>
						</div>
					</div>
					<div class="col-lg-12">
						<!-- tab-menu-start -->
						<div class="tab-menu mb-40 text-center">
							<ul>
								<li class="active"><a href="#Audiobooks" data-toggle="tab"><h2>New Arrival</h2></a></li>
							
							</ul>
						</div>
						<!-- tab-menu-end -->
					</div>
				</div>
				<!-- tab-area-start -->
				<div class="tab-content">
					<div class="tab-pane active" id="Audiobooks">
                        <div class="tab-active owl-carousel">
                         <%List<bookBean>b=(ArrayList)request.getAttribute("newArrival");
							if(b==null){ %>
							 <jsp:forward page="/BookServlet?action=New Arrival" />
		 					<% }else{
		 						
		 						for(int i=0;i<b.size();i++)
								{
									bookBean book=b.get(i);
		 					
							%>
                            <!-- single-product-start -->
                            <div class="product-wrapper mb-40">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="<%= book.getPhoto() %>" alt="book" class="primary" />
                                    </a>
                                  
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span></li>
                                        
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-details text-center">
                                    <div class="product-rating">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h4><a href="./bookDetailServlet?id=<%= book.getBook_id()%>"><%= book.getBook_title() %></a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>Rs.<%= book.getMrp() %></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>	
                            </div>
                            <!-- single-product-end -->
                           <% } } %>
                        </div>
					</div>
					
				
                           
                        </div>
					</div>
				</div>
				<!-- tab-area-end -->
		
		<!-- product-area-end -->
		
		
		<!-- new-book-area-start -->
		<div class="new-book-area pb-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title bt text-center pt-100 mb-30 section-title-res">
							<h2>Featured Books</h2>
						</div>
					</div>
				</div>
				<div class="tab-active owl-carousel">
                   <%List<bookBean> fb= (ArrayList) request.getAttribute("featuredBooks");
							if(fb==null){ %>
							 <jsp:forward page="/BookServlet?action=Featured Books" />
		 					<% }else{
		 						
		 						for(int i=0;i<fb.size();i++)
								{
									bookBean book=fb.get(i);
		 					
							%>
                            <!-- single-product-start -->
                            <div class="product-wrapper mb-40">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="<%= book.getPhoto() %>" alt="book" class="primary" />
                                    </a>
                                  
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span></li>
                                        
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-details text-center">
                                    <div class="product-rating">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h4><a href="#"><%= book.getBook_title() %></a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>Rs.<%= book.getMrp() %></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>	
                            </div>
                            <!-- single-product-end -->
                           <% } } %>
                  </div>
                </div>
			</div>
		</div>
		<!-- new-book-area-start -->
		<!-- banner-static-area-start -->
		<div class="banner-static-area bg ptb-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="banner-shadow-hover xs-mb">
							<a href="#"><img src="img/banner/8.jpg" alt="banner" /></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="banner-shadow-hover">
							<a href="#"><img src="img/banner/9.jpg" alt="banner" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner-static-area-end -->
	
		<!-- social-group-area-start -->
		<div class="social-group-area ptb-60">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="section-title-3">
							<h3>Latest Tweets</h3>
						</div>
						<div class="twitter-content">
							<div class="twitter-icon">
								<a href="#"><i class="fa fa-twitter"></i></a>
							</div>
							<div class="twitter-text">
								<p>
									Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum notare quam 
								</p>
								<a href="#">posthemes</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="section-title-3">
							<h3>Stay Connected</h3>
						</div>
						<div class="link-follow">
							<ul>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
								<li><a href="#"><i class="fa fa-flickr"></i></a></li>
								<li class="hidden-sm"><a href="#"><i class="fa fa-vimeo"></i></a></li>
								<li class="hidden-sm"><a href="#"><i class="fa fa-instagram"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- social-group-area-end -->
		<!-- footer-area-start -->
		<footer>
			<!-- footer-top-start -->
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="footer-top-menu bb-2">
								<nav>
									<ul>
										<li><a href="#">home</a></li>
										<li><a href="#">Enable Cookies</a></li>
										<li><a href="#">Privacy and Cookie Policy</a></li>
										<li><a href="#">contact us</a></li>
										<li><a href="#">blog</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-top-start -->
			<!-- footer-mid-start -->
			<div class="footer-mid ptb-50">
				<div class="container">
					<div class="row">
				        <div class="col-lg-8 col-md-8 col-sm-12">
				            <div class="row">
				                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="single-footer br-2 xs-mb">
                                        <div class="footer-title mb-20">
                                            <h3>Products</h3>
                                        </div>
                                        <div class="footer-mid-menu">
                                            <ul>
                                                <li><a href="about.html">About us</a></li>
                                                <li><a href="#">Prices drop </a></li>
                                                <li><a href="#">New products</a></li>
                                                <li><a href="#">Best sales</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="single-footer br-2 xs-mb">
                                        <div class="footer-title mb-20">
                                            <h3>Our company</h3>
                                        </div>
                                        <div class="footer-mid-menu">
                                            <ul>
                                                <li><a href="contact.html">Contact us</a></li>
                                                <li><a href="#">Sitemap</a></li>
                                                <li><a href="#">Stores</a></li>
                                                <li><a href="register.html">My account </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="single-footer br-2 xs-mb">
                                        <div class="footer-title mb-20">
                                            <h3>Your account</h3>
                                        </div>
                                        <div class="footer-mid-menu">
                                            <ul>
                                                <li><a href="contact.html">Addresses</a></li>
                                                <li><a href="#">Credit slips </a></li>
                                                <li><a href="#"> Orders</a></li>
                                                <li><a href="#">Personal info</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
				            </div>
				        </div>
				        <div class="col-lg-4 col-md-4 col-sm-12">
                            <div class="single-footer mrg-sm">
                                <div class="footer-title mb-20">
                                    <h3>STORE INFORMATION</h3>
                                </div>
                                <div class="footer-contact">
                                    <p class="adress">
                                        <span>My Company</span>
                                        42 avenue des Champs Elysées 75000 Paris France
                                    </p>
                                    <p><span>Call us now:</span> (+1)866-540-3229</p>
                                    <p><span>Email:</span>  support@hastech.com</p>
                                </div>
                            </div>
				        </div>
					</div>
				</div>
			</div>
			<!-- footer-mid-end -->
			<!-- footer-bottom-start -->
			<div class="footer-bottom">
				<div class="container">
					<div class="row bt-2">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="copy-right-area">
								<p>Copyright ©<a href="#">Koparion</a>. All Right Reserved.</p>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="payment-img text-right">
								<a href="#"><img src="img/1.png" alt="payment" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-bottom-end -->
		</footer>
		<!-- footer-area-end -->
		
		
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="./js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="./js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
        <script src="./js/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
        <script src="./js/jquery.meanmenu.js"></script>
		<!-- wow js -->
        <script src="./js/wow.min.js"></script>
		<!-- jquery.parallax-1.1.3.js -->
        <script src="./js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.countdown.min.js -->
        <script src="./js/jquery.countdown.min.js"></script>
		<!-- jquery.flexslider.js -->
        <script src="./js/jquery.flexslider.js"></script>
		<!-- chosen.jquery.min.js -->
        <script src="./js/chosen.jquery.min.js"></script>
		<!-- jquery.counterup.min.js -->
        <script src="./js/jquery.counterup.min.js"></script>
		<!-- waypoints.min.js -->
        <script src="./js/waypoints.min.js"></script>
		<!-- plugins js -->
        <script src="./js/plugins.js"></script>
		<!-- main js -->
        <script src="./js/main.js"></script>
    </body>

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:17 GMT -->
</html>
