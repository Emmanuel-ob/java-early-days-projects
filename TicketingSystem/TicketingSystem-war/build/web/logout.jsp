<%-- 
    Document   : logout
    Created on : 01-Aug-2017, 07:41:58
    Author     : Obute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="setting.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <%
    session.removeAttribute("email");
    response.sendRedirect("index.jsp");
    %>
    <body>
       
    </body>
</html>
