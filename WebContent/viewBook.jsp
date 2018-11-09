 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
    <%@page import="bean.bookBean" %>
    <%@page import="bean.reviewBean" %>
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:59 GMT -->
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
    <body class="product-details">
     <% List<categoryBean> list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=viewBook.jsp" />
		 <% } %>
			
			<%@include file="header.jsp" %>
    
     
		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#" class="active">product-details</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- product-main-area-start -->
		<% bookBean b=(bookBean)request.getAttribute("bookDetail"); %>
		<div class="product-main-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
						<!-- product-main-area-start -->
						<div class="product-main-area">
							<div class="row">
								<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
									<div >
										
											  <img src="<%= b.getPhoto() %>" alt="Book">
										
									</div>
								</div>
								<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
									<div class="product-info-main">
										<div class="page-title">
											<h1><%= b.getBook_title() %></h1>
											<h5>By <%=b.getAuthor() %></h5>
										</div>
										<div class="product-info-stock-sku">
											<span>In stock</span>
											<div class="product-attribute">
												<span>SKU</span>
											
											</div>
										</div>
										
										<div class="product-info-price">
											<div class="price-final">
												<span>Rs.<%=b.getMrp() %></span>
												
											</div>
										</div>
										<div class="product-add-form">
											<form action="#">
												<div class="quality-button">
													<input class="qty" type="number" value="1">
												</div>
												<a href="./addCartServlet?id=<%=b.getBook_id() %>">Add to cart</a>
											</form>
										</div>
									
									</div>
								</div>
							</div>	
						</div>
						<!-- product-main-area-end -->
						<!-- product-info-area-start -->
						<div class="product-info-area mt-80">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist" >
								<li class="active"><a href="#Details" data-toggle="tab">Details</a></li>
								<li><a href="#Reviews" data-toggle="tab">Reviews 3</a></li>
							</ul>
							<div class="tab-content">
                                <div class="tab-pane active" id="Details">
                                    <div class="valu">
                                      <%=b.getDescription() %>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Reviews">
                                    <div class="valu valu-2">
                                        <div class="section-title  mt-60">
                                            <h2>Customer Reviews</h2>
                                        </div>
                                        <ul>
                                         <%List<reviewBean> rev= (ArrayList) request.getAttribute("reviews");
							if(rev==null){ %>
							 <jsp:forward page="/BookDetailServlet?id=<%=b.getBook_id() %>" />
		 					<% }else{
		 						
		 						for(int i=0;i<rev.size();i++)
								{
									reviewBean r=rev.get(i);
		 					
							%>
                                            <li>
                                       
                                                <div>
                                                    

                                                    <h3><%=r.getName() %></h3>
                                                      Summary:<span class="review-author"><%=r.getSummary() %></span>
                                                      <br>
                                                       Review:<span class="review-date"><%=r.getReview() %></span>
                                                    
                                                </div>
                                               
                                            </li>
                                            <%}} %>
                                        </ul>
                                        <div class="review-add">
                                            <h3>You're reviewing:</h3>
                                            
                                        </div>
                                        <div class="review-field-ratings">
                                            <span>Your Rating <sup>*</sup></span>
                                            
                                        </div>
                                         <form action="./reviewServlet?id=<%=b.getBook_id() %>" method="post">
                                        <div class="review-form">
                                            <div class="single-form">
                                                <label>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sup>*</sup></label>
                                               
                                                    <input type="text" name="name" style="width: 50%;"/>
                                                
                                            </div>
                                            <div class="single-form single-form-2">
                                                <label>Summary <sup>*</sup></label>
                                                
                                                    <input type="text" style="width: 50%;" name="summary"/>
                                                
                                            </div>
                                            <div class="single-form">
                                                <label>Review &nbsp;&nbsp;&nbsp; <sup>*</sup></label>
                                                
                                                    <textarea name="review" cols="10" rows="4" style="width: 50%;"></textarea>
                                               
                                            </div>
                                            <div class="review-form-button">
                                            <input type="submit" valu="Submit Review">
                                        </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>	
						</div>
						<!-- product-info-area-end -->
						
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
						<div class="shop-left">
							<div class="left-title mb-20">
								<h4>Related Products</h4>
							</div>
							<div class="random-area mb-30">
								<div class="product-active-2 owl-carousel">
									<div class="product-total-2">
									  <%List<bookBean> cb= (ArrayList) request.getAttribute("catBook");
							if(cb==null){ %>
							 <jsp:forward page="/BookDetailServlet?id=<%=b.getBook_id() %>" />
		 					<% }else{
		 						
		 						for(int i=0;i<cb.size();i++)
								{
									bookBean book=cb.get(i);
		 					
							%>
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a href="#"><img src="<%= book.getPhoto() %>" alt="book" /></a>
											</div>
											
												<h4><a href="#"><%= book.getBook_title() %></a></h4>
												<div class="product-price">
													<ul>
														<li>Rs. <%= book.getMrp()%></li>
														
													</ul>
												</div>
											</div>
											<%}} %>
										</div>
										
										
									</div>	
								</div>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- product-main-area-end -->
		<%@include file="footer.jsp" %>
		
		
		
		
		
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

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:52:03 GMT -->
</html>
