<%-- 
    Document   : uploadImage
    Created on : Nov 13, 2016, 8:49:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include  file="settings.jsp" %>

<%
String studentId = session.getAttribute("studentId").toString();
String surName = session.getAttribute("surName").toString();
String otherNames = session.getAttribute("otherNames").toString();
String faculty = session.getAttribute("faculty").toString();
String department = session.getAttribute("department").toString();
String course = session.getAttribute("course").toString();
String level = session.getAttribute("level").toString();
String age = session.getAttribute("age").toString();
String stateOfOrigin = session.getAttribute("stateOfOrigin").toString();
String lga = session.getAttribute("lga").toString();
String permHomeAddr = session.getAttribute("permHomeAddr").toString();
String contactAddr = session.getAttribute("contactAddr").toString();
String maidenName = session.getAttribute("maidenName").toString();
String phoneNumber = session.getAttribute("phoneNumber").toString();
String email = session.getAttribute("level").toString();
String result = "";

 //String surName = "";
 //String otherNames = "";
 //String sex = "";
 //String nationality = "";



if(request.getParameter("create")!=null){
studentId = request.getParameter("studentId");
surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
faculty = request.getParameter("faculty");
department = request.getParameter("department");
course = request.getParameter("course");
level = request.getParameter("level");
age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
stateOfOrigin = request.getParameter("stateOfOrigin");
lga = request.getParameter("lga");
permHomeAddr = request.getParameter("permHomeAddr");
contactAddr = request.getParameter("contactAddr");
maidenName = request.getParameter("maidenName");
phoneNumber = request.getParameter("phoneNumber");
int phoneNumberInt = Integer.parseInt(phoneNumber);
email = request.getParameter("email");

schoollogicl.createBiodata(studentId, ageInt, stateOfOrigin, lga, permHomeAddr, contactAddr, maidenName, phoneNumberInt, email);

schoollogicl.createStudent(studentId, surName, otherNames, faculty, department, course, level);
response.sendRedirect("index.jsp");
}
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form  name="form1" action="fileUpload.jsp" method="post" enctype="multipart/form-data" onSubmit="return validateForm(this);">
    <table width="">
  <tr>
      <%--  <th><p><img name="img" src="viewCapturing.jsp?suscriberid=<%=studentId%>" border="1px" width="120" height="120" alt="PLEASE UPLOAD PASSPORT"></p></p></th>--%>
     <th><p><img name="img" src="viewImage.jsp?studentId=<%=studentId%>" width="120" height="120" alt="PLEASE UPLOAD PASSPORT"></p></p></th>
  </tr>
  <tr>
    <td> <div align="center">
            <input name="file" type="file" class="mspButton" id="file" size="10"/>
                        </div></td>
  </tr>
  <tr>
    <td height=""><div align="center">
                            <input name="uploader" type="submit" class="mspButton"value="Upload" />
                            <label>
                                <input name="button" type="submit" class="mspButton" id="button" value="close" onClick="closeWindow();return false;">
                            </label>
                            <input name="regno" type="hidden" id="regno" value="<%=studentId%>"></div>

        </td>
  </tr>

</table>
    </form>
                            <form method="post" id="reg-form">
            <table border ="2" align="Center">
                <tr>
                 <td>StudentId</td>
                 <td> <input type="text" name="studentId" id="studentId" value="<%=studentId%>" placeholder="studentId"/>
                    </td>
                </tr>
                <tr>
                    <td>SurName</td>
                    <td> <input type="text" name="surName" id="surName" value="<%=surName%>" placeholder="surName"/>
                    </td>
                </tr>
                <tr>
                    <td>OtherNames</td>
                    <td> <input type="text" name="otherNames" id="otherNames" value="<%=otherNames%>" placeholder="otherNames"/> </td>
                </tr>
                <tr>
                <td>Faculty</td>
                    <td> <input type="text" name="faculty" id="faculty" value="<%=faculty%>" placeholder="faculty"/> </td>
                </tr>
                <tr>
                <td>Department</td>
                    <td> <input type="text" name="department" id="department" value="<%=department%>" placeholder="department"/> </td>
                </tr>
                <tr>
                <td>Course</td>
                    <td> <input type="text" name="course" id="course" value="<%=course%>" placeholder="course"/> </td>
                </tr>
                <tr>
                <td>Level</td>
                    <td> <input type="text" name="level" id="level" value="<%=level%>" placeholder="level"/> </td>
                </tr>
                <tr>
                <td>Age</td>
                    <td> <input type="text" name="age" id="age" value="<%=age%>" placeholder="age"/> </td>
                </tr>
                <tr>
                <td>StateOfOrigin</td>
                    <td> <input type="text" name="stateOfOrigin" id="stateOfOrigin" value="<%=stateOfOrigin%>" placeholder="stateOfOrigin"/> </td>
                </tr>
                <tr>
                <td>LGA</td>
                    <td> <input type="text" name="lga" id="lga" value="<%=lga%>" placeholder="lga"/> </td>
                </tr>
                <tr>
                <td>PermHomeAddr</td>
                    <td> <input type="text" name="permHomeAddr" id="permHomeAddr" value="<%=permHomeAddr%>" placeholder="permHomeAddr"/> </td>
                </tr>
                <tr>
                <td>ContactAddr</td>
                    <td> <input type="text" name="contactAddr" id="contactAddr" value="<%=contactAddr%>" placeholder="contactAddr"/> </td>
                </tr>
                <tr>
                <td>MaidenName</td>
                    <td> <input type="text" name="maidenName" id="maidenName" value="<%=maidenName%>" placeholder="maidenName"/> </td>
                </tr>
                <tr>
                <td>PhoneNumber</td>
                    <td> <input type="text" name="phoneNumber" id="phoneNumber" value="<%=phoneNumber%>" placeholder="phoneNumber"/> </td>
                </tr>
                <tr>
                <td>Email</td>
                    <td> <input type="text" name="email" id="email" value="<%=email%>" placeholder="email"/> </td>
                </tr>
                

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="create" value="CREATE" id="create"/></td>
                </tr>
            </table>
        </form>

    </body>
</html>

