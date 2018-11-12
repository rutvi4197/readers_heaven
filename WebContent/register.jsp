<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
    <%@page import="bean.bookBean" %> 
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
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
        
        <style type="text/css">
        input{
        width: 100%;
border: 1px solid #eceff8;
padding: 12px 10px;
        }
        .colorspan{
        color: red;
        }
.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
    </head>
    <body class="register">
    
      <%String registerError=(String)session.getAttribute("registerError");
	if(registerError!=null){ 
	%>  
        <div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <%=registerError %>
</div>
		<%}%>
    
    <%List<categoryBean>list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=register.jsp" />
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
								<li><a href="#" class="active">register</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- user-login-area-start -->
		<div class="user-login-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="login-title text-center mb-30">
							<h2>Sign Up</h2>
						</div>
					</div>
					<form action="./registerServlet" method="post">
					<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12 login-form">
					
						<div class="billing-fields">
						
							<div class="row">
							
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="single-register">
										
											<label>Full Name<span class="colorspan">*</span></label>
											<input type="text" name="name" required/>
									</div>
								</div>
								
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
									
											<label>Email Address<span class="colorspan">*</span></label>
											<input type="email" name="email" required />
										
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
									
											<label>Phone Number<span class="colorspan">*</span></label>
											<input type="text" name="contactNo"   pattern="[789][0-9]{9}" min=10 max=10 required />
										
									</div>
								</div>
							</div>
							<div class="single-register">
							
									<label>Address<span class="colorspan">*</span></label>
									<input type="text" placeholder="Street address" name="address1" required/>
									<input type="text" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional" name="address2" required/>
								
							</div>
							<div class="single-register">
								
									<label>City<span class="colorspan">*</span></label>
									<input type="text"  name="city" required/>
								
							</div>
				
								
									<div class="single-register">
										
											<label>Postcode/zip<span class="colorspan">*</span></label>
											<input type="text" placeholder="PinCode" name="pincode" required max=6 min=6 pattern="[0-9]{6}"/>
										
									</div>
							
							</div>
							<div class="single-register">
								
									<label>Account password<span class="colorspan">*</span></label>
									<input type="password" placeholder="Password" name="password" required/>
								
							</div>
							<div class="single-register">
								
									<label>Confirm password<span class="colorspan">*</span></label>
									<input type="password" placeholder="Password" name="confirmPassword" required/>
								
							</div>
							<div class="single-register">
								<label>Select Address Type</label>
								<input type="radio" name="type" value="home" style="width:4%;">Home
								<input type="radio" name="type" value="office" style="width:4%;">Office
								<input type="radio" name="type" value="other" style="width:4%;">Other
							</div>
							<div class="single-register">
								<input type="submit" value="Register"/>
							</div>
						</div>	
						</form>
					</div>
					
				</div>
			</div>
		
		<!-- user-login-area-end -->
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

<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
</html>
