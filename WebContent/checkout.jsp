<%@page import="bean.user_addressBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
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
        
        <style type="text/css">
        .box {
    width: 320px;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
	}
	button{
	background: #333 none repeat scroll 0 0;
border: 0 none;
border-radius: 0;
color: #fff;
display: inline-block;
font-size: 14px;
font-weight: 700;
height: 50px;
line-height: 50px;
padding: 0 28px;
text-transform: uppercase;
width: auto;
transition: .3s;
}
        </style>
    </head>
    <body class="checkout">
    <%List<categoryBean>list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=checkout.jsp" />
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
								<li><a href="#" class="active">checkout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<%String num=request.getParameter("total");%>
		<!-- breadcrumbs-area-end -->
		<!-- entry-header-area-start -->
		<div class="entry-header-area">
			<div class="container">
				<div class="row">
					
							<h2>Select Delivery Address <span style="float:right;font-size:20px;"><a href="./addAddress.jsp?total=<%=num%>">Add New Address</a></span></h2>
							 <%List<user_addressBean>addresss=(ArrayList)request.getAttribute("addresss");
							if(addresss==null){ %>
							 <jsp:forward page="/userAddressServlet" />
		 					<% } else{
		 						
		 						for(int i=0;i<addresss.size();i++)
								{
		 							user_addressBean a=addresss.get(i);
							%>
							<div class="col-lg-4">
						<div class="entry-header-title">
							<div class="box mb-40">
                             <h4>Address:</h4><%=a.getUser_address() %>
                                <div class="product-details ">
                       				Contact No:<%=a.getContact_no()%><br>
                                   Address Type:<%=a.getAddress_type() %>
                                </div>
                               <div>
                               
                               <a href="./checkoutServlet?total=<%=num%>"><button>Select Address</button></a>
                               </div>
                            </div>
                            <!-- single-product-end -->
                        
							</div>
					</div>
					   <% } } %>
				</div>
			</div>
		</div>
		<!-- entry-header-area-end -->
		
		
		
		
				<!-- footer-area-start -->
	 <%@include file="footer.jsp" %>
		<!-- footer-area-end -->
		
		
	
    </body>

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
</html>
