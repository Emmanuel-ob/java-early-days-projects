<%-- 
    Document   : newjsp
    Created on : Nov 19, 2016, 10:50:19 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

  <%@include file="settings.jsp" %>
  <%

 String result = "";
 String stateId ="";
 String state = "";
 SchoolHelper schoolH = null;


if(request.getParameter("send")!=null){
stateId = request.getParameter("stateId");
state = request.getParameter("state");

schoollogicl.createState(stateId, state);
}

%>



    <body>
        <div id="header">
            <label></label>
        </div>
        <div><label><a href="createLga.jsp">CREATE LGA</a></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><a href="login.jsp"></a></label>
        </div>
    <br> <br>
    <div id="container">
    <div id="form" class="result">
        <form method="post" id="reg-form">
            <table border ="0" align="Center">
                <tr>
                 <td>StateId</td>
                    <td> <input type="text" name="stateId" id="stateId" placeholder="stateId"/>
                    </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td> <input type="text" name="state" id="state" placeholder="state"/>
                    </td>
                </tr>

                <tr>
                    <td> <hr/> </td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="send" value="SEND" id="send"/></td>

                </tr>
            </table>
        </form>
    </div>
    </div>


    </body>
</html>

