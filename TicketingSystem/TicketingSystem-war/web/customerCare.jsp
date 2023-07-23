<%-- 
    Document   : customerCare
    Created on : 13-Jul-2017, 00:38:29
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
    <title>Customer Care | Dashboard </title>
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


           if(request.getParameter("createCustomer")!=null){
                String customerEmail = request.getParameter("customerEmail");
                String phoneNumber = request.getParameter("phoneNumber");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String deviceNumber = request.getParameter("deviceNumber");
                String address = request.getParameter("address");

                String result = ticketLogicl.create_customer(deviceNumber, firstName, lastName, customerEmail, phoneNumber, address);
           }

           if(request.getParameter("createTicket")!=null){
                String ticketStatus = request.getParameter("ticketStatus");
                String custEmail = request.getParameter("custEmail");
                String problemDescription = request.getParameter("problemDescription");
                String assignTo = request.getParameter("assignTo");

                String outcome = ticketLogicl.createTicket(custEmail, assignTo, problemDescription, ticketStatus);
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
                                         <br />
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
                    <a href="index.html" >
                        <i class="icon-table"></i> Dashboard


                    </a>
                </li>









                <li><a href="" class="" data-toggle="modal" data-target="#myModal"><i class="icon-angle-right"></i> Create Ticket </a></li>

                <li><a href="" class="" data-toggle="modal" data-target="#customerModal"><i class="icon-sitemap"></i> Create Customer </a></li>

                <li><a href="logout.jsp"><i class="icon-signin"></i> Logout </a></li>

            </ul>

        </div>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">

            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1> Customer Care Dashboard </h1>
                    </div>
                </div>
                  <hr />

                <hr />




                                <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Ticket No</th>
                                            <th>Date Reported</th>
                                            <th>Date Resolved</th>
                                            <th>Customer Phone</th>
                                            <th>Description</th>
                                            <th>Ticket Status</th>
                                            <th>Assigned To</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%
                                          

                                           list = ticketLogicl.viewAllTickets();
                                           itr = list.iterator();
                                           while(itr.hasNext()){
                                           complainh = (ComplainHelper)itr.next();
                                        %>


                                        <tr>
                                        <td><%=complainh.getTicket_no() %></td>
                                        <td><%=complainh.getDate_reported() %></td>
                                        <td><%=complainh.getDate_resolved() %></td>
                                        <td><%=complainh.getPhoneNumber() %></td>
                                        <td><%=complainh.getProblem_description() %></td>
                                        <td><%=complainh.getTicket_status() %></td>
                                        <td><%=complainh.getAssigned_to() %></td>
                                       <%-- <td></td>
                                         <td></td>--%>

                                        </tr>


                                        <%


                                                      }
                                            

                                        %>
                                       

                                    </tbody>
                                </table>
                            </div>


    <!-- modal for ticket creation -->
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title text-center">Create a Ticket</h4>
                        </div>
                        <div class="modal-body">
                            <form  action="#" method="post" role="form">
                                <input type="hidden" name="ticketStatus" value="Unresolved">
                                
                                <div class="form-group">
                                    <label for="">Customer Email</label>
                                    
                                    <input type="email" class="form-control" name="custEmail" id="" placeholder="e.g abd@gmail.com" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="">Problem Description</label>
                                   
                                    <textarea name="problemDescription" id="input" class="form-control" rows="3" required="required" placeholder="Describe customer's complain"></textarea>
                                </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <p>Assign Ticket to an Engineer</p>
                                </div>

                               <%-- <div class="col-md-6">
                                    <p class="pull-right">Upload image for post<span class="c-grey"> (optional)</span></p>
                                </div>--%>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <select name="assignTo" id="input" class="form-control" required>
                                        <option value="">Assign To </option>
                                        <%
                                            UserMgrHelper userMgrh = null;
                                           list = ticketLogicl.viewAllEngineers();
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

                                <%--<input  type="file" name="image">--%>
                                <div class="col-md-6">
                                    <div class="picture" style="float: right;">

                                    <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAhRsMOMIvyfi-rD07o9Fa6DzkaeahYPqYu_KWfNtW1ShsxGxa"
                                    class="picture_src" id="picture_preview" alt="" > -->

                                    <!-- <input class="img_container" type="file" id="upload" name="image"> -->
                                    </div>

                                    <!-- <span class="btn btn-success fileinput-button pull-right">
                                        <span>Browse</span>

                                    <input type="file" name="file">
                                    </span> -->
                                </div>
                            </div>
                                <div class="modal-footer">
                                <button type="button" class="no-bd bg-white c-grey" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="createTicket" value="Create" class="btn bg-red c-white">
                               </div>
                            </form>
                        </div>



                    </div>
                </div>
            </div>
          <!-- End modal for ticket creation -->

        <!-- modal for customer creation -->
            <div class="modal fade" id="customerModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title text-center">Create a Customer Account</h4>
                        </div>
                        <div class="modal-body">
                            <form action="#" method="post" role="form" >
                              
                                <div class="form-group">
                                    <%--<label for="customerEmail">Customer Email</label>--%>

                                    <input type="email" class="form-control" name="customerEmail" id="" placeholder="e.g abd@gmail.com" required="required">
                                </div>

                                <div class="form-group">
                                   <%-- <label for="phoneNumber">Phone Number</label>--%>

                                    <input type="number" class="form-control" name="phoneNumber" id="" placeholder="Phone Number" required="required">
                                </div>
                                
                              
                                <div class="form-group">
                                   <%-- <label for="firstName">First Name</label>--%>

                                    <input type="text" class="form-control" name="firstName" id="" placeholder="First Name" required="required">
                                </div>

                                <div class="form-group">
                                  <%--  <label for="lastName">Last Name</label>--%>

                                    <input type="text" class="form-control" name="lastName" id="" placeholder="Last Name" required="required">
                                </div>
                                

                                 <div class="form-group">
                                   <%-- <label for="deviceNumber">Device Number</label>--%>

                                    <input type="text" class="form-control" name="deviceNumber" id="" placeholder="Device No." required="required">
                                </div>

                                <div class="form-group">
                                    <%--<label for="address">Address</label>--%>

                                    <textarea name="address" id="input" class="form-control" rows="2" required="required" placeholder="address"></textarea>
                                </div>

                                <div class="modal-footer">
                                <button type="button" class="no-bd bg-white c-grey" data-dismiss="modal">Cancel</button>
                                <input type="submit" name="createCustomer" value="Create" class="btn bg-red c-white">
                               </div>
                            </form>
                            </div>
                               
                        </div>



                    </div>
                </div>
            
          <!-- End modal for customer creation -->

          <%
              }
          %>
  </div>

    <!--END MAIN WRAPPER -->

    <!-- FOOTER -->
    <div id="footer">
        <p>&copy;  TechMind &nbsp;2014 &nbsp;</p>
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
