<%-- 
    Document   : passwordHint
    Created on : Nov 5, 2016, 5:08:32 AM
    Author     : Admin
--%>

 <%@include file="settings.jsp" %>


  <%
 String result = "";
 String userId ="";
 String password = "";
 //String role = "";
 //String status = "";



if(request.getParameter("hint")!=null){
userId = request.getParameter("userId");
password = loginlogicl.getPassWordHint(userId);
session.setAttribute("userId", userId);
String passwordHint = password.substring(0, 3);
session.setAttribute("passwordHint", passwordHint);
response.sendRedirect("hint.jsp");


}

%>




    <body>
        <div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="signUp.jsp">signUp</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp">Login</a></label>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="0" align="Center">
                <tr>
                 <td>userId</td>
                    <td> <input type="text" name="userId" id="userId" placeholder="userId"/>
                    </td>
                </tr>
                
                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="hint" value="GetHINT" id="hint"/></td>
                </tr>
            </table>
        </form>
    </div>
    </div>
