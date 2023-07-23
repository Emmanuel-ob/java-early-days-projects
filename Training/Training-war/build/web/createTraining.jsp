<%-- 
    Document   : createTraining
    Created on : Nov 1, 2016, 10:34:44 AM
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


        <style type="text/css">
           *{margin:0;padding:0;}
           #container
           {
               Margin:50px auto;
               padding:15px;
               border:solid #cdcdcd 1px;
               width : 500px;
               height : 410px;
               background :#f9f9f9
           }
           table, td
           {
               width:100%;
               border collapse:collapse;
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
        <div><label><a href="createTraining.jsp">create</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="viewTraining.jsp">view</a></label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="viewAll.jsp">viewAll</a></label></div>
    <br> <br>
    <div id="container">
    <div id="form" calss="result">
        <form method="post" id="reg-form">
            <table border ="0">
                <tr>
                    <td> <input type="text" name="intTraininId" id="intTraininId" placeholder="trainingId"/>
                    </td>
                </tr>
                <tr>
                    <td> <input type="text" name="trainingDate" id="trainingDate" placeholder="trainingDate"/>
                    </td>
                </tr>
                <tr>

                    <td> <input type="text" name="trainingTime" id="trainingTime" placeholder="trainingTime"/> </td>
                </tr>
                <tr>
                    <td> <input type="text" name="trainingCenter" id="trainingCenter" placeholder="trainingCenter"/> </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="create" value="SUBMIT" id="create"/></td>
                </tr>
            </table>
        </form>
    </div>
    </div>






    </body>
</html>



