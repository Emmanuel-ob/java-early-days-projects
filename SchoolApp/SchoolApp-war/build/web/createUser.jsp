<%--
    Document   : signUp
    Created on : Nov 4, 2016, 1:22:38 PM
    Author     : Admin
--%>

<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creat User Page</title>
        <link rel="stylesheet" href="css/style.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>





    </head>
    <% SchoolLogicLocal schoollogicl = null;%>
    <%

       try {
            Context c = new InitialContext();
            SchoolLogicLocalHome rv = (SchoolLogicLocalHome) c.lookup("java:comp/env/SchoolLogicBean");
            schoollogicl = rv.create();
        } catch (NamingException ne) {}


  %>


  <%
 String result = "";
 String userId ="";
 String password = "";
 String role = "";
 String status = "";



if(request.getParameter("create")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");
role = request.getParameter("role");
status = request.getParameter("status");
 schoollogicl.createUser(userId, password, role, status);
}
 %>

    <body>
       <!-- <div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="update.jsp">UPDATE-USER</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="createUser.jsp">CREATE-STAFF</a></label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="view.jsp">VIEW-STUDENTS</a></label>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="2" align="Center">
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
                    <td>Role</td>
                    <td> <input type="text" name="role" id="role" placeholder="role"/> </td>
                </tr>
                <tr>
                <td>Status</td>
                    <td> <input type="text" name="status" id="status" placeholder="status"/> </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="create" value="CREATE" id="create"/></td>
                </tr>
            </table>
        </form>
    </div>
    </div>-->
<h1>SignUp Form</h1>
	<div class="main-agileinfo">
		<h2>Create User</h2>&nbsp;

		<form action="#" method="post">
			<input type="text" name="userId" class="userId" placeholder="userId" required="">
			<input type="password" name="password" class="password" placeholder="Password" required="">
                        <input type="text" name="role" id="role" placeholder="role" required="">
                        <input type="text" name="status" id="status" placeholder="status" required="">
			<ul>
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li>
			</ul>
            <a href="adminHome.jsp">BACK?</a><br>
			<div class="clear"></div>
			<input type="submit" name="create" value="CREATE" id="create">
		</form>
                <a href="adminHome.jsp"><input type="submit" value="BACK" ></a>
	</div>
	<div class="footer-w3l">
		<p class="agile"> Powered by Systems-Bunch 2016. All Rights Reserved </p>
	</div>



    </body>
</html>



