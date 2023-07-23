<%-- 
    Document   : viewAllUser
    Created on : Nov 26, 2016, 8:55:16 AM
    Author     : Admin
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
<%@include file="settings.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SchoolApp Admin</title>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

td {
	font-family: Arial, Helvetica, sans-serif;
}

th {
	font-family: Arial, Helvetica, sans-serif;
}
ul {
  font-family: Arial, Verdana;
  font-size: 14px;
  margin: 0;
  padding: 0;
  list-style: none;
}
ul li {
  display: block;
  position: relative;
  float: left;
}
li ul { display: none; }
ul li a {
  display: block;
  text-decoration: none;
  color: #ffffff;
  border-top: 1px solid #ffffff;
  padding: 5px 15px 5px 15px;
  background: #2C5463;
  margin-left: 1px;
  margin-bottom:1px;
  white-space: nowrap;
}
ul li a:hover { background: #617F8A; }
li:hover ul {
  display: block;
  position: absolute;
}
li:hover li {
  float: none;
  font-size: 11px;
}
li:hover a {  }
li:hover li a:hover { }



</style>





 </head>


<%
String result = "";
 String userId ="";
 String password = "";
 String role = "";
 String status = "";
ArrayList list = new ArrayList();
Iterator itr = null;
SchoolHelper schoolH = null;

%>





<body>

        <table align="center">
            <tr>
                <td>

        <ul>
	 <li><a href="">ADMIN CONTROLS</a>
    <ul>
    <li><a href="control.jsp">UPDATE USER LOGIN</a></li>
    <li><a href="viewAllUser.jsp">VIEW ALL USER</a></li>
    <li><a href="createUser.jsp">CREATE USER</a></li>
    </ul>


  </li>
  <li><a href="">VIEW INFOR</a>
    <ul>
    <li><a href="createMeal.jsp">VIEW ALL INFOR</a></li>
    </ul>


  </li>



   <li><a href="">About Us</a>
    <ul>
    <li><a href="">Objective</a></li>
    <li><a href="">History</a></li>
    <li><a href="">Vision</a></li>
    </ul>
  </li>
  <li><a href="">Products</a>
    <ul>
    <li><a href="">WEB DESIGN</a></li>
    <li><a href="">MOBILE APPLICATION</a></li>
    <li><a href="">NETWORKING</a></li>
    <li><a href="">BUSINESS APPLICATION</a></li>
    <li><a href="">CONSULTANCY</a></li>
    </ul>
  </li>
</ul>
                </td>
                <td align="right" >
    <p  align="right"><a href="login.jsp">Logout here</a></p>

                </td>
            </tr>
        </table>

<div id="header">
<label>coding</label>
</div>


<table align="Center" width="700" border="2" >
<tr>
<td>userId</td>
<td>passwor</td>
<td>role</td>
<td>status</td>
</tr>
<%
list = schoollogicl.viewAllUser();
itr = list.iterator();
while(itr.hasNext()){
schoolH = (SchoolHelper)itr.next();
                    %>


<tr>
<td><%=schoolH.getUserId()%></td>
<td><%=schoolH.getPassword()%></td>
<td><%=schoolH.getRole()%></td>
<td><%=schoolH.getStatus()%></td>
</tr>


<%


              }

%>
</table>





</body>
</html>

