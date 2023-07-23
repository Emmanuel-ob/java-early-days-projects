<%-- 
    Document   : setting
    Created on : 12-Jul-2017, 13:37:32
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
     TicketLogicLocal ticketLogicl = null;
           try {
            Context c = new InitialContext();
            TicketLogicLocalHome rv = (TicketLogicLocalHome) c.lookup("java:comp/env/TicketLogicBean");
            ticketLogicl = rv.create();
        } catch (NamingException ne) {}
%>
