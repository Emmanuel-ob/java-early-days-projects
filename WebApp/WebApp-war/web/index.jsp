<%-- 
    Document   : index
    Created on : Oct 18, 2016, 10:43:47 AM
    Author     : UJAH
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
               height : 320px;
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
    <% OurLogicLocal ourlogicsl = null;%>
    <%

      try {
            Context c = new InitialContext();
            OurLogicLocalHome rv = (OurLogicLocalHome) c.lookup("java:comp/env/OurLogicBean");
             ourlogicsl = rv.create();
        } catch (NamingException ne){}

  %>


  <%
  String result ="";
if(request.getParameter("create")!=null){
String studentId = request.getParameter("studentid");
String surname = request.getParameter("surname");
String otherName = request.getParameter("othername");
String sex = request.getParameter("sex");
String course = request.getParameter("course");
 result = ourlogicsl.createStudentRecord(studentId, surname, otherName, sex, course);
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
    <br> <br>
    <div id="container">
    <div id="form" calss="result">
        <form method="post" id="reg-form">
            <table border ="0">
                <tr>
                    <td> <input type="text" name="studentid" id="studentid" placeholder="student id"/>
                    </td>
                </tr>
                <tr>
                    <td> <input type="text" name="surname" id="surname" placeholder="surname"/>
                    </td>
                </tr>
                <tr>
                    
                    <td> <input type="text" name="othername" id="othername" placeholder="other name"/> </td>
                </tr>
                <tr>
                    <td> <input type="text" name="sex" id="sex" placeholder="sex"/> </td>
                </tr>
                 <tr>
                    <td> <input type="text" name="course" id="course" placeholder="course"/> </td>
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
