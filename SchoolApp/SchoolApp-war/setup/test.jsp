<%-- 
    Document   : test
    Created on : Nov 19, 2016, 9:55:40 AM
    Author     : Admin
--%>
<%@page  import="javax.ejb.*, javax.naming.*, javax.rmi.PortableRemoteObject"%>
<%@page  import="java.util.ArrayList, java.util.Iterator" %>
<%@page  import="java.io.*" %>
<%@page  import="java.util.*" %>
<%@page  import="entityPackages.*" %>
<%@page  import="sessionpackages.*" %>
<%@page  import="helperpackages.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="settings.jsp" %>
<html>
    <head>
        <title></title>
    </head>

    <%

String state = request.getParameter("state");
String lga = request.getParameter("lga");
%>
    <body>
 <form name="" method="post" action="">
      <table width="591" border="0" align="center" bgcolor="#00B9B9">
        <tr>
          <td width="154" height="43"><span class="style4">State:</span></td>
          <td width="427"><select name="state" id="state" onchange="this.form.submit()" required>
                  <option>-select state-</option>
                  <%

                  try{
                  ArrayList liststate =schoollogicl.viewAllState();
                  Iterator itr = liststate.iterator();
                  while(itr.hasNext()){
              StateHelper stateh = (StateHelper)itr.next();
              if(state!=null && state!="" && state.equalsIgnoreCase(stateh.getStateId())){

                       %>
                       <option selected value="<%=stateh.getStateId() %>"><%=stateh.getState() %></option>
                       <%} else{%>
                       <option value="<%= stateh.getStateId() %>"><%=stateh.getState() %></option>
                       <% }
                  }
                  }
                  catch(Exception e){ }



                         %>

              </select></td>
               <td width="154" height="43"><span class="style4">LocalGovt:</span></td>
               <td width="427"><select name="lga" id="lga" onchange="form1.submit()" required>
                       <option>-select LocalGovt- </option>
                       <%

                        try{
                            ArrayList listLga = schoollogicl.viewAllLga();
                            Iterator itr2 = listLga.iterator();
                            while(itr2.hasNext()){
                                localGovtHelper localGovth =(localGovtHelper)itr2.next();
                                if(lga!=null && lga != "" && lga.equalsIgnoreCase(localGovth.getLgaId())){
                                    %>
                                    <option selected value="<%=localGovth.getLgaId()%>"><%=localGovth.getLgaName()%></option>
                                    <%}
                                else{
                                    %>
                                     <option value="<%=localGovth.getLgaId()%>"><%=localGovth.getLgaName()%></option>
                                     <%}}


                        }catch(Exception ex){}




                                %>
                   </select>

               </td>

        </tr>

   </table>
</form>
    </body>
</html>