<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from d29u17ylf1ylz9.cloudfront.net/koparion-v1/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Nov 2018 10:51:35 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Koparion – Book Shop Bootstrap 4 Template</title>
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
    <body class="register">
       <%@include file="header.jsp" %>
       
       		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="#">Home</a></li>
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
							<p>doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo<br>inventore veritatis et quasi architecto beat</p>
						</div>
					</div>
					<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
						<div class="billing-fields">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<form action="#">
											<label>First Name<span>*</span></label>
											<input type="text"/>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<form action="#">
											<label>Last Name<span>*</span></label>
											<input type="text"/>
										</form>
									</div>
								</div>
							</div>
							<div class="single-register">
								<form action="#">
									<label>Company Name</label>
									<input type="text"/>
								</form>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<form action="#">
											<label>Email Address<span>*</span></label>
											<input type="text"/>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<form action="#">
											<label>Phone<span>*</span></label>
											<input type="text"/>
										</form>
									</div>
								</div>
							</div>
							<div class="single-register">
								<label>Country<span>*</span></label>
								<select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
									<option value="country">Select a country</option>
									<option value="Islands">Aland Islands</option>
									<option value="Afghanistan">Afghanistan</option>
									<option value="Albania">Albania</option>
									<option value="Samoa">American Samoa</option>
								</select>
							</div>
							<div class="single-register">
								<form action="#">
									<label>Address<span>*</span></label>
									<input type="text" placeholder="Street address"/>
									<input type="text" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional"/>
								</form>
							</div>
							<div class="single-register">
								<form action="#">
									<label>Town/City<span>*</span></label>
									<input type="text" />
								</form>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<label>State<span>*</span></label>
										<select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
											<option value="Select">Select a State</option>
											<option value="Andhra">Andhra Pradesh</option>
											<option value="Pradesh">Arunachal Pradesh</option>
											<option value="Delhi">Delhi</option>
											<option value="Lakshadeep">Lakshadeep</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="single-register">
										<form action="#">
											<label>Postcode/zip<span>*</span></label>
											<input type="text" placeholder="Postcode/zip"/>
										</form>
									</div>
								</div>
							</div>
							<div class="single-register">
								<form action="#">
									<label>Account password<span>*</span></label>
									<input type="text" placeholder="Password"/>
								</form>
							</div>
							<div class="single-register">
								<form action="#">
									<label>Confirm password<span>*</span></label>
									<input type="text" placeholder="Password"/>
								</form>
							</div>
							<div class="single-register single-register-3">
								<input id="rememberme" type="checkbox" name="rememberme" value="forever">
								<label class="inline">I agree <a href="#">Terms & Condition</a></label>
							</div>
							<div class="single-register">
								<a href="#">Register</a>
							</div>
						</div>
					</div>
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
