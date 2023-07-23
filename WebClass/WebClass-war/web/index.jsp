<%-- 
    Document   : index
    Created on : Jan 30, 2017, 2:14:49 PM
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


    </head>
    <% OurLogicLocal ourlogicsl = null;%>
    <%

       try {
            Context c = new InitialContext();
            OurLogicLocalHome rv = (OurLogicLocalHome) c.lookup("java:comp/env/OurLogicBean");
            ourlogicsl = rv.create();
        } catch (NamingException ne) {}


  %>


  <%
  String result="";
  String firstName ="";
  String surName ="";
  String sex ="";
  String age ="";
  String maritalStatus ="";
  String dateTime ="";
  if(request.getParameter("create")!=null){
    firstName = request.getParameter("firstName");
    surName = request.getParameter("surName");
    sex = request.getParameter("sex");
    age = request.getParameter("age");
    maritalStatus = request.getParameter("maritalStatus");
    int ageInt = Integer.parseInt(age);
    result = ourlogicsl.createBiodata(firstName, surName, sex, ageInt, maritalStatus, dateTime);
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
            <table border ="1" align="center">
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






