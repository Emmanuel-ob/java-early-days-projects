<%-- 
    Document   : settings
    Created on : 12-Jul-2017, 07:54:14
    Author     : Obute
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
     OurLogicLocal ourLogicl = null;
          try {
            Context c = new InitialContext();
            OurLogicLocalHome rv = (OurLogicLocalHome) c.lookup("java:comp/env/OurLogicBean");
            ourLogicl = rv.create();
        } catch (NamingException ne) {}
%>
