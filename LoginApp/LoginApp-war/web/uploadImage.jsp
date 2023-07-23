<%-- 
    Document   : uploadImage
    Created on : Jan 4, 1980, 12:30:02 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include  file="settings.jsp" %>

<%
String userId = session.getAttribute("userId").toString();
String surName = session.getAttribute("surName").toString();
String otherNames = session.getAttribute("otherNames").toString();
String sex = session.getAttribute("sex").toString();
String nationality = session.getAttribute("nationality").toString();
String result = "";

 //String surName = "";
 //String otherNames = "";
 //String sex = "";
 //String nationality = "";



if(request.getParameter("create")!=null){
userId = request.getParameter("userId");
surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
sex = request.getParameter("sex");
nationality = request.getParameter("nationality");
result = loginlogicl.createBiodata(userId, surName, otherNames, sex, nationality);
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
      <%--  <th><p><img name="img" src="viewCapturing.jsp?suscriberid=<%=studentId%>" width="120" height="120" alt="PLEASE UPLOAD PASSPORT"></p></p></th>--%>
     <th><p><img name="img" src="viewImage.jsp?userId=<%=userId%>" width="120" height="120" alt="PLEASE UPLOAD PASSPORT"></p></p></th>
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
                            <input name="regno" type="hidden" id="regno" value="<%=userId%>"></div>

        </td>
  </tr>
  
</table>
    </form>
                            <form method="post" id="reg-form">
            <table border ="2" align="Center">
                <tr>
                 <td>UserId</td>
                 <td> <input type="text" name="userId" id="userId" value="<%=userId%>" placeholder="userId"/>
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
                <td>Sex</td>
                    <td> <input type="text" name="sex" id="sex" value="<%=sex%>" placeholder="sex"/> </td>
                </tr>
                <tr>
                <td>Nationality</td>
                    <td> <input type="text" name="nationality" id="nationality" value="<%=nationality%>" placeholder="nationality"/> </td>
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
