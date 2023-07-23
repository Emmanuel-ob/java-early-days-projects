<%-- 
    Document   : test
    Created on : Dec 17, 2016, 2:15:32 PM
    Author     : 
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

    <%

String sex = "";
String[] courses = null;
int arraylenght = 0;

if(request.getParameter("submit")!=null){

sex = request.getParameter("sex");
courses = request.getParameterValues("courses");
 arraylenght = courses.length;



}
%>
    <body>
        <h1>Hello World!</h1>
        <form  border ="2" align="Center" bgcolor="#00B9B9">


            <table>
                <tr>
                    <td>
                        <label>male</label> <input type="radio" name="sex" value="male">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>female</label> <input type="radio" name="sex" value="female">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>maths</label> <input type="checkbox" name="courses" value="maths">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Name</label> <input type="text" name="courses" id="course">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="courses" value="english">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="courses" value="economics">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="courses" value="computer">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="submit" name="submit" value="submit">
                    </td>
                </tr>

            </table>

         
        </form>
<div id="login">

<div id="container">
<div class="form_wrap" id="form">
<div class="lf_head">
<div class="translate">LOGIN_TO_SYSTEM</div>
</div>
<div class="lf_line">
<label for="user_lang" class="translate">YOUR_LANGUAGE</label>
<select id="user_lang">
<option>-select state-</option>
</select>
</div>
<div class="lf_line">
<label for="uname" class="translate">EMAIL_OR_PHONE</label>
<input type="text" id="uname" name="uname" value="" class="input_text"/><br/>
<p class="lf_line_italic translate">EMAIL_OR_PHONE_FOR_EXAMPLE</p>
</div>
<div class="lf_line">
<label for="upass" class="translate">PASSWORD</label>
<input type="password" id="upass" name="upass" value="" class="input_text"/><br/>
</div>
<div class="lf_line">
<button class="button_orange translate" id="do" title="LOGIN">LOGIN</button>
</div>
<div class="lf_line"><p class="lf_line_italic"><a href="#" id="recover" class="translate">GET_NEW_PASSWORD</a><span class="translate">GET_NEW_PASSWORD_DESCRIPTION</span></p></div>
<div class="lf_line"><p class="lf_line_italic"><a href="/recover/" class="translate">GET_NEW_PASSWORD_BY_CODE</a></p></div>
</div>
</div>

</div>

        <%
       if(arraylenght!=0){

       for(int i =0; i< courses.length; i++){

        %>

        <p><%=courses[i]%></p>

        <%
       }

       }





%>
    </body>
</html>
