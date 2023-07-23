<%-- 
    Document   : demo
    Created on : Dec 5, 2016, 12:11:47 AM
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
    <body>
        <h1>Hello World!</h1>
        <div class="contact-form-wrapper" align="" font-size="16px">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="TaskName" class="col-sm-3 control-label"><b>TaskName</b></label>

                            <div class="col-sm-9">
                                <input class="form-control" id="TaskName" type="text" placeholder="e.g MobileApp Development">
                            </div>
                        </div>
                        <p></p>
                        <div class="form-group">
                            <label for="task-description" class="col-sm-3 control-label"><b>Description</b></label>
                            <div class="col-sm-9">
                                <textarea class="form-control" rows="5" id="task-description" placeholder="e.g Description of your task"></textarea>

                            </div>
                        </div>
                        <p></p>
                        <div class="form-group">
                            <label for="TeamMember" class="col-sm-3 control-label"><b>TeamMember</b></label>

                            <div class="col-sm-9">
                                <input class="form-control" id="TeamMember" type="text" placeholder="e.g thename@sendmail.com">
                            </div>
                        </div>
                        <p></p>
                        <div class="form-group">
                            <label for="TaskStatus" class="col-sm-3 control-label"><b>TaskStatus</b></label>
                            <div class="col-sm-9">
                                <select class="form-control" id="prependedInput">
                                    <option>Please select TaskStatus</option>
                                    <option>Ongoing</option>

                                    <option>Completed</option>
                                </select>
                            </div>
                        </div>
                        <p></p>
                        <div class="form-group">
                            <label for="TaskCreator" class="col-sm-3 control-label"><b>TaskCreator</b></label>

                            <div class="col-sm-9">
                                <input class="form-control" id="TaskName" type="text" placeholder="e.g MobileApp Development">
                            </div>
                        </div>
                        <p></p>
                        <div class="form-group">
                            <div  class="col-sm-12">
                                <button type="submit" class="btn pull-right">CREATE</button>
                            </div>

                        </div>
                    </form>
                </div>
    </body>
</html>
