<%-- 
    Document   : employeeAll
    Created on : Nov 3, 2016, 11:25:02 AM
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
<% EmployeeLogicLocal employeeLogicl = null;
//EmployeeHelper employeeHelper = null;
%>
<%

try {
            Context c = new InitialContext();
            EmployeeLogicLocalHome rv = (EmployeeLogicLocalHome) c.lookup("java:comp/env/EmployeeLogicBean");
            employeeLogicl = rv.create();
        } catch (NamingException ne) {}

  %>


<%
String result ="";
String staffId = "";
String surName = "";
String otherNames = "";
String sex = "";
String age = "";
String email = "";
String department = "";
EmployeeHelper employeeh= null;
ArrayList list = new ArrayList();
Iterator itr = null;






if(request.getParameter("create")!=null){
 staffId = request.getParameter("staffId");
 int staffIdInt = Integer.parseInt(staffId);
 surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
sex = request.getParameter("sex");
age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
email = request.getParameter("email");
department = request.getParameter("sex");
result = employeeLogicl.createEmployee(staffIdInt, surName, otherNames, sex, ageInt, email, department);

if(result !=null){
%>
<script>
    alert("Record Created Succesfully.....");
</script>
<%
}
}
%>

<%
if(request.getParameter("View")!=null){

 staffId = request.getParameter("staffId");
 int staffIdInt = Integer.parseInt(staffId);
 employeeh = employeeLogicl.viewEmployee(staffIdInt);
 surName = employeeh.getSurName();
otherNames = employeeh.getOtherNames();
sex = employeeh.getSex();
age =  String.valueOf(employeeh.getAge());
email = employeeh.getEmail();
department = employeeh.getDepartment();

}

%>

<%
if(request.getParameter("Edit")!=null){
   staffId = request.getParameter("staffId");
   int staffIdInt = Integer.parseInt(staffId);
 surName = request.getParameter("surName");
otherNames = request.getParameter("otherNames");
sex = request.getParameter("sex");
age = request.getParameter("age");
int ageInt = Integer.parseInt(age);
email = request.getParameter("email");
department = request.getParameter("department");
result = employeeLogicl.updateEmployee(staffIdInt, surName, otherNames, sex, ageInt, email, department);


if(result !=null){
%>
<script>
    alert("Record Updated Succesfully.....");
</script>
<%
}

}
%>


<%
if(request.getParameter("Delete")!=null){
   staffId = request.getParameter("staffId");
   int staffIdInt = Integer.parseInt(staffId);
   employeeLogicl.deleteEmployer(staffIdInt);


if(result !=null){
%>

<script>
    alert("Record Deleted Succesfully.....");
</script>
<%
}
}
%>



<body>
<div id="header">
<label>coding</label>
</div>
<div><label><a href="employeeAll.jsp">Insert</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="employeeAll.jsp">View</a></label></div>
<br><br>
<div id="container">
<div id="form" calss="result">
<form method="post" id="reg-form">
    <table border ="2" align="Center" width="700">
<tr>
<td>staffId:</td>
<td>
<input type="text" name="staffId" id="staffId" placeholder="staffId" value="<%=staffId%>"/>
</td>
</tr>
<tr>
<td>surName:</td>
<td><input type="text" name="surName" id="surName" placeholder="surName"value="<%=surName%>"/>
</td>
</tr>
<tr>
<td>otherNames</td>
<td><input type="text" name="otherNames" id="otherNames" placeholder="other name"value="<%=otherNames%>"/>
</tr>
<tr>
<td>sex:</td>
<td><input type="text" name="sex" id="sex" placeholder="sex"value="<%=sex%>"/>
</tr>
<tr>
<td>age:</td>
<td><input type="text" name="age" id="age" placeholder="age"value="<%=age%>"/>
</tr>
<tr>
<td>email:</td>
<td><input type="text" name="email" id="email" placeholder="email"value="<%=email%>"/>
</tr>
<tr>
<td>department:</td>
<td><input type="text" name="department" id="department" placeholder="department"value="<%=department%>"/>
</tr>

<tr>
<td><hr/></td>
</tr>
<tr>
<td align="center" colspan="2">
<input type="submit" name="create" value="CREATE" id="create"/>
<input type="submit" name="View" value="View" id="create"/>
<input type="submit" name="Edit" value="Edit" id=""/>
<input type="submit" name="Delete" value="Delete" id=""/>
</td>
</tr>
</table>
</form>
</div>
</div>

<table align="Center" width="700" border="2" >
<tr>
<td>staffId</td>
<td>surName</td>
<td>otherNames</td>
<td>sex</td>
<td>age</td>
<td>email</td>
<td>department</td>
</tr>
<%
list = employeeLogicl.viewAllEmployee();
itr = list.iterator();
while(itr.hasNext()){
employeeh = (EmployeeHelper)itr.next();
                    %>


<tr>
<td><%=employeeh.getStaffId()%></td>
<td><%=employeeh.getSurName()%></td>
<td><%=employeeh.getOtherNames()%></td>
<td><%=employeeh.getSex()%></td>
<td><%=employeeh.getAge()%></td>
<td><%=employeeh.getEmail()%></td>
<td><%=employeeh.getDepartment()%></td>
</tr>


<%


              }

%>
</table>





</body>
</html>
