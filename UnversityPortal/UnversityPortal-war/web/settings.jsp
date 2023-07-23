<%-- 
    Document   : settings
    Created on : Jan 3, 2017, 4:23:46 PM
    Author     : Emma
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

<%
UniversityLogicLocal universityLogicl = null;
try {
            Context c = new InitialContext();
            UniversityLogicLocalHome rv = (UniversityLogicLocalHome) c.lookup("java:comp/env/UniversityLogicBean");
            universityLogicl = rv.create();
        } catch (NamingException ne) {}
%>


