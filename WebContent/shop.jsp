<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.bookBean" %> 
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:52:03 GMT -->
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
    </head>
    <body class="cart">
     <%List<categoryBean>list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=shop.jsp" />
		 <% } %>
       <%@include file="header.jsp" %>
     		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="./index.jsp">Home</a></li>
								<li><a href="#" class="active">shop</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- shop-main-area-start -->
		<div class="shop-main-area mb-70">
			<div class="container">
				<div class="row">
					
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						
						<div class="section-title-5 mb-30">
							<h2>Book</h2>
						</div>
					
							
							
						</div>
						<!-- tab-area-start -->
						<div class="tab-content">
							<div class="tab-pane active" id="th">
							    <div class="row">
							     <%List<bookBean> cb=(ArrayList)request.getAttribute("categoryBooks");
							     
							     if(cb==null){%>
							    	 <h3>No Book Available</h3>
							     <% }else{
							    	 for(int i=0;i<cb.size();i++){
							    		 bookBean book=cb.get(i);
							          %>
							          
							        <div class="col-lg-3 col-md-4 col-sm-6">

							            <!-- single-product-start -->
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="<%=book.getPhoto() %>" alt="book" class="primary" />
                                                </a>
                                            </div>
                                            <div class="product-details text-center">
                                                
                                                <h4><a href="./bookDetailServlet?id=<%=book.getBook_id()%>"><%=book.getBook_title() %></a></h4>
                                               <div class="product-price">
                                                    <ul>
                                                        <li>Rs.<%=book.getMrp() %></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-link">
                                                <div class="product-button">
                                                   <a href="./addCartServlet?id=<%=book.getBook_id() %>"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>
                                                <div class="add-to-link">
                                                    <ul>
                                                        <li><a href="./bookDetailServlet?id=<%=book.getBook_id()%>" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>	
                                        </div>
                                        <!-- single-product-end -->
							        </div>
							    <%}} %>
							</div>
							
						</div>
						<!-- tab-area-end -->
						
					</div>
				</div>
			</div>
		</div>
		<!-- shop-main-area-end -->
		<%@include file="footer.jsp" %>
		
    </body>

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:52:05 GMT -->
</html>
