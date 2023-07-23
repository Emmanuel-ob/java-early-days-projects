<%-- 
    Document   : admin
    Created on : 13-Jul-2017, 00:37:31
    Author     : Obute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="setting.jsp" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8" />
    <title>Admin | Dashboard </title>
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
    <link href="assets/css/layout2.css" rel="stylesheet" />
       <link href="assets/plugins/flot/examples/examples.css" rel="stylesheet" />
       <link rel="stylesheet" href="assets/plugins/timeline/timeline.css" />
    <!-- END PAGE LEVEL  STYLES -->
     <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

    <!-- END HEAD -->

    <%
    if(session.getAttribute("email") == null){
        response.sendRedirect("index.jsp");
    }
      else{
         String email = session.getAttribute("email").toString();

          ComplainHelper complainh= null;
           ArrayList list = new ArrayList();
           Iterator itr = null;


           if(request.getParameter("createStaff")!=null){
                String staffEmail = request.getParameter("staffEmail");
                String password = request.getParameter("password");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String role = request.getParameter("role");
                String status = request.getParameter("status");

                String result = ticketLogicl.create_staff(staffEmail, password, role, status, firstName, lastName);
           }

           if(request.getParameter("deactivateStaff")!=null){
                String staff_email = request.getParameter("staff_email");
                String outcome = ticketLogicl.deactivate_staff(staff_email);
           }

           if(request.getParameter("activateStaff")!=null){
                String staff_Email = request.getParameter("staff_Email");
                String outcome = ticketLogicl.activate_staff(staff_Email);
           }
    %>

    <!-- BEGIN BODY -->
<body class="padTop53 " >

    <!-- MAIN WRAPPER -->
    <div id="wrap" >


        <!-- HEADER SECTION -->
        <div id="top">

            <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
                <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu" id="menu-toggle">
                    <i class="icon-align-justify"></i>
                </a>
                <!-- LOGO SECTION -->
                <header class="navbar-header">

                    <a href="index.html" class="navbar-brand">
                    <img src="assets/img/logo.png" alt="" />

                        </a>
                </header>
                <!-- END LOGO SECTION -->
                <ul class="nav navbar-top-links navbar-right">

                    <!-- MESSAGES SECTION -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="label label-success">2</span>    <i class="icon-envelope-alt"></i>&nbsp; <i class="icon-chevron-down"></i>
                        </a>

                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                       <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Today</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                        <br />
                                        <span class="label label-primary">Important</span>

                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Raphel Jonson</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                         <br />
                                        <span class="label label-success"> Moderate </span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Chi Ley Suk</strong>
                                        <span class="pull-right text-muted">
                                            <em>26 Jan 2014</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                         <br/>
                                        <span class="label label-danger"> Low </span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="icon-angle-right"></i>
                                </a>
                            </li>
                        </ul>

                    </li>
                    <!--END MESSAGES SECTION -->



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
                            <li><a href="logout.jsp"><i class="icon-signout"></i> Logout </a>
                            </li>
                        </ul>

                    </li>
                    <!--END ADMIN SETTINGS -->
                </ul>

            </nav>

        </div>
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
       <div id="left" >
            <div class="media user-media well-small">
                <a class="user-link" href="#">
                    <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/img/user.gif" />
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading"> ##</h5>
                    <ul class="list-unstyled user-info">

                        <li>
                             <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                        </li>

                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">


                <li class="panel active">
                    <a href="" >
                        <i class="icon-table"></i> Dashboard


                    </a>
                </li>








                <li><a href="" class="" data-toggle="modal" data-target="#staffModal"><i class="icon-signin"></i> Create Staff </a></li>

                <li><a href="" class="" data-toggle="modal" data-target="#deactivateModal"><i class="icon-gear"></i> Deactivate Staff </a></li>

                 <li><a href="" class="" data-toggle="modal" data-target="#activateModal"><i class="icon-gear"></i> Activate Staff </a></li>

                <li><a href="logout.jsp"><i class="icon-signin"></i> Logout </a></li>

            </ul>

        </div>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">

            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1> Admin Dashboard </h1>
                    </div>
                </div>
                  <hr />

                <hr />

                 <!-- COMMENT AND NOTIFICATION  SECTION -->
                <div class="row">
                    <div class="col-lg-7">

                        <div class="chat-panel panel panel-success">
                            <div class="panel-heading">
                                <i class="icon-comments"></i>
                                New Comments

                            </div>

                            <div class="panel-body">
                                <ul class="chat">
                                    <li class="left clearfix">
                                        <span class="chat-img pull-left">
                                            <img src="assets/img/1.png" alt="User Avatar" class="img-circle" />
                                        </span>
                                        <div class="chat-body clearfix">
                                            <div class="header">
                                                <strong class="primary-font "> Jack Sparrow </strong>
                                                <small class="pull-right text-muted label label-danger">
                                                    <i class="icon-time"></i> 12 mins ago
                                                </small>
                                            </div>
                                             <br />
                                            <p>
                                                Lorem ipsum dolor sit amet, bibendum ornare dolor, quis ullamcorper ligula sodales.
                                            </p>
                                        </div>
                                    </li>
                                    <li class="right clearfix">
                                        <span class="chat-img pull-right">
                                            <img src="assets/img/2.png" alt="User Avatar" class="img-circle" />
                                        </span>
                                        <div class="chat-body clearfix">
                                            <div class="header">
                                                <small class=" text-muted label label-info">
                                                    <i class="icon-time"></i> 13 mins ago</small>
                                                <strong class="pull-right primary-font"> Jhony Deen</strong>
                                            </div>
                                            <br />
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur a dolor, quis ullamcorper ligula sodales.
                                            </p>
                                        </div>
                                    </li>
                                    <li class="left clearfix">
                                        <span class="chat-img pull-left">
                                            <img src="assets/img/3.png" alt="User Avatar" class="img-circle" />
                                        </span>
                                        <div class="chat-body clearfix">
                                            <div class="header">
                                                <strong class="primary-font"> Jack Sparrow </strong>
                                                <small class="pull-right text-muted label label-warning">
                                                    <i class="icon-time"></i> 12 mins ago
                                                </small>
                                            </div>
                                             <br />
                                            <p>
                                                Lorem ipsum dolor sit amet, bibendum ornare dolor, quis ullamcorper ligula sodales.
                                            </p>
                                        </div>
                                    </li>
                                    <li class="right clearfix">
                                        <span class="chat-img pull-right">
                                            <img src="assets/img/4.png" alt="User Avatar" class="img-circle" />
                                        </span>
                                        <div class="chat-body clearfix">
                                            <div class="header">
                                                <small class=" text-muted label label-primary">
                                                    <i class="icon-time"></i> 13 mins ago</small>
                                                <strong class="pull-right primary-font"> Jhony Deen</strong>
                                            </div>
                                            <br />
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur a dolor, quis ullamcorper ligula sodales.
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="panel-footer">
                                <div class="input-group">
                                    <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your comment here..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-success btn-sm" id="btn-chat">
                                            Send
                                        </button>
                                    </span>
                                </div>
                            </div>

                        </div>


                    </div>
                    <div class="col-lg-5">

                       <div class="panel panel-danger">
                            <div class="panel-heading">
                                <i class="icon-bell"></i> Notifications Alerts Panel
                            </div>

                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <i class=" icon-comment"></i> New Comment
                                    <span class="pull-right text-muted small"><em> 4 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="icon-twitter"></i> 3 New Followers
                                    <span class="pull-right text-muted small"><em> 12 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="icon-envelope"></i> Message Sent
                                    <span class="pull-right text-muted small"><em> 27 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="icon-tasks"></i> New Task
                                    <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="icon-upload"></i> Server Rebooted
                                    <span class="pull-right text-muted small"><em>11:32 AM</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="icon-warning-sign"></i> Server Crashed!
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                                    </a>

                                    <a href="#" class="list-group-item">
                                        <i class="icon-ok"></i> New Order Placed
                                    <span class="pull-right text-muted small"><em>9:49 AM</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class=" icon-money"></i> Payment Received
                                    <span class="pull-right text-muted small"><em>Yesterday</em>
                                    </span>
                                    </a>
                                </div>

                                <a href="#" class="btn btn-default btn-block btn-primary">View All Alerts</a>
                            </div>

                        </div>



                    </div>
                </div>
                <!-- END COMMENT AND NOTIFICATION  SECTION -->

<!-- modal for staff creation -->
            <div class="modal fade" id="staffModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title text-center">Create a Staff Account</h4>
                        </div>
                        <div class="modal-body">
                            <form action="#" method="post" role="form" >

                                <input type="hidden" name="status" value="active">
                                <div class="form-group">
                                    <%--<label for="customerEmail">Customer Email</label>--%>

                                    <input type="email" class="form-control" name="staffEmail" id="" placeholder="e.g abd@gmail.com" required="required">
                                </div>

                                <div class="form-group">
                                   <%-- <label for="phoneNumber">Phone Number</label>--%>

                                    <input type="password" class="form-control" name="password" id="" placeholder="Password" required="required">
                                </div>


                                <div class="form-group">
                                   <%-- <label for="firstName">First Name</label>--%>

                                    <input type="text" class="form-control" name="firstName" id="" placeholder="First Name" required="required">
                                </div>

                                <div class="form-group">
                                  <%--  <label for="lastName">Last Name</label>--%>

                                    <input type="text" class="form-control" name="lastName" id="" placeholder="Last Name" required="required">
                                </div>
                                    
                                <div class="row">
                                    <div class="col-md-6">
                                        <select name="role" id="input" class="form-control" required>
                                            <option value="">Select Staff Role </option>
                                            <option value="engineer">Engineer</option>
                                            <option value="customerCare"> Customer Care</option>
                                            <option value="rf">RF</option>
                                            <option value="admin">Admin</option>

                                        </select>
                                    </div>
                               </div>

                                <div class="modal-footer">
                                <button type="button" class="no-bd bg-white c-grey" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="createStaff" value="Create" class="btn bg-red c-white">
                               </div>
                            </form>
                            </div>

                        </div>



                    </div>
                </div>

          <!-- End modal for staff creation -->

          <!-- modal for staff deactivation -->
            <div class="modal fade" id="deactivateModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title text-center">Deactivate Staff Account</h4>
                        </div>
                        <div class="modal-body">
                            <form action="#" method="post" role="form" >

                                
                                <div class="row">
                                <div class="col-md-6">
                                    <p>Select Staff to Deactivate</p>
                                </div>

                               <%-- <div class="col-md-6">
                                    <p class="pull-right">Upload image for post<span class="c-grey"> (optional)</span></p>
                                </div>--%>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select name="staff_email" id="input" class="form-control" required>
                                        <option value="">Select Staff </option>
                                        <%
                                            UserMgrHelper userMgrh = null;
                                           list = ticketLogicl.viewAllStaff();
                                           itr = list.iterator();
                                           while(itr.hasNext()){
                                           userMgrh = (UserMgrHelper)itr.next();
                                         %>
                                        <option value="<%=userMgrh.getEmail() %>"><%=userMgrh.getFirstName() %> <%=userMgrh.getLastName() %></option>

                                         <%


                                                      }


                                        %>

                                    </select>
                                </div>

                            </div>

                                <div class="modal-footer">
                                <button type="button" class="no-bd bg-white c-grey" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="deactivateStaff" value="Deactivate" class="btn bg-red c-white">
                               </div>
                            </form>
                            </div>

                        </div>



                    </div>
                </div>

          <!-- End modal for staff deactivation -->


          <!-- modal for staff activation -->
            <div class="modal fade" id="activateModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title text-center">Deactivate Staff Account</h4>
                        </div>
                        <div class="modal-body">
                            <form action="#" method="post" role="form" >


                                <div class="row">
                                <div class="col-md-6">
                                    <p>Select Staff to Deactivate</p>
                                </div>

                               <%-- <div class="col-md-6">
                                    <p class="pull-right">Upload image for post<span class="c-grey"> (optional)</span></p>
                                </div>--%>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select name="staff_Email" id="input" class="form-control" required>
                                        <option value="">Select Staff </option>
                                        <%

                                           list = ticketLogicl.viewAllStaff();
                                           itr = list.iterator();
                                           while(itr.hasNext()){
                                           userMgrh = (UserMgrHelper)itr.next();
                                         %>
                                        <option value="<%=userMgrh.getEmail() %>"><%=userMgrh.getFirstName() %> <%=userMgrh.getLastName() %></option>

                                         <%


                                                      }


                                        %>

                                    </select>
                                </div>

                            </div>

                                <div class="modal-footer">
                                <button type="button" class="no-bd bg-white c-grey" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="activateStaff" value="Activate" class="btn bg-red c-white">
                               </div>
                            </form>
                            </div>

                        </div>



                    </div>
                </div>

          <!-- End modal for staff activation -->

<%
}
%>

    
 </div>

    <!--END MAIN WRAPPER -->

    <!-- FOOTER -->
    <div id="footer">
        <p>&copy;  binarytheme &nbsp;2014 &nbsp;</p>
    </div>
    <!--END FOOTER -->


    <!-- GLOBAL SCRIPTS -->
    <script src="assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->

    <!-- PAGE LEVEL SCRIPTS -->
    <script src="assets/plugins/flot/jquery.flot.js"></script>
    <script src="assets/plugins/flot/jquery.flot.resize.js"></script>
    <script src="assets/plugins/flot/jquery.flot.time.js"></script>
     <script  src="assets/plugins/flot/jquery.flot.stack.js"></script>
    <script src="assets/js/for_index.js"></script>

    <!-- END PAGE LEVEL SCRIPTS -->


</body>

    <!-- END BODY -->
</html>


