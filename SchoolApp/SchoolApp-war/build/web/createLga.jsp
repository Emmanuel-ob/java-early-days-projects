<%-- 
    Document   : createLga
    Created on : Nov 19, 2016, 11:02:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="settings.jsp" %>
  <%

 String lgaId = "";
 String lgaName ="";
 String state = "";
 


if(request.getParameter("enter")!=null){
lgaId = request.getParameter("lgaId");
lgaName = request.getParameter("lgaName");
state = request.getParameter("state");
schoollogicl.createLga(lgaId, lgaName, state);
}




%>



    <body>
        <div id="header">
            <label></label>
        </div>
        <div><label><a href="signUp.jsp"></a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp"></a></label>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="0" align="Center">
                <tr>
                 <td>LgaId</td>
                    <td> <input type="text" name="lgaId" id="lgaId" placeholder="lgaId"/>
                    </td>
                </tr>
                <tr>
                    <td>lgaName</td>
                    <td> <input type="text" name="lgaName" id="lgaName" placeholder="lgaName"/>
                    </td>
                </tr>
                <tr>
                    <td width="154" height="43"><span class="style4">State:</span></td>
                    <td width="427"><select name="state" id="state" required>
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


    </body>
</html>


