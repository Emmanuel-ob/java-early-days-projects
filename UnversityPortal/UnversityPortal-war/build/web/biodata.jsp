<%-- 
    Document   : biodata
    Created on : Jan 3, 2017, 6:28:36 PM
    Author     : Emma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


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
<!-- <link href="assets/plugins/jquery-steps-master/demo/css/jquery.steps.css" rel="stylesheet" />-->
<link rel="stylesheet" href="assets/plugins/daterangepicker/daterangepicker-bs3.css" />
<link rel="stylesheet" href="assets/plugins/datepicker/css/datepicker.css" />

    <!-- END PAGE LEVEL  STYLES -->

   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
     <!-- END HEAD -->

     <%@include file="settings.jsp" %>


  <%
 String userId = session.getAttribute("userId").toString();
 String surName = "";
 String firstName = "";
 String otherName = "";
 String maidenName = "";
 String sex = "";
 String maritalStatus = "";
 String dob = "";
 String permHomeAddr = "";
 String contactAddr = "";
 String stateOfOrigin = request.getParameter("stateOfOrigin");
 String localGovt = "";
 String homeTown = "";
 String country = "";
 String phoneNumber = "";
 String email = "";
 
 
 
 



surName = request.getParameter("surName")!=null?request.getParameter("surName"):"";
firstName = request.getParameter("firstName")!=null?request.getParameter("firstName"):"";
otherName = request.getParameter("otherName")!=null?request.getParameter("otherName"):"";
maidenName = request.getParameter("maidenName")!=null?request.getParameter("maidenName"):"";

//schoollogicl.createBiodata(studentId, ageInt, stateOfOrigin, lga, permHomeAddr, contactAddr, maidenName, phoneNumberInt, email);
session.setAttribute("userId", userId);
session.setAttribute("surName", surName);
session.setAttribute("firstName", firstName);
session.setAttribute("otherName", otherName);
session.setAttribute("maidenName", maidenName);


