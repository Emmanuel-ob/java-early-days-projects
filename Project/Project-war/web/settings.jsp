<%-- 
    Document   : settings
    Created on : Nov 29, 2016, 3:40:01 PM
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%projectLogicLocal projectlogicl = null;%>
    <%

       try {
            Context c = new InitialContext();
            projectLogicLocalHome rv = (projectLogicLocalHome) c.lookup("java:comp/env/projectLogicBean");
            projectlogicl = rv.create();
        } catch (NamingException ne) {}


  %>
