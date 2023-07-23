<%-- 
    Document   : viewAll
    Created on : Nov 1, 2016, 1:27:13 PM
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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>

<!--
<style type="text/css">
           *{margin:0;padding:0;}
           #container
           {
               Margin:50px auto;
padding:15px;
border:solid #cdcdcd 1px;
width : 500px;
height : 320px;
background :#f9f9f9
           }
table, td
           {
width:100%;
bordercollapse:collapse;
padding :10px;

           }
input
          {
width: 100%;
height:35px;
text-align:center;
border:solid #cddcdc 2px;
font-family:Verdana, Geneva, sans-serif;
border-radius:3px;
          }
button
          {
text-align:center;
width: 50%;
height:35px;
border:0;
font-family:Verdana, Geneva, sans-serif;
border-radius:3px;
background:#00a2di;
color:#fff;
font-weight:bolder;
font-size:18px;
          }
hr
          {
border:solid #cecece 1px;

            }
            #header
            {
width : 100%;
height : 50px;
background : #00a2di;
text-align : center;


           }
a{
color : #00a2di;
               text-decoration : none;

          }
</style>

-->


</head>
 <% TrainingLogicLocal traininglogicl = null;%>
    <%

      try {
            Context c = new InitialContext();
            TrainingLogicLocalHome rv = (TrainingLogicLocalHome) c.lookup("java:comp/env/TrainingLogicBean");
            traininglogicl = rv.create();
        } catch (NamingException ne) {}


  %>


<%
ArrayList list = new ArrayList();
Iterator itr = null;
TrainingHelper trainingh = null;
 String result ="";
 String trainingId = "";
 // int intTraininId = Integer.parseInt(trainingId);
String trainingDate = "";
String trainingTime = "";
String trainingCenter = "";


if(request.getParameter("create")!=null){
trainingId = request.getParameter("intTraininId");
int trainingIdInInt = Integer.parseInt(trainingId);
trainingDate = request.getParameter("trainingDate");
trainingTime = request.getParameter("trainingTime");
trainingCenter = request.getParameter("trainingCenter");
 result = traininglogicl.createTraining(trainingIdInInt, trainingDate, trainingTime, trainingCenter);
}


%>
<body>
     <div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="viewTraining.jsp">view</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="createTraining.jsp">create</a></label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="viewAll.jsp">viewAll</a></label></div>
<table>
<tr>
<td>trainingId</td>
<td>trainingDate</td>
<td>trainingTime</td>
<td>trainingCenter</td>
</tr>
<%
list = traininglogicl.viewAllTraining();
itr = list.iterator();
while(itr.hasNext()){
trainingh = (TrainingHelper)itr.next();
                    %>


<tr>
<td><%=trainingh.getTraingId()%></td>
<td><%=trainingh.getTraingDate()%></td>
<td><%=trainingh.getTraingTime()%></td>
<td><%=trainingh.getTraingCenter()%></td>
</tr>


<%


              }

%>
</table>





</body>
</html>

