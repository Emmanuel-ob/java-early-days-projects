<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<% SchoolLogicLocal schoollogicl = null;%>
    <%

       try {
            Context c = new InitialContext();
            SchoolLogicLocalHome rv = (SchoolLogicLocalHome) c.lookup("java:comp/env/SchoolLogicBean");
            schoollogicl = rv.create();
        } catch (NamingException ne) {}


  %>