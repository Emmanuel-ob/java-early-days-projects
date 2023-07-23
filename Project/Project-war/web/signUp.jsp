<%-- 
    Document   : signUp
    Created on : Nov 29, 2016, 3:33:42 PM
    Author: Emmanuel Obute
    Email: emmanuel6.obute@gmail.com
--%>

<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<!DOCTYPE HTML PUBLIC>
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
 String email = "";
 String name ="";
 String password = "";
 String result;
 



if(request.getParameter("create")!=null){
email = request.getParameter("email");
password = request.getParameter("password");
name = request.getParameter("name");

result = projectlogicl.confirmEmail(email);
 if(result.equalsIgnoreCase("Email already exist")) {
     
     %>

    <script>
     alert("Email already exist")
    </script>

    <%


   }else{
    projectlogicl.signUp(email, name, password);
   %>

    <script>
     alert("Signup successful!!!!")
    </script>


<%
response.sendRedirect("login.jsp");
}

}

 %>

    <body>
<div class="content">
	<h1>Account SignUp</h1>
		<div class="main">
			<div class="profile-left wthree">
				<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span>Sign Up</span></h2></li>
						<div class="clear"> </div>
					</ul>
					<div class="resp-tabs-container">
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="login-top sign-top">
								<form action="#" method="post">
                                                                        <input type="text" type="name" name="name" id="name" placeholder="e.g Mark Sunday" required=""/>
									<input type="text" class="email" name="email" id="email" placeholder="e.g name@dddmail.com" required=""/>
									<input type="password" name="password" class="password" placeholder="*******" required=""/>
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
                                                                          
                                                                          <li>
                                                                            <label align="center">Already have an account?<a href="login.jsp">Login</a></label>
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
	<p class="footer">2016 Systems-Bunch. All Rights Reserved | Design by </p>
</div>
</body>


 <!--<body>
        <div id="header">
            <label></label>
            <h2 class="heading" style="color:teal" >SgnUp Page</h2>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="2" align="Center">
                <tr>
                 <td>Name</td>
                    <td> <input type="text" name="name" id="name" placeholder="e.g, Mark Seun"/>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td> <input type="text" name="email" id="email" placeholder="e.g, name@sendmail.com"/>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td> <input type="password" name="password" id="password" placeholder="e.g, ********"/> </td>
                </tr>
                

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="create" value="CREATE" id="create"/></td>
                    <label align="center">Already have an account?<a href="login.jsp">Login</a></label>
                </tr>
            </table>
        </form>
        
    </div>
    </div>






    </body>-->
</html>
