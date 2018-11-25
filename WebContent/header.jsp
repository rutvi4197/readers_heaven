<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
   
    
<!-- header-area-start -->
        <header>
			<!-- header-top-area-start -->
			<div class="header-top-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="account-area text-right">
							<%
							if(session.getAttribute("user_id")==null){
							%>
								<ul>
									<li><a href="register.jsp">Register</a></li>
									<li><a href="login.jsp">Login</a></li>
								</ul>
								<%}else{ %>
								<ul>
									<li><a href="./membershipServlet">Membership</a></li>
									<li><a href="./orderServlet">Orders</a></li>
									<li><a href="">Wallet Balance : <%
										if(session.getAttribute("walletAmount")==null){
											%>
											0
										<%}
										else{
											Integer amount=(Integer)session.getAttribute("walletAmount");		
											%>
											<%=amount%>
										<%}
									
									%></a></li>
									<li><a href="./logoutServlet">Logout</a></li>
									
								</ul>
								
								<% } %>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- header-top-area-end -->
			<!-- header-mid-area-start -->
			<div class="header-mid-area ptb-40">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-5 col-xs-12">
							<div class="header-search">
								<form action="./searchServlet" method="get">
									<input type="text" placeholder="Search entire store here..." name="text"/>
									<input type="submit" value="Search" style="background: #f07c29 none repeat scroll 0 0;
									color: #fff;display: inline-block;font-size: 13px;height: 42px;line-height: 40px;position: absolute;
									right: 0;text-align: center;top: 0;width: 42px;border-radius: 0 5px 5px 0px;padding-right:19%">
								</form>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
							<div class="logo-area text-center logo-xs-mrg">
								<a href="index.jsp"><img src="img/logo/logo.png" alt="logo" /></a>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="my-cart">
								<ul>
									<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>My Cart</a>
										
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			
			<!-- header-mid-area-end -->
			<!-- main-menu-area-start -->
			<div class="main-menu-area hidden-sm hidden-xs sticky-header-1" id="header-sticky">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="menu-area">
								<nav>
									
										
											<%
									List<categoryBean>itemlist=(ArrayList)request.getAttribute("listOfCategory");
									if(itemlist!=null){
									for(int i=0;i<itemlist.size();i++)
									{
										categoryBean category=itemlist.get(i);
									%>
										
										<div class="safe-area">
								<a href="./shopServlet?id=<%=category.getCategory_id()%>"><%= category.getCategory_name() %></a>
							</div>
											<%} }%>
									
									
								</nav>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- main-menu-area-end -->
			<!-- mobile-menu-area-end -->
		</header>
		<!-- header-area-end -->