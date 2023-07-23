<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<% LoginLogicLocal loginlogicl = null;%>
    <%

      try {
            Context c = new InitialContext();
            LoginLogicLocalHome rv = (LoginLogicLocalHome) c.lookup("java:comp/env/LoginLogicBean");
            loginlogicl = rv.create();
        } catch (NamingException ne) {}


  %>