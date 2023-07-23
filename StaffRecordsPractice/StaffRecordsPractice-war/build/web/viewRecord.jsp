<%-- 
    Document   : viewRecord
    Created on : Oct 31, 2016, 5:30:03 PM
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

-->


    </head>
    <%
    OurLogicLocal ourlogicsl = null;
    StaffHelper staffh = null;
    %>





    <%

       try {
            Context c = new InitialContext();
            OurLogicLocalHome rv = (OurLogicLocalHome) c.lookup("java:comp/env/OurLogicBean");
            ourlogicsl = rv.create();
        } catch (NamingException ne) {}


  %>


  <%
  String result ="";
  String id = "";
String lastName = "";
String firstName = "";
String sex = "";
int age = 0;
String email = "";
String department = "";

if(request.getParameter("search")!=null){
 id = request.getParameter("id");
 int intId = Integer.parseInt(id);
 staffh = ourlogicsl.viewRecord(intId);
 lastName = staffh.getLastname();
 firstName = staffh.getFirstname();
 sex = staffh.getSex();
 age = staffh.getAge();
 email = staffh.getEmail();
department = staffh.getDepartment();

}

/*
if(request.getParameter("update")!=null){
 id = request.getParameter("id");
 lastName = request.getParameter("lastName");
firstName = request.getParameter("firstName");
sex = request.getParameter("sex");
String ageString = request.getParameter("age");
age = Integer.parseInt(ageString);
email = request.getParameter("email");
department = request.getParameter("department");
 String outcome =  ourlogicsl.updateRecords(id, lastName, firstName, sex, age, email, department);
 
}


if(request.getParameter("delete")!=null){
 id = request.getParameter("id");
  String outcome = codelogicsl.deleteStaff(id);
  id ="";
  
}*/
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
                    <td>id</td> <td> <input type="text" name="id" id="id" placeholder="id" value="<%=id%>"/>
                    </td>
                </tr>
                <tr>
                    <td>lastname</td><td> <input type="text" name="lastName" id="lastName" placeholder="lastName" value="<%=lastName%>"/>
                    </td>
                </tr>
                <tr>

                    <td>firstname</td><td> <input type="text" name="firstName" id="firstName" placeholder="firstName" value="<%=firstName%>"/> </td>
                </tr>
                <tr>
                    <td>sex</td><td> <input type="text" name="sex" id="sex" placeholder="sex" value="<%=sex%>"/> </td>
                </tr>
                 <tr>
                    <td>age</td><td> <input type="text" name="age" id="age" placeholder="age" value="<%=age%>"/> </td>
                </tr>
                <tr>
                    <td>age</td><td> <input type="text" name="email" id="email" placeholder="email" value="<%=email%>"/> </td>
                </tr>
                  <tr>
                    <td>department</td><td> <input type="text" name="department" id="department" placeholder="department" value="<%=department%>"/> </td>
                </tr>
                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="submit" name="search" value="SEARCH" id="create"/>
                        <input type="submit" name="update" value="UPDATE" id="update"/>
                        <input type="submit" name="delete" value="DELETE" id="delete"/>

                    </td>
                </tr>
            </table>
        </form>
    </div>
    </div>






    </body>
</html>
