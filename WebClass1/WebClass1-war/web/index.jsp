<%-- 
    Document   : index
    Created on : Jan 28, 2017, 2:01:26 PM
    Author     : Uche
--%>

<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Class1</title>


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
    <% MyLogicLocal mylogicsl = null;%>
    <%

      try {
            Context c = new InitialContext();
            MyLogicLocalHome rv = (MyLogicLocalHome) c.lookup("java:comp/env/MyLogicBean");
            mylogicsl = rv.create();
        } catch (NamingException ne) {}


  %>


  <%
  String result="";
  String firstName ="";
  String surName ="";
  String sex ="";
  String age ="";
  String maritalStatus ="";
  if(request.getParameter("create")!=null){
    firstName = request.getParameter(firstName);
    surName = request.getParameter(surName);
    sex = request.getParameter(sex);
    age = request.getParameter(age);
    maritalStatus = request.getParameter(maritalStatus);
}

if(result!=""){
%>

<script>
    alert("record created succesfully.....");
</script>

  <%
}

  %>

    <body>
        <div id="header">
            <label>coding</label>
        </div>
        <div><label><a href="index.jsp">create</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="viewStaff.jsp">view</a></label></div>
    <br> <br>
    <div id="container">
    <div id="form" calss="result">
        <form method="post" id="reg-form">
            <table border ="0">
                <tr>
                    <td>FirstName</td>
                    <td> <input type="text" name="firstName" id="firstName" placeholder=""/>
                    </td>
                </tr>
                <tr>
                    <td>SurName</td>
                    <td> <input type="text" name="surName" id="surName" placeholder=""/>
                    </td>
                </tr>
                <tr>
                    <td>Sex</td>
                    <td> <input type="text" name="sex" id="sex" placeholder=""/> </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td> <input type="text" name="age" id="age" placeholder=""/> </td>
                </tr>
                 <tr>
                     <td>MaritalStatus</td>
                    <td> <input type="text" name="maritalStatus" id="maritalStatus" placeholder=""/> </td>
                </tr>

                <tr>
                    <td align="center"><input type="submit" name="create" value="SUBMIT" id="create"/></td>
                </tr>
            </table>
        </form>
    </div>
    </div>





