<%-- 
    Document   : test
    Created on : Nov 19, 2016, 1:31:10 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%@include file="settings.jsp" %>
    <body>
         
         <%
String state = request.getParameter("state");
String lga = request.getParameter("lga");
%>
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
                       <option selected value="<%=stateh.getStateId() %>"><%=stateh.getState()%></option>
                       <%} else{%>
                       <option value="<%= stateh.getStateId() %>"><%=stateh.getState() %></option>
                       <% }
                  }
                  }
                  catch(Exception e){ }



                         %>

              </select></td>
               <td width="154" height="43"><span class="style4">LocalGovt:</span></td>
               <td width="427"><select name="lga" id="lga" onchange="" required>
                       <option>-select LGA- </option>
                       <%

                        try{
                            ArrayList listLga = schoollogicl.ViewByState(state);
                            Iterator itr2 = listLga.iterator();
                            while(itr2.hasNext()){
                                localGovtHelper localgovth=(localGovtHelper)itr2.next();
                                if(state!=null && state != "" && lga.equalsIgnoreCase(localgovth.getLgaId())){
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

   </table>
</form>
    </body>
</html>
