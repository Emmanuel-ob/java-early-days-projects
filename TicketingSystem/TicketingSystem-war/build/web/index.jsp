<%-- 
    Document   : index
    Created on : 12-Jul-2017, 12:14:08
    Author     : Obute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="setting.jsp" %>

<html>
<head>
	<title>Login page</title>
	<link rel="stylesheet" href="css/style.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>

<%

 String result = "";
 String email ="";
 String password = "";
 //String role = "";
 //String status = "";
UserMgrHelper userMgrH = null;


if(request.getParameter("login")!=null){
email = request.getParameter("email");
password = request.getParameter("password");

   if(ticketLogicl.validateUser(email).equalsIgnoreCase(email)){
       session.setAttribute("email", email);
          if(ticketLogicl.validatePassword(email).equalsIgnoreCase(password)){
        userMgrH = ticketLogicl.viewUser(email);
        if(userMgrH.getStatus().equalsIgnoreCase("active")){
        //if role=admin
        if(userMgrH.getRole().equalsIgnoreCase("admin")){
          response.sendRedirect("admin.jsp");
         }else
         //if role=engineer
           if(userMgrH.getRole().equalsIgnoreCase("engineer")){
             response.sendRedirect("engineer.jsp");
             }else{
         //if role=customerCare
             
             response.sendRedirect("customerCare.jsp");
            
          
           }
        }else{
         %>

    <script>
     alert("Your Status is Inactive, Verify...")
    </script>

    <%
     }

   }else{
   %>

    <script>
     alert("Wrong password pls. Verify...")
    </script>

    <%
     }
}else{
   %>

    <script>
     alert("Wrong email pls. Verify...")
    </script>

    <%
     }
}
 %>
<body>
	<h1> Login Form</h1>
	<div class="main-agileinfo">
		<h2>Login Now</h2>
		<form action="#" method="post">
			<input type="text" name="email" class="name" placeholder="email" required="">
			<input type="password" name="password" class="password" placeholder="Password" required="">
			<ul>
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li>
			</ul>
            <a href="#">Forgot Password?</a><br>
			<div class="clear"></div>
			<input type="submit" name="login" value="Login">
		</form>
	</div>
	<div class="footer-w3l">
		<p class="agile"> &copy; 2016 Lambent Login Form . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div>


   
</body>
</html>