<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.List" %>
    <%@page import="bean.categoryBean" %>
    <%@page import="bean.membership_cardBean" %> 
     <%@page import="bean.membership_month_mapping" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reader's Header</title>

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
        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
		<!-- modernizr css -->
        <script src="./js/vendor/modernizr-2.8.3.min.js"></script>

<style type="text/css">
div+button{
color:black;
}
</style>
</head>
<body>
<%List<categoryBean>list=(ArrayList)request.getAttribute("listOfCategory");
	if(list==null){ %>
		 <jsp:forward page="/categoryServlet?action=membership.jsp" />
		 <% } %>
       <%@include file="header.jsp" %>
       
       <br><br>
       
       <%List<membership_cardBean>membership=(ArrayList)request.getAttribute("membership");
	if(membership==null){ %>
		 <jsp:forward page="./membershipServlet"/>
		 <% } %>
		  <%List<membership_month_mapping>month=(ArrayList)request.getAttribute("month");
	if(month==null){ %>
		 <jsp:forward page="./membershipServlet"/>
		 <% } %>
       
       <div style="padding-left:3%;">
        <a href="./index.jsp"><button style="float:right;font-size:15px;color:red" class="btn btn-default"><u>Skip</u></button></a>
       <h1>Membership Plan</h1> 
     
       <div>
   
   </div>
 
       </div>
    </br> 
     <div class="alert alert-warning" role="alert" style="margin-left:3%; font-size:20px;margin-right:5%;">
  <%= membership.get(0).getTitle() %>
</div>
<div class="row">
<div class="col-md-4">
		<div class="card" style=" margin-left:10%;width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(0).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(0).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(0).getMonth_id() %>&month=<%=month.get(0).getMonth_number() %>"class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style="width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(1).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(1).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(1).getMonth_id() %>&month=<%=month.get(1).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style=" width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%= month.get(2).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%= month.get(2).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(2).getMonth_id() %>&month=<%=month.get(2).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div>     
		</div>
</div>
<br>


  <div class="alert alert-warning" role="alert" style="margin-left:3%; font-size:20px;margin-right:5%;">
  <%= membership.get(1).getTitle() %>
</div>
<div class="row">
<div class="col-md-4">
		<div class="card" style=" margin-left:10%;width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%= month.get(3).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%= month.get(3).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(3).getMonth_id() %>&month=<%=month.get(3).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style="width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(4).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(4).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(4).getMonth_id() %>&month=<%=month.get(4).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style=" width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(5).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(5).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(5).getMonth_id() %>&month=<%=month.get(5).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div>     
		</div>
</div> 
<br>

  <div class="alert alert-warning" role="alert" style="margin-left:3%; font-size:20px;margin-right:5%;">
  <%= membership.get(2).getTitle() %>
</div>
<div class="row">
<div class="col-md-4">
		<div class="card" style=" margin-left:10%;width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(6).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(6).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(6).getMonth_id() %>&month=<%=month.get(6).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style="width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(7).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(7).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(7).getMonth_id() %>&month=<%=month.get(7).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div> 
		</div>
		<div class="col-md-4">
		<div class="card" style=" width:75%;">
		  <div class="card-body">
		    <h5 class="card-title" style="font-size:25px;"><%=month.get(8).getMonth_number() %> Month Plan</h5>
		   
		    <p class="card-text" style="font-size:20px;">Price: <%=month.get(8).getPrice() %> </p>
		    <a href="./membershipPayment.jsp?id=<%=month.get(8).getMonth_id() %>&month=<%=month.get(8).getMonth_number() %>" class="card-link"><button class="btn btn-info" style="font-size:17px; float:right;">Get this Plan</button></a>
		  </div>
		</div>     
		</div>
</div>
   
   
      
</body>

</html>