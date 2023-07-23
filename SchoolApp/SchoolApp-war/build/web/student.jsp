<%-- 
    Document   : student
    Created on : Nov 13, 2016, 3:31:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="settings.jsp" %>


  <%
 String studentId = session.getAttribute("studentId").toString();
String result = "";

 //String studentId = "";
 String surName = "";
 String otherNames = "";
 String faculty = "";
 String department = "";
 String course = "";
 String level = "";






if(request.getParameter("enter")!=null){
studentId = request.getParameter("studentId");
surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
faculty = request.getParameter("faculty");
department = request.getParameter("department");
course = request.getParameter("course");
level = request.getParameter("level");
//schoollogicl.createStudent(studentId, surName, otherNames, faculty, department, course, level);


session.setAttribute("studentId", studentId);
session.setAttribute("surName", surName);
session.setAttribute("otherNames", otherNames);
session.setAttribute("faculty", faculty);
session.setAttribute("department", department);
session.setAttribute("course", course);
session.setAttribute("level", level);

response.sendRedirect("uploadImage.jsp");
//response.sendRedirect("index.jsp");
//response.sendRedirect("uploadImage.jsp");

//response.sendRedirect("uploadImage.jsp");


}
 %>

    <body>
        <div id="header">
            <label>coding</label>
        </div>
        
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
           <table border ="2" align="Center">
                <tr>
                 <td>StudentId</td>
                 <td> <input type="text" name="studentId" id="studentId" placeholder="studentId" value="<%=studentId%>"/>
                    </td>
                </tr>
                <tr>
                    <td>SurName</td>
                    <td> <input type="text" name="surName" id="surName" placeholder="surName"/>
                    </td>
                </tr>
                <tr>
                    <td>OtherNames</td>
                    <td> <input type="text" name="otherNames" id="otherNames" placeholder="otherNames"/> </td>
                </tr>
                <tr>
                <td>Faculty</td>
                    <td> <input type="text" name="faculty" id="faculty" placeholder="faculty"/> </td>
                </tr>
                <tr>
                <td>Department</td>
                    <td> <input type="text" name="department" id="department" placeholder="department"/> </td>
                </tr>
                 <tr>
                <td>Course</td>
                    <td> <input type="text" name="course" id="course" placeholder="course"/> </td>
                </tr>
                 <tr>
                <td>Level</td>
                    <td> <input type="text" name="level" id="level" placeholder="level"/> </td>
                </tr>
                 

                <tr>
                    <td> <hr/> </td>
                </tr>
                 <tr>
                    <td align="center"><input type="submit" name="enter" value="ENTER" id="enter"/></td>

                </tr>
            </table>
        </form>
    </div>
    </div>
