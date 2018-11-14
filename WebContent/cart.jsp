<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
    <%@page import="bean.bookBean" %>   
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
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
		 <jsp:forward page="/cartServlet" />
		 <% } %>
       <%@include file="header.jsp" %>
       
		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="#" class="active">cart</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- entry-header-area-start -->
		<div class="entry-header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="entry-header-title">
							<h2>Cart</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- entry-header-area-end -->
		<!-- cart-main-area-start -->
		<div class="cart-main-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<form action="#">
							<div class="table-content table-responsive">
								<table>
									<thead>
										<tr>
											<th class="product-thumbnail">Image</th>
											<th class="product-name">Product</th>
											<th class="product-price">Price</th>
											<th class="product-remove">Remove</th>
										</tr>
									</thead>
									<tbody>
										
										<% List<bookBean>rb=(ArrayList)request.getAttribute("rentBook");
										int sum=0;
											if(rb==null){%>
											<h4>No Product in the cart</h4>	
										<% 	}
											else{
												for(int i=0;i<rb.size();i++){
													bookBean book=rb.get(i);
													sum+=book.getMrp();
										
										%>
										<tr>
											<td class="product-thumbnail"><a href="#"><img src="<%=book.getPhoto() %>" alt="man" /></a></td>
											<td class="product-name"><a href="#"><%=book.getBook_title() %></a></td>
											<td class="product-price"><span class="amount">Rs.<%=book.getMrp() %></span></td>
											<td class="product-remove"><a href="./deleteCartServlet?id=<%=book.getRent_id()%>"><i class="fa fa-times"></i></a></td>
										</tr>
										<%}} %>
										
									</tbody>
								</table>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
                   
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="cart_totals">
                            <h2>Cart Totals</h2>
                           <h3>Total : Rs.<%=sum %></h3>
                           <div class="wc-proceed-to-checkout">
                           <%
                           	if(session.getAttribute("walletAmount")==null){%>
                           	 <a href="./payment.jsp?total=<%=sum%>">Proceed to Payment</a>
                           	<% }else{
                           		Integer t=(Integer)session.getAttribute("walletAmount");
                           		if(sum<=t){%>
                           		 <a href="./checkout.jsp?total=<%=sum%>">Proceed to Checkout</a>
                           		<% }
                           		else{%>
                           		<br>
                           			<h4 style="color:red">You Don't Have enough Balance for Checkout</h4>
                           		<% }
                           	}
                           %>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>
		<!-- cart-main-area-end -->
		<%@include file="footer.jsp" %>
		
		
	
    </body>

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:38 GMT -->
</html>
