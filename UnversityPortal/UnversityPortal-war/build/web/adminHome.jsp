<%-- 
    Document   : adminHome
    Created on : Jan 3, 2017, 4:52:04 PM
    Author     : Uche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<!-- BEGIN HEAD -->
<head>
     <meta charset="UTF-8" />
    <title>Admin Page</title>
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
                    <a href="biodata.jsp" >
                        <i class="icon-table"></i> Update BioData


                    </a>
                </li>

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



