<%-- 
    Document   : login
    Created on : Nov 12, 2016, 12:16:23 PM
    Author     : Admin
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
SchoolHelper schoolH = null;


if(request.getParameter("login")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");
if(schoollogicl.authenticate(userId).equalsIgnoreCase(password)){

    schoolH = schoollogicl.viewUser(userId);
if(schoolH.getStatus().equalsIgnoreCase("active")){
    //if role=admin
    if(schoolH.getRole().equalsIgnoreCase("admin")){
    response.sendRedirect("adminHome.jsp");
    }else{
    //if role=student
       if(schoolH.getRole().equalsIgnoreCase("student")){
    response.sendRedirect("index.jsp");
    }else{}
    }
    }



}
else{
%>

<script>
alert("Wrong userId or password pls. Verify...")
</script>

<%
}
}
 %>

    <body>
        <!--<div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="signUp.jsp">signUp</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp">Login</a></label>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="0" align="Center">
                <tr>
                 <td>userId</td>
                    <td> <input type="text" name="userId" id="userId" placeholder="userId"/>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td> <input type="password" name="password" id="password" placeholder="password"/>
                    </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="login" value="LOGIN" id="login"/></td>
                    <td><label><a href="passwordHint.jsp">forgot password</a></label></td>
                </tr>
            </table>
        </form>
    </div>
    </div>-->
        <h1>Login Form</h1>
	<div class="main-agileinfo">
		<h2>Login Now</h2>&nbsp;&nbsp;&nbsp;&nbsp;
                
		<form action="#" method="post">
			<input type="text" name="userId" class="userId" placeholder="userId" required="">
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
		<p class="agile"> Powered by Systems-Bunch 2016. All Rights Reserved </p>
	</div>


    </body>
</html>



