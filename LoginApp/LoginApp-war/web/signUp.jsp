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
        <title>JSP Page</title>

<!--
        <style type="text/css">
           *{margin:0;padding:0;}
           #container
           {
               Margin:50px auto;
               padding:15px;
               border:solid #cdcdcd 1px;
               width : 500px;
               height : 410px;
               background :#f9f9f9
           }
           table, td
           {
               width:100%;
               border collapse:collapse;
               padding :10px;

           }
          input
          {
              width: 100%;
              height:35px;
              text-align:center;
              border:solid #cddcdc 2px;
              font-family:Verdana, Geneva, sans-serif;
              border-radius:3px;
          }
          button
          {
              text-align:center;
              width: 50%;
              height:35px;
              border:0;
              font-family:Verdana, Geneva, sans-serif;
              border-radius:3px;
              background:#00a2di;
              color:#fff;
              font-weight:bolder;
              font-size:18px;
          }
          hr
          {
              border:solid #cecece 1px;

            }
            #header
            {
                width : 100%;
                height : 50px;
                background : #00a2di;
                text-align : center;


           }
           a{
               color : #00a2di;
               text-decoration : none;

          }
          </style>

-->


    </head>
    <% LoginLogicLocal loginlogicl = null;%>
    <%

      try {
            Context c = new InitialContext();
            LoginLogicLocalHome rv = (LoginLogicLocalHome) c.lookup("java:comp/env/LoginLogicBean");
            loginlogicl = rv.create();
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
 result = loginlogicl.signUp(userId, password, role, status);
}
 %>

    <body>
        <div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="signUp.jsp">signUP</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp">Login</a></label>
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
    </div>






    </body>
</html>