if(request.getParameter("next")!=null){
userId = request.getParameter("userId");
surName = request.getParameter("surName");
firstName = request.getParameter("firstName");
otherName = request.getParameter("otherName");
maidenName = request.getParameter("maidenName");
sex = request.getParameter("sex");
maritalStatus = request.getParameter("maritalStatus");
dob = request.getParameter("dob");
permHomeAddr = request.getParameter("permHomeAddr");
contactAddr = request.getParameter("contactAddr");
stateOfOrigin = request.getParameter("stateOfOrigin");
localGovt = request.getParameter("localGovt");
homeTown = request.getParameter("homeTown");
country = request.getParameter("country");
phoneNumber = request.getParameter("phoneNumber");
email = request.getParameter("email");


session.setAttribute("userId", userId);
session.setAttribute("surName", surName);
session.setAttribute("firstName", firstName);
session.setAttribute("otherName", otherName);
session.setAttribute("maidenName", maidenName);
session.setAttribute("sex", sex);
session.setAttribute("maritalStatus", maritalStatus);
session.setAttribute("dob", dob);
session.setAttribute("permHomeAddr", permHomeAddr);
session.setAttribute("contactAddr", contactAddr);
session.setAttribute("stateOfOrigin", stateOfOrigin);
session.setAttribute("localGovt", localGovt);
session.setAttribute("homeTown", homeTown);
session.setAttribute("country", country);
session.setAttribute("phoneNumber", phoneNumber);
session.setAttribute("email", email);

response.sendRedirect("confirmBiodata.jsp");
}
 %>

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
                            <li><a href="index.jsp"><i class="icon-signout"></i> Logout </a>
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
                <BR>
                <BR>
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
                        <i class="icon-table"></i> Registration


                    </a>
                </li>
                <li><a href="login.jsp"><i class="icon-signin"></i> LogOut </a></li>

            </ul>

        </div>
        <!--END MENU SECTION -->


        <!--PAGE CONTENT -->
        <div id="content">

            <div class="inner" >
                <div class="row">
                    <div class="col-lg-12">

                         <BR>
                         <BR>
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
             <div class="panel-body" style="background-color:#eee">
                            <div id="" >
                
                

                               <form role="form" class="form-horizontal" id="block-validate">

                                        

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">Matric No</label>
                                           <div class="col-lg-4">
                                            <input class="form-control" type="text" name="userId" id="userId" readonly="" value="<%=userId%>" />
                                            <p class="help-block" style="color:maroon">E.g UE/12364/12</p>
                                           </div>
                                        </div>

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">SurName</label>
                                           <div class="col-lg-4">
                                            <input class="form-control" type="text" name="surName" id="surName" placeholder="surName" value="<%=surName%>"/>
                                           </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-lg-4">First Name</label>
                                            <div class="col-lg-4">
                                            <input class="form-control" type="text" name="firstName" id="firstName" placeholder="firstName" value="<%=firstName%>"/>
                                            </div>
                                       </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Other Name</label>
                                            <div class="col-lg-4">
                                            <input class="form-control" type="text" name="otherName" id="otherName" placeholder="otherName" value="<%=otherName%>"/>
                                            </div>
                                       </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Maiden Name</label>
                                            <div class="col-lg-4">
                                                <input class="form-control" type="text" name="maidenName" id="maidenName" placeholder="maidenName" value="<%=maidenName%>" />
                                            </div>
                                        </div>

                                       <div class="form-group">
                                              <label class="control-label col-lg-4">State Of Origin</label>
                                             <div class="col-lg-4">
                                              <select class="form-control" name="stateOfOrigin" id="stateOfOrigin" onchange="this.form.submit()" required>
                                              <option>-select state-</option>
                                               <%
                                              try{
                                                  ArrayList liststate =universityLogicl.viewAllState();
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
                                          </div>

                                        <div class="form-group">
                                           <label class="control-label col-lg-4">LocalGovt</label>
                                          <div class="col-lg-4">
                                           <select class="form-control" name="localGovt" id="localGovt" onchange="" required>
                                                   <option>-select LGA- </option>
                                                 <%

                                                try{
                                                    ArrayList listLga = universityLogicl.viewByState(stateOfOrigin);
                                                    Iterator itr2 = listLga.iterator();
                                                    while(itr2.hasNext()){
                                                        LocalGovtHelper localgovth=(LocalGovtHelper)itr2.next();
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
                                          </div>
                
                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Select Your Sex</label>
                                            <div class="col-lg-4">
                                            <div class="radio">
                                                <label> Male<input class="" type="radio" name="sex" id ="sex" value="male"/></label>
                                            </div>
                                            <div class="radio">
                                                 <label>Female<input class="" type="radio" name="sex" id ="sex" value="female"/></label>
                                            </div>
                                            </div>
                                        </div>
                                       <div class="form-group">
                                           <label class="control-label col-lg-4">Marital Status</label>
                                          <div class="col-lg-4">
                                           <select class="form-control" name="maritalStatus" id="maritalStatus" value="<%=maritalStatus%>" onchange="" required>
                                                   <option>-select: Marital Status- </option>
                                                   <option>Single </option>
                                                   <option>Married </option>
                                                   <option>Divorced </option>
                                                   <option>Widow </option>
                                                   <option>Widower </option>
                                               </select>
                                          </div>
                                        </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Date of Birth</label>
                                            <div class="col-lg-4">
                                                <input type="date" id="dob" name="dob" placeholder="" class="form-control" required />
                                                <p class="help-block" style="color:maroon">E.g 12/4/1993</p>
                                            </div>
                                        </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Permanent Home Address</label>
                                            <div class="col-lg-4">
                                                <textarea row="5" class="form-control" type="textarea" name="permHomeAddr" id="permHomeAddr" placeholder="" value="<%=permHomeAddr%>"></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Contact Address</label>
                                            <div class="col-lg-4">
                                                <textarea row="" class="form-control" type="textarea" name="contactAddr" id="contactAddr" placeholder="" value="<%=contactAddr%>"></textarea>
                                                <p class="help-block" style="color:maroon">If its not thesame as permanent address</p>
                                            </div>
                                        </div>

                                        

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">Home Town</label>
                                            <div class="col-lg-4">
                                                <input class="form-control" type="text" name="homeTown" id="homeTown" placeholder="Home Town" />
                                            </div>
                                         </div>

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">Country</label>
                                            <div class="col-lg-4">
                                                <input class="form-control" type="text" name="country" id="country" placeholder="Country" />
                                                <p class="help-block" style="color:maroon">Foreigners Only</p>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">E-mail</label>
                                            <div class="col-lg-4">
                                                <input type="email" id="email" name="email" class="form-control" />
                                                <p class="help-block" style="color:maroon">E.g ddddd@yahoo.com</p>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Phone Number</label>
                                            <div class="col-lg-4">
                                                <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" />
                                            </div>
                                        </div>

                                        
                
                    <p style="text-align:justify;color:gray;">
                        <b> Agreement & Declaration</b> <br /><br />
                        I declare that all the information are true and that if it is found to be fake at anytime
                        I shall face full weight of school's punishment.
                        <br />
                        <div class="radio">
                          <input class="" type="checkbox" name="accept" id ="accept" value="I accept terms & conditions" required=""/>
                        </div>
                        <br />
                       
                    </p>
                

            </div>
                          
                       <div class="" style="text-align:center;">
                           <input type="submit" value="NEXT" id="next" name="next" class="btn btn-primary btn-lg " />
                           
                       </div>
                          
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
    <script src="assets/js/jquery-ui.min.js"></script>
 
       <script src="assets/js/formsInit.js"></script>
    <script>
        $(function () { formValidation(); });
        </script>

    


         <!-- END PAGE LEVEL SCRIPTS -->
</body>
     <!-- END BODY -->
</html>




