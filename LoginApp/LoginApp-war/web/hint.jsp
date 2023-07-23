<%-- 
    Document   : hint
    Created on : Jan 4, 1980, 2:30:19 PM
    Author     : Admin
--%>

<%@include file="settings.jsp" %>


<%
String userId = session.getAttribute("userId").toString();
String passwordHint = session.getAttribute("passwordHint").toString();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="0" align="Center">
                <tr>
                 <td>userId</td>
                    <td> <input type="text" name="userId" id="userId" value="<%=userId%>" placeholder="userId"/>
                    </td>
                </tr>
                <tr>
               <td>HINT</td>
               <td><input type="text" name="hint" id="hint" value="<%=passwordHint%>"/></td>

                </tr>
                <tr>
                    <td> <hr/> </td>

            </table>
        </form>
    </div>
    </div>
    </body>
</html>
