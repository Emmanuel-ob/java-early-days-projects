<%-- 
    Document   : index
    Created on : Jan 3, 2017, 10:09:20 AM
    Author     : Emma
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

   <!-- <body>
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
    </div>-->







--------------------------------------------------------------------------
 <!-- BEGIN HEAD -->
<head>
     <meta charset="UTF-8" />
    <title>Biodata Page</title>
     <meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
     <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- GLOBAL STYLES -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/theme.css" />
    <link rel="stylesheet" href="assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->


    <!-- PAGE LEVEL STYLES -->
 <link href="assets/plugins/jquery-steps-master/demo/css/normalize.css" rel="stylesheet" />
 <link href="assets/plugins/jquery-steps-master/demo/css/wizardMain.css" rel="stylesheet" />
 <link href="assets/plugins/jquery-steps-master/demo/css/jquery.steps.css" rel="stylesheet" />

    <!-- END PAGE LEVEL  STYLES -->

   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
     <!-- END HEAD -->

     <!-- BEGIN BODY -->

<body class="padTop53 ">

   <!-- MAIN WRAPPER -->
    <div id="wrap">


        <!-- HEADER SECTION -->
        <div id="top">

            <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
                <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu" id="menu-toggle">
                    <i class="icon-align-justify"></i>
                </a>
                <!-- LOGO SECTION -->
                <header class="navbar-header">

                    <a href="index.html" class="navbar-brand">
                        <h3 style="color:red">UNIVERSITY OF TECHNOLOGY</h3></a>
                </header>
                <!-- END LOGO SECTION -->
                <ul class="nav navbar-top-links navbar-right">



                    <!--ADMIN SETTINGS SECTIONS -->

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-user "></i>&nbsp; <i class="icon-chevron-down "></i>
                        </a>

                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="icon-user"></i> User Profile </a>
                            </li>
                            <li><a href="#"><i class="icon-gear"></i> Settings </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="icon-signout"></i> Logout </a>
                            </li>
                        </ul>

                    </li>
                    <!--END ADMIN SETTINGS -->
                </ul>

            </nav>

        </div>
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
       <div id="left">
            <div class="media user-media well-small">
                <a class="user-link" href="#">
                    <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/img/user.gif" />
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading"> Joe Romlin</h5>
                    <ul class="list-unstyled user-info">

                        <li>
                             <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                        </li>

                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">


                <li class="panel">
                    <a href="index.html" >
                        <i class="icon-table"></i> Update BioData


                    </a>
                </li>

                <li class="panel">
                    <a href="index.html" >
                        <i class="icon-table"></i> Registration


                    </a>
                </li>
                <li><a href="login.html"><i class="icon-signin"></i> LogOut </a></li>

            </ul>

        </div>
        <!--END MENU SECTION -->


        <!--PAGE CONTENT -->
        <div id="content">

            <div class="inner" >
                <div class="row">
                    <div class="col-lg-12">


                        <h2>Biodata Page</h2>



                    </div>
                </div>

                <hr />



       <div class="row">
        <div class="col-lg-9">

         <div class="panel panel-default">
                        <div class="panel-heading">
                           Biodate Wizard
                        </div>
                        <div class="panel-body">
                            <div id="wizard" >
                <h2> Personal </h2>
                <section>

                               <form role="form">

                                        <div class="form-group">
                                              <label>StateOfOrigin</label>
                                              <select class="form-control" name="stateOfOrigin" id="stateOfOrigin" onchange="this.form.submit()" required>
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

                                             </select>
                                          </div>

                                        <div class="form-group">
                                           <label>LocalGovt</label>
                                           <select class="form-control" name="lga" id="lga" onchange="" required>
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

                                          </div>

                                         <div class="form-group">
                                            <label>StudentId</label>
                                            <input class="form-control" type="text" name="studentId" id="studentId" placeholder="studentId" value="<%=studentId%>" />
                                            <p class="help-block">E.g UE/12364/08</p>
                                        </div>
                                        <div class="form-group">
                                            <label>SurName</label>
                                            <input class="form-control" type="text" name="surName" id="surName" placeholder="surName" value="<%=surName%>"/>

                                        </div>

                                       <div class="form-group">
                                            <label>Other Names</label>
                                            <input class="form-control" type="text" name="otherNames" id="otherNames" placeholder="otherNames" value="<%=otherNames%>"/>
                                        </div>

                                      <div class="form-group">
                                            <label>Other Names</label>
                                            <input class="form-control" type="text" name="otherNames" id="otherNames" placeholder="otherNames" value="<%=otherNames%>"/>
                                        </div>


                                    </form>

                </section>

                <h2> Login </h2>
                <section>
                   <form role="form">
                                        <div class="form-group">
                                            <label>Date of Birth</label>
                                            <input class="form-control" type="text" name="dob" id="dob" placeholder="dd/mm/yy" value="<%=dob%>"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Select Your Sex</label>
                                            <div class="radio">
                                                <label> Male<input class="" type="radio" name="sex" value="male"/></label>
                                            </div>
                                            <div class="radio">
                                                 <label>Female<input class="" type="radio" name="sex" value="female"/></label>
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label>Permanent Home Address</label>
                                            <input class="form-control" type="textarea" name="permHomeAddr" id="permHomeAddr" placeholder="" value="<%=permHomeAddr%>"/>

                                        </div>
                                            <div class="form-group">
                                            <label>Contact Address</label>
                                            <input class="form-control" type="textarea" name="contactAddr" id="contactAddr" placeholder="" value="<%=contactAddr%>"/>
                                            <p class="help-block">If its not thesame as permanent address</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Maiden Name</label>
                                            <input class="form-control" type="text" name="maidenName" id="maidenName" placeholder="maidenName" value="<%=maidenName%>"/>

                                        </div>




                                    </form>
                </section>

                <h2>Extras </h2>
                <section>
                             <form action="#" class="form-horizontal" id="block-validate">


                                        <div class="form-group">
                                            <label class="control-label col-lg-4">E-mail</label>

                                            <div class="col-lg-4">
                                                <input type="email" id="email2" name="email2" class="form-control" />
                                                <p class="help-block">E.g ddddd@yahoo.com</p>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Date of Birth</label>

                                            <div class="col-lg-4">
                                                <input type="date" id="date2" name="date2" placeholder="dd/mm/yyyy" class="form-control" />
                                                <p class="help-block">E.g 12/4/1993</p>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Phone Number</label>

                                            <div class="col-lg-4">
                                                <input type="text" id="digits" name="digits" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label> Notes </label>
                                            <input class="form-control" />
                                            <p class="help-block">Example block-level help text here.</p>
                                        </div>

                                </form>



                </section>

                <h2>Agreement</h2>
                <section>
                    <p style="text-align:justify;color:gray;">
                        <b> Agreement & Declaration</b> <br /><br />
                        Morbi ornare tellus at elit ultrices id dignissim lorem elementum. Sed eget nisl at justo condimentum dapibus. Fusce eros justo,
                        pellentesque non euismod ac, rutrum sed quam. Ut non mi tortor. Vestibulum eleifend varius ullamcorper. Aliquam erat volutpat.
                        <br />  <br />
                        Donec diam massa, porta vel dictum sit amet, iaculis ac massa. Sed elementum dui commodo lectus sollicitudin in auctor mauris
                        venenatis. Quisque at sem turpis, id sagittis diam. Suspendisse malesuada eros posuere mauris vehicula vulputate. Aliquam sed sem tortor.
                        Quisque sed felis ut mauris feugiat iaculis nec ac lectus. Sed consequat vestibulum purus, imperdiet varius est pellentesque vitae.
                        Suspendisse consequat cursus eros, vitae tempus enim euismod non. Nullam ut commodo tortor.
                        <br />


                    </p>
                </section>

            </div>
                          <input type="submit" id="enter" name="" value="SUBMIT" class="" />
                        </div>
                    </div>




                 </div>

               </div>

            </div>





        </div>
       <!--END PAGE CONTENT -->


        </div>
     <!--END MAIN WRAPPER -->

   <!-- FOOTER -->
    <div id="footer">
        <p>&copy;  Systems-Bunch &nbsp;2016 &nbsp;</p>
    </div>
    <!--END FOOTER -->


     <!-- GLOBAL SCRIPTS -->
    <script src="assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->

         <!-- PAGE LEVEL SCRIPTS -->
    <script src="assets/plugins/jasny/js/bootstrap-fileupload.js"></script>
     <script src="assets/plugins/jquery-steps-master/lib/jquery.cookie-1.3.1.js"></script>
    <script src="assets/plugins/jquery-steps-master/build/jquery.steps.js"></script>
    <script src="assets/js/WizardInit.js"></script>
     <script src="assets/plugins/validationengine/js/jquery.validationEngine.js"></script>
    <script src="assets/plugins/validationengine/js/languages/jquery.validationEngine-en.js"></script>
    <script src="assets/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>
    <script src="assets/js/validationInit.js"></script>
    <script>
        $(function () { formValidation(); });
        </script>
         <!-- END PAGE LEVEL SCRIPTS -->
</body>
     <!-- END BODY -->
</html>



