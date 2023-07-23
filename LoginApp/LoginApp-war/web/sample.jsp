<%-- 
    Document   : sample
    Created on : Dec 19, 2016, 8:08:37 PM
    Author     : Obute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Login Application </title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Account Login Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	   </script>
</head>

 <%@include file="settings.jsp" %>


  <%
 String result = "";
 String userId ="";
 String password = "";
 //String role = "";
 //String status = "";



if(request.getParameter("login")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");
if(loginlogicl.authenticate(userId).equalsIgnoreCase(password)){
session.setAttribute("userId", userId);
session.setAttribute("password", password);
response.sendRedirect("bio.jsp");

}else{
%>

<script>
alert("Wrong userId or password pls. Verify...")
</script>

<%
}
}
 %>

  <%
 String role = "";
 String status = "";



if(request.getParameter("create")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");
role = request.getParameter("role");
status = request.getParameter("status");
 result = loginlogicl.signUp(userId, password, role, status);
}
 %>
 <body>
<div class="content">
	<h1>Account Login/SignUp</h1>
		<div class="main">
			<div class="profile-left wthree">
				<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>My Account</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span>Sign Up</span></h2></li>
						<div class="clear"> </div>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="got">
							<h6>Got an account? Enter your details below to login</h6>
						</div>
							<div class="login-top">
								<form>
									<input type="text" class="userId" name="userId" id="userId" placeholder="userId" required=""/>
									<input type="password" class="password" name="password" id="password" placeholder="Password" required=""/>
									<input type="checkbox" id="brand" value="">
									<label for="brand"><span></span> Remember me?</label>

                                                                        <div class="login-bottom">
									<ul>
										<li>
											
												<input type="submit" name="login" id="login" value="LOGIN" />
										
										</li>
										<li>
											<a href="#">Forgot password?</a>
										</li>
									</ul>
									<div class="clear"></div>
								</div>
								</form>
								
							</div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="login-top sign-top">
								<form action="#" method="post">
									<input type="text" class="email" name="userId" id="userId" placeholder="userId" required=""/>
									<input type="password" name="password" class="password" placeholder="Password" required=""/>
									<input type="text" type="text" name="role" id="role" placeholder="role" required=""/>
									<input type="text" name="status" id="status" placeholder="status" required=""/>
									<input type="checkbox" id="brand1" value="">
									<label for="brand1"><span></span> Remember me?</label>

                                                                        <div class="login-bottom">
									<ul>
										<li>

												<input type="submit" name="create" id="create"  value="SIGN UP"/>

										</li>
										<li>
											<a href="#">Forgot password?</a>
										</li>
									</ul>
									<div class="clear"></div>
								</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="social-icons w3agile">
				<ul>
				<li class="ggp">Sign in with :</li>
					<li><a href="#"><span class="icons"></span><span class="text">Facebook</span></a></li>
					<li class="twt"><a href="#"><span class="icons"></span><span class="text">Twitter</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			</div>
			<div class="clear"> </div>
	</div>
	<p class="footer">&copy; 2016 Account Login Widget. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts</a></p>
</div>
</body>
</html>

