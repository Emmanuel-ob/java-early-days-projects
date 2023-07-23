<%-- 
    Document   : settings
    Created on : Nov 28, 2016, 12:32:42 PM
    Author     : Admin
--%>
<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% EmployeeLogicLocal employeeLogicl = null;
//EmployeeHelper employeeHelper = null;
%>
    <%

try {
            Context c = new InitialContext();
            EmployeeLogicLocalHome rv = (EmployeeLogicLocalHome) c.lookup("java:comp/env/EmployeeLogicBean");
            employeeLogicl = rv.create();
        } catch (NamingException ne) {}

  %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
