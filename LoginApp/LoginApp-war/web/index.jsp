
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
       <div><label><a href="signUp.jsp">signUP</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp">Login</a></label>
        </div>
        <table align="center">
            <tr>
                <td>

        <ul>
	 <li><a href="">Order Summary</a>
    <ul>
    <li><a href="addChurchMember.jsp"></a></li>
    <li><a href="summaryOrder.jsp">summarize order</a></li>
    <li><a href="addSocietyMember.jsp"></a></li>

    </ul>
  </li>
  <li><a href="">Modify?</a>
    <ul>
    <li><a href="createMeal.jsp">Meal</a></li>
    <li><a href="createState.jsp">State</a></li>
    <li><a href="createLocation.jsp">Location</a></li>

    </ul>
  </li>
  <li> <a href="#">Views</a>
      <ul>
        
     <li><a href="orderOnProcessing.jsp">order on processing</a></li>
     <li><a href="processedOrderPage.jsp">processed orders</a></li>
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
    <li><a href="">Hp</a></li>
    <li><a href="">Samsung</a></li>
    <li><a href="">Nokia</a></li>
    <li><a href="">Sony</a></li>
    <li><a href="">Tecno</a></li>
    </ul>
  </li>
</ul>
                </td>
                <td align="right" >
    <p  align="right"><a href="logout.jsp">Logout here</a></p>

                </td>
            </tr>
        </table>

    </body>
</html>

