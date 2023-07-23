<%-- 
    Document   : index
    Created on : Nov 12, 2016, 10:23:12 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


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


   <body>
       
        <table align="center">
            <tr>
                <td>

        <ul>
	 <li><a href="">UPDATE INFO</a>
    <ul>
    <li><a href="biodata.jsp">UPDATE INFORMATION</a></li>
    <li><a href="student.jsp"></a></li>
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

    </body>
</html>


