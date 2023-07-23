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
    <title>Confirm Biodata</title>
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
String surName = session.getAttribute("surName").toString();
String firstName = session.getAttribute("firstName").toString();
String otherName = session.getAttribute("otherName").toString();
String maidenName = session.getAttribute("maidenName").toString();
String sex = session.getAttribute("sex").toString();
String maritalStatus = session.getAttribute("maritalStatus").toString();
String dob = session.getAttribute("dob").toString();
String permHomeAddr = session.getAttribute("permHomeAddr").toString();
String contactAddr = session.getAttribute("contactAddr").toString();
String stateOfOrigin = session.getAttribute("stateOfOrigin").toString();
String localGovt = session.getAttribute("localGovt").toString();
String homeTown = session.getAttribute("homeTown").toString();
String country = session.getAttribute("country").toString();
String phoneNumber = session.getAttribute("phoneNumber").toString();
long phoneNumberInt = Long.parseLong(phoneNumber);
String email = session.getAttribute("email").toString();





if(request.getParameter("submit")!=null){
universityLogicl.createBiodata(userId, surName, firstName, otherName, maidenName, sex, maritalStatus, dob, permHomeAddr, contactAddr, stateOfOrigin, localGovt, homeTown, country, phoneNumberInt, email);
response.sendRedirect("imageUpload.jsp");
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
                                            <label class="control-label col-lg-4">Matric No: <%=userId%></label>
                                           
                                        </div>

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">SurName: <%=surName%></label>
                                           
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-lg-4">First Name: <%=firstName%></label>
                                            
                                       </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Other Name: <%=otherName%></label>
                                            
                                       </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Maiden Name: <%=maidenName%></label>
                                            
                                        </div>

                                        <div class="form-group">
                                              <label class="control-label col-lg-4">State Of Origin: <%=stateOfOrigin%></label>

                                          </div>

                                        <div class="form-group">
                                           <label class="control-label col-lg-4">LocalGovt: <%=localGovt%></label>

                                          </div>


                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Sex: <%=sex%> </label>
                                            
                                        </div>

                                       <div class="form-group">
                                           <label class="control-label col-lg-4">Marital Status: <%=maritalStatus%></label>
                                          
                                        </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Date of Birth: <%=dob%></label>
                                            
                                        </div>

                                       <div class="form-group">
                                            <label class="control-label col-lg-4">Permanent Address: <%=permHomeAddr%></label>  
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Contact Address: <%=contactAddr%></label>
                                            
                                        </div>

                                        
                                         <div class="form-group">
                                             <label class="control-label col-lg-4">Home Town: <%=homeTown%></label>
                                            
                                         </div>

                                         <div class="form-group">
                                            <label class="control-label col-lg-4">Country: <%=country%></label>
                                            
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">E-mail: <%=email%></label>
                                            
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-lg-4">Phone Number: <%=phoneNumber%></label>
                                            
                                        </div>


            </div>

                      <div class="" style="text-align:center;">
                           <input type="submit" value="SUBMIT" id="submit" name="submit" class="btn btn-primary btn-lg " />
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




