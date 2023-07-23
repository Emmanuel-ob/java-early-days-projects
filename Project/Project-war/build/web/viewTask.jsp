<%-- 
    Document   : viewTask
    Created on : Nov 29, 2016, 3:39:23 PM
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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Systems-Bunch</title>




</head>


<%@include file="settings.jsp" %>
<%
String result = "";
 String taskName ="";
 String description = "";
 String teamMember = "";
 String taskStatus = "";
 String taskCreator = "";
ArrayList list = new ArrayList();
Iterator itr = null;
taskHelper taskH = null;

%>


<%

if(request.getParameter("View")!=null){

 taskName = request.getParameter("taskName");
 taskH = projectlogicl.viewTasks(taskName);
 description = taskH.getDescription();
teamMember = taskH.getTeamMembers();
taskStatus = taskH.getTaskStatus();
taskCreator = taskH.getTaskCreator();


}

%>

<%
if(request.getParameter("Update")!=null){
taskName = request.getParameter("taskName");
description = request.getParameter("description");
teamMember = request.getParameter("teamMember");
taskStatus = request.getParameter("taskStatus");
taskCreator = request.getParameter("taskCreator");
result = projectlogicl.updateTask(taskName, description, teamMember, taskStatus, taskCreator);


if(result !=null){
%>
<script>
    alert("Record Updated Succesfully.....");
</script>
<%
}

}
%>


<%
if(request.getParameter("Delete")!=null){
   taskName = request.getParameter("taskName");
   projectlogicl.deleteTask(taskName);


if(result !=null){
%>

<script>
    alert("Record Deleted Succesfully.....");
</script>
<%
}
}
%>



<body>



        

<div id="header">
    <label style="color:red; font-size:16px">ENTER A VALID TASKNAME </label>
</div>
<!--<div><label><a href="employeeAll.jsp">Insert</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="employeeAll.jsp">View</a></label></div>-->
<br><br>
<div id="container">
<div id="form" calss="result">
<form method="post" id="reg-form">
    <table border ="2" align="Center" width="700">
<tr>
<td>TaskName:</td>
<td>
<input type="text" name="taskName" id="taskName" placeholder="taskName" value="<%=taskName%>"/>
</td>
</tr>
<tr>
<td>Description:</td>
<td><input type="text" name="description" id="description" placeholder="description"value="<%=description%>"/>
</td>
</tr>
<tr>
<td>TeamMember</td>
<td><input type="text" name="teamMember" id="teamMember" placeholder="teamMember"value="<%=teamMember%>"/>
</tr>
<tr>
<td>TaskStatus:</td>
<td><input type="text" name="taskStatus" id="taskStatus" placeholder="taskStatus"value="<%=taskStatus%>"/>
</tr>
<tr>
<td>TaskCreator:</td>
<td><input type="text" name="taskCreator" id="taskCreator" placeholder="taskCreator"value="<%=taskCreator%>"/>
</tr>


<tr>
<td><hr/></td>
</tr>
<tr>
<td align="center" colspan="2">
<input type="submit" name="create" value="CREATE" id="create"/>
<input type="submit" name="View" value="View" id="create"/>
<input type="submit" name="Update" value="Update" id=""/>
<input type="submit" name="Delete" value="Delete" id=""/>
</td>
</tr>
</table>
</form>
<label><a href="index.jsp">Log out</a></label>
</div>
</div>


</body>
</html>

