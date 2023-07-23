<%--
    Document   : index
    Created on : Oct 20, 2016, 10:43:47 AM
    Author     : Obute
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
    <% CodeLogicLocal codelogicsl = null;%>
    <%

      try {
            Context c = new InitialContext();
            CodeLogicLocalHome rv = (CodeLogicLocalHome) c.lookup("java:comp/env/CodeLogicBean");
            codelogicsl = rv.create();
        } catch (NamingException ne) {}


  %>


  <%
  String result ="";
if(request.getParameter("create")!=null){
String id = request.getParameter("id");
String lastName = request.getParameter("lastName");
String firstName = request.getParameter("firstName");
String sex = request.getParameter("sex");
String age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
String department = request.getParameter("department");
  codelogicsl.createRecords(id, lastName, firstName, sex, ageInt, department);
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
                    <td> <input type="text" name="id" id="id" placeholder="id"/>
                    </td>
                </tr>
                <tr>
                    <td> <input type="text" name="lastName" id="lastName" placeholder="lastName"/>
                    </td>
                </tr>
                <tr>

                    <td> <input type="text" name="firstName" id="firstName" placeholder="firstName"/> </td>
                </tr>
                <tr>
                    <td> <input type="text" name="sex" id="sex" placeholder="sex"/> </td>
                </tr>
                 <tr>
                    <td> <input type="text" name="age" id="age" placeholder="age"/> </td>
                </tr>
                  <tr>
                    <td> <input type="text" name="department" id="department" placeholder="department"/> </td>
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
