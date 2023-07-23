<%-- 
    Document   : verify
    Created on : Nov 19, 2016, 2:43:56 PM
    Author     : Admin
--%>
<%@include  file="settings.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        ArrayList listLga = schoollogicl.viewAllLga();
                            Iterator itr2 = listLga.iterator();
                            while(itr2.hasNext()){
                                localGovtHelper localgovth=(localGovtHelper)itr2.next();
                        %>

                        <p><%=localgovth.getLgaName()%></p>


                        
        <%
                                }
                                %>

    </body>
</html>
