<%-- 
    Document   : createTask
    Created on : Nov 29, 2016, 3:38:12 PM
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
<!DOCTYPE HTML PUBLIC >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Systems-Bunch</title>


<link rel="stylesheet" href="css/main.css">
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
String taskName ="";
String description = "";
String teamMember ="";
String taskStatus ="";
String taskCreator ="";


if(request.getParameter("create")!=null){
taskName = request.getParameter("taskName");
description = request.getParameter("description");
teamMember = request.getParameter("teamMember");
taskStatus = request.getParameter("taskStatus");
taskCreator = request.getParameter("taskCreator");
projectlogicl.createTask(taskName, description, teamMember, taskStatus, taskCreator);

}
 %>

    <body>
        <div class="header">
            <h2 class="heading" style="color:teal">Create Tasks</h2>
            <label style="color:red; font-size:16px">Welcome back <%=email%></label>
            <p><label align="center">Want to review old task? <a href="viewTask.jsp"> View Tasks</a></label></p>
        </div>
            
    <br> <br>
    

     <div>
  <form >
    <label for="TaskName">TaskName</label>
    <input type="text" id="TaskName" placeholder="e.g MobileApp Development">

    <label for="description"> Task Description</label>
   
    <textarea style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"
              type="text" multiple="multiple" id="description" name="description" placeholder="e.g Description of your task"></textarea>
<br>
    <label for="title">Select TeamMembers (press ctrl + select)</label>
    <select name="title" id="title" multiple="multiple">
      <option value="BackEnd-Programmer">BackEnd Programmer</option>
      <option value="UI/UX-Designer">UI/UX Designer</option>
      <option value="FrontEnd-Programmer">FrontEnd Programmer</option>
      <option value="SoftwareTester">Software Tester</option>
      <option value="Android-Developer">Android Developer</option>
    </select>

    <label for="taskStatus">TaskStatus</label>
    <select name="taskStatus" id="taskStatus">
      <option>Please select TaskStatus</option>
      <option>Ongoing</option>
      <option>Completed</option>
    </select>

    <label for="taskName">TaskCreator</label>
    <input type="text" name="taskName" id="taskName" type="text" value="<%=email%>">

    
   <input type="submit" name="create" value="CREATE" id="create"/>
  </form>
</div>
  <a href="viewTask.jsp">View Tasks?</a>
  <a href="index.jsp">Log out</a>


  </body>
</html>


