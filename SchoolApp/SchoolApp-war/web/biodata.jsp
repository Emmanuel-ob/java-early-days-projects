<%-- 
    Document   : biodata
    Created on : Nov 13, 2016, 1:35:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="settings.jsp" %>


  <%
 //String userId = session.getAttribute("userId").toString();
//String result = "";

 String studentId = "";
 String age = "";
 //String stateOfOrigin = "";
 String lga = "";
 String permHomeAddr = "";
 String contactAddr = "";
 String maidenName = "";
 String phoneNumber = "";
 String email = "";
 String surName = "";
 String otherNames = "";
 String dob = "";
 String stateOfOrigin = request.getParameter("stateOfOrigin");

 studentId = request.getParameter("studentId")!=null?request.getParameter("studentId"):"";
age = request.getParameter("age")!=null?request.getParameter("age"):"";
//int ageInt1 = Integer.parseInt(age);
//stateOfOrigin = request.getParameter("stateOfOrigin")!=null?request.getParameter("stateOfOrigin"):"";
lga = request.getParameter("lga")!=null?request.getParameter("lga"):"";
permHomeAddr = request.getParameter("permHomeAddr")!=null?request.getParameter("permHomeAddr"):"";
contactAddr = request.getParameter("contactAddr")!=null?request.getParameter("contactAddr"):"";
maidenName = request.getParameter("maidenName")!=null?request.getParameter("maidenName"):"";
phoneNumber = request.getParameter("phoneNumber")!=null?request.getParameter("phoneNumber"):"";
//int phoneNumberInt1 = Integer.parseInt(phoneNumber);
email = request.getParameter("email")!=null?request.getParameter("email"):"";
//schoollogicl.createBiodata(studentId, ageInt, stateOfOrigin, lga, permHomeAddr, contactAddr, maidenName, phoneNumberInt, email);


session.setAttribute("studentId", studentId);
session.setAttribute("age", age);
session.setAttribute("stateOfOrigin", stateOfOrigin);
session.setAttribute("lga", lga);
session.setAttribute("permHomeAddr", permHomeAddr);
session.setAttribute("contactAddr", contactAddr);
session.setAttribute("maidenName", maidenName);
session.setAttribute("phoneNumber", phoneNumber);
session.setAttribute("email", email);





if(request.getParameter("enter")!=null){
studentId = request.getParameter("studentId");
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
//schoollogicl.createBiodata(studentId, ageInt, stateOfOrigin, lga, permHomeAddr, contactAddr, maidenName, phoneNumberInt, email);


session.setAttribute("studentId", studentId);
session.setAttribute("age", age);
session.setAttribute("stateOfOrigin", stateOfOrigin);
session.setAttribute("lga", lga);
session.setAttribute("permHomeAddr", permHomeAddr);
session.setAttribute("contactAddr", contactAddr);
session.setAttribute("maidenName", maidenName);
session.setAttribute("phoneNumber", phoneNumber);
session.setAttribute("email", email);

response.sendRedirect("student.jsp");
//response.sendRedirect("uploadImage.jsp");
//response.sendRedirect("index.jsp");
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
                    <td>Age</td>
                    <td> <input type="text" name="age" id="age" placeholder="age" value="<%=age%>"/>
                    </td>
                </tr>
                
                <tr>
                <td>PermHomeAddr</td>
                    <td> <input type="text" name="permHomeAddr" id="permHomeAddr" placeholder="permHomeAddr" value="<%=permHomeAddr%>"/> </td>
                </tr>
                 <tr>
                <td>ContactAddr</td>
                    <td> <input type="text" name="contactAddr" id="contactAddr" placeholder="contactAddr" value="<%=contactAddr%>"/> </td>
                </tr>
                 <tr>
                <td>MaidenName</td>
                    <td> <input type="text" name="maidenName" id="maidenName" placeholder="maidenName" value="<%=maidenName%>"/> </td>
                </tr>
                 <tr>
                <td>PhoneNumber</td>
                    <td> <input type="text" name="phoneNumber" id="phoneNumber" placeholder="phoneNumber" value="<%=phoneNumber%>"/> </td>
                </tr>
                 <tr>
                <td>Email</td>
                    <td> <input type="text" name="email" id="email" placeholder="email" value="<%=email%>"/> </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                 
          
        <tr>
          <td width="154" height="43"><span class="style4">StateOfOrigin:</span></td>
          <td width="427"><select name="stateOfOrigin" id="stateOfOrigin" onchange="this.form.submit()" required>
                  <option>-select state-</option>
                  <%
                  try{
                      ArrayList liststate =schoollogicl.viewAllState();
                  Iterator itr = liststate.iterator();
                  while(itr.hasNext()){
              StateHelper stateh = (StateHelper)itr.next();
              if(stateOfOrigin!=null && stateOfOrigin!="" && stateOfOrigin.equalsIgnoreCase(stateh.getStateId())){

                       %>
                       <option selected value="<%=stateh.getStateId() %>"><%=stateh.getState()%></option>
                       <%} else{%>
                       <option value="<%= stateh.getStateId() %>"><%=stateh.getState() %></option>
                       <% }
                  }
                  }
                  catch(Exception e){ }



                         %>

              </select></td>
        </tr>
        <tr>
               <td width="154" height="43"><span class="style4">LocalGovt:</span></td>
               <td width="427"><select name="lga" id="lga" onchange="" required>
                       <option>-select LGA- </option>
                       <%

                        try{
                            ArrayList listLga = schoollogicl.ViewByState(stateOfOrigin);
                            Iterator itr2 = listLga.iterator();
                            while(itr2.hasNext()){
                                localGovtHelper localgovth=(localGovtHelper)itr2.next();
                                if(stateOfOrigin!=null && stateOfOrigin != "" && stateOfOrigin.equalsIgnoreCase(localgovth.getLgaId())){
                                    %>
                                    <option selected value="<%=localgovth.getLgaId()%>"><%= localgovth.getLgaName()%></option>
                                    <%}
                                else{
                                    %>
                                     <option value="<%=localgovth.getLgaId()%>"><%=localgovth.getLgaName()%></option>
                                     <%}}


                        }catch(Exception ex){}




                                %>
                   </select>

               </td>

        </tr>
 <tr>
                    <td align="center"><input type="submit" name="enter" value="NEXT" id="enter"/></td>

                    </tr>
   </table>
</form>
                   

    </div>
    </div>


</html>




