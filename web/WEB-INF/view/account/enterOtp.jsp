<%-- 
    Document   : enterotp
    Created on : Jun 29, 2023, 11:45:38 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <title>JSP Page</title>
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/Login/enterOtp.css"/>" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div class="form-gap">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-center">
                                    <h3>
                                        <i class="fa fa-lock fa-4x"></i>
                                    </h3>
                                    <h2 class="text-center">Enter OTP</h2>
                                    <%
                                        if (request.getAttribute("message") != null) {
                                            out.print("<p class='text-danger ml-1'>" + request.getAttribute("message") + "</p>");
                                        }

                                    %>
                                    <div class="panel-body">

                                        <form id="register-form" action="<c:url value="/account/validateOtpHandler.do"/>" role="form" autocomplete="off"
                                              class="form" method="post">

                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="glyphicon glyphicon-envelope color-blue"></i>
                                                    </span> 
                                                    <input id="opt" name="otp" placeholder="Enter OTP" class="form-control" type="text" required="required">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">
                                            </div>

                                            <input type="hidden" class="hide" name="token" id="token" value="">
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </body>
</html>
