<%-- 
    Document   : createTeam
    Created on : Nov 29, 2016, 3:38:46 PM
    Author: Emmanuel Obute
    Email: emmanuel6.obute@gmail.com
--%>

<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<!DOCTYPE HTML >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Systems-Bunch</title>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 25%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0 0 200px;
    border: none;
    border-radius: 4px;
    cursor: pointer;


}

input[type=submit]:hover {
    background-color: red;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
	width: 50%;
	margin: auto;
}
.header {
    border-radius: 5px;
    background-color: #CCCCCC;
    padding: 20px;
	width: 100%;
	margin: auto;
}
a:link, a:visited {
    background-color:#99CC99;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: red;
</style>



    </head>
        <%@include file="settings.jsp" %>




  <%
 String email = session.getAttribute("email").toString();
 String accountEmail ="";
 String title = "";




if(request.getParameter("create")!=null){
accountEmail = request.getParameter("accountEmail");
title = request.getParameter("title");
projectlogicl.createTeam(accountEmail, title);
response.sendRedirect("createTask.jsp");

}
 %>

    <body>
        <div class="header">
            <h2 class="heading" style="color:teal" >Create Team Members</h2>
            <label style="color:red; font-size:20px" >Welcome back <%=email%></label>
            <p><label style="color:blue; font-size:20px">Already have a team? <a href="createTask.jsp"> Create new task</a></label></p>
        </div>
         
    <br> <br>
    
  <div>
  <form >
    <label for="accountEmail">AccountEmail</label>
    <input type="text" name="accountEmail" id="accountEmail" placeholder="e.g, user@sendmail.com">


    <label for="title">Title</label>
    <select name="title" id="title">
      <option>Please select Title</option>
      <option value="BackEnd-Programmer">BackEnd Programmer</option>
      <option value="UI/UX-Designer">UI/UX Designer</option>
      <option value="FrontEnd-Programmer">FrontEnd Programmer</option>
      <option value="SoftwareTester">Software Tester</option>
      <option value="Android-Developer">Android Developer</option>
    </select>
   <input type="submit" name="create" value="CREATE" id="create"/>
  </form>
</div>
  <a href="index.jsp">Log out</a>






    </body>
</html>

