<%-- 
    Document   : login
    Created on : Nov 29, 2016, 3:32:29 PM
   Author: Emmanuel Obute
   Email: emmanuel6.obute@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC >

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Systems-Bunch</title>
          <!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<link href="css/style_1.css" rel="stylesheet" type="text/css" media="all" />
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
 String email ="";
 String password ="";
loginHelper loginH = null;


if(request.getParameter("login")!=null){
email = request.getParameter("email");
password = request.getParameter("password");
if(projectlogicl.authenticateUser(email).equalsIgnoreCase(email)) {
    session.setAttribute("email", email);
  if(projectlogicl.validatePassword(email).equalsIgnoreCase(password)){
response.sendRedirect("createTeam.jsp");
session.setAttribute("email", email);

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
     alert("Wrong userId/email pls. Verify...")
    </script>


<%
}
}

 %>



<body>
<div class="content">
	<h1>Account Login</h1>
		<div class="main">
			<div class="profile-left wthree">
				<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>My Account</span></li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="got">
							<h6>Got an account? Enter your details to login</h6>
						</div>
							<div class="login-top">
								<form>
									<input type="text" class="email" name="email" id="email" placeholder="e.g name@dddmail.com" required=""/>
									<input type="password" class="password" name="password" id="password" placeholder="******" required=""/>
									<input type="checkbox" id="brand" value="">
									<label for="brand"><span></span> Remember me?</label>

                                                                        <div class="login-bottom">
									<ul>
										<li>

												<input type="submit" name="login" id="login" value="LOGIN" />

										</li>
										<li>
											<a href="passwordHint.jsp">Forgot password?</a>
                                                                                        
										</li>
									</ul>
									<div class="clear"></div>
								</div>
								</form>

							</div>
						</div>

					</div>
				</div>

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
	<p class="footer">&copy; 2016 Systems-Bunch </p>
</div>
</body>



 <!--<body>
        <div id="header">
            
        </div>
        
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <h2 class="heading" style="color:teal" >Login Page</h2>
<div><label align="center" ><a href="signUp.jsp">signUp</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp"></a></label>
        </div>
            <table border ="0" align="Center">
                
                <tr>
                 <td>Email</td>
                    <td> <input type="text" name="email" id="email" placeholder="e.g, name@sendmail.com"/>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td> <input type="password" name="password" id="password" placeholder="e.g, **********"/>
                    </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="login" value="LOGIN" id="login"/></td>
                    <label align="center"><a href="passwordHint.jsp">forgot password?</a></label>
                </tr>
                
            </table>
        </form>
        
    </div>
    </div>


    </body>-->
</html>

