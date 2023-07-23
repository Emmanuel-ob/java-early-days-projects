<%--
    Document   : login
    Created on : Nov 4, 2016, 1:55:59 PM
    Author     : Admin
--%>





    <%@include file="settings.jsp" %>


  <%
 String userId = session.getAttribute("userId").toString();
String result = "";

 String surName = "";
 String otherNames = "";
 String sex = "";
 String nationality = "";





if(request.getParameter("login")!=null){
   userId = request.getParameter("userId");
surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
sex = request.getParameter("sex");
nationality = request.getParameter("nationality");
session.setAttribute("userId", userId);
session.setAttribute("surName", surName);
session.setAttribute("otherNames", otherNames);
session.setAttribute("sex", sex);
session.setAttribute("nationality", nationality);
//response.sendRedirect("index.jsp");
//response.sendRedirect("uploadImage.jsp");

response.sendRedirect("uploadImage.jsp");


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
           <table border ="2" align="Center">
                <tr>
                 <td>UserId</td>
                 <td> <input type="text" name="userId" id="userId" value="<%=userId%>" placeholder="userId"/>
                    </td>
                </tr>
                <tr>
                    <td>SurName</td>
                    <td> <input type="text" name="surName" id="surName" placeholder="surName"/>
                    </td>
                </tr>
                <tr>
                    <td>OtherNames</td>
                    <td> <input type="text" name="otherNames" id="otherNames" placeholder="otherNames"/> </td>
                </tr>
                <tr>
                <td>Sex</td>
                    <td> <input type="text" name="sex" id="sex" placeholder="sex"/> </td>
                </tr>
                <tr>
                <td>Nationality</td>
                    <td> <input type="text" name="nationality" id="nationality" placeholder="nationality"/> </td>
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












