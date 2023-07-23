<%-- 
    Document   : login
    Created on : Nov 4, 2016, 1:55:59 PM
    Author     : Admin
--%>




  
    <%@include file="settings.jsp" %>


  <%
 String result = "";
 String userId ="";
 String password = "";
 //String role = "";
 //String status = "";



if(request.getParameter("login")!=null){
userId = request.getParameter("userId");
password = request.getParameter("password");
if(loginlogicl.authenticate(userId).equalsIgnoreCase(password)){
session.setAttribute("userId", userId);
session.setAttribute("password", password);
response.sendRedirect("bio.jsp");

}else{
%>

<script>
alert("Wrong userId or password pls. Verify...")
</script>

<%
}
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
                    <td>Password</td>
                    <td> <input type="password" name="password" id="password" placeholder="password"/>
                    </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="login" value="LOGIN" id="login"/></td>
                    <td><label><a href="passwordHint.jsp">forgot password</a></label></td>
                </tr>
            </table>
        </form>
    </div>
    </div>






   





