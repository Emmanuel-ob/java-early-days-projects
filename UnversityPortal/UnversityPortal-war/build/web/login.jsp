<%-- 
    Document   : login
    Created on : Jan 3, 2017, 4:33:13 PM
    Author     : Emma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

	<link rel="stylesheet" href="css/style.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    </head>

    <%@include file="settings.jsp" %>
  <%

 String result = "";
 String userId ="";
 String password = "";
 //String role = "";
 //String status = "";
UsersHelper usersH = null;


if(request.getParameter("login")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");

   if(universityLogicl.validateUser(userId).equalsIgnoreCase(userId)){
       session.setAttribute("userId", userId);
          if(universityLogicl.validatePassword(userId).equalsIgnoreCase(password)){
        usersH = universityLogicl.viewUsers(userId);
        if(usersH.getStatus().equalsIgnoreCase("active")){
        //if role=admin
        if(usersH.getRole().equalsIgnoreCase("admin")){
          response.sendRedirect("adminHome.jsp");
         }else{
         //if role=student
           if(usersH.getRole().equalsIgnoreCase("student")){
             response.sendRedirect("userHome.jsp");
            }
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
    %>

    <%
}else{
%>

<script>
alert("Wrong userId pls. Verify...")
</script>

<%
}
}

 %>

    <body>

        <h1>UNIVERSITY OF TECHNOLOGY</h1>
        <h1>Login Form</h1>
	<div class="main-agileinfo">
		<form action="#" method="post">
			<input type="text" name="userId" class="userId" placeholder="e.g UE/12354/12" required="">
			<input type="password" name="password" class="password" placeholder="Password" required="">
			<ul>
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li>
			</ul>
            <a href="passwordHint.jsp">Forgot Password?</a><br>
			<div class="clear"></div>
			<input type="submit" name="login" value="LOGIN" id="login">
		</form>
	</div>
	<div class="footer-w3l">
            <p class="agile"> &copy; Powered by Systems-Bunch 2016. All Rights Reserved </p>
	</div>


    </body>
</html>




