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
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/Login/enterOtp.css"/>" type="text/css" rel="stylesheet">

    </head>
    <body>
        <div class="form-gap">
            <div class="container" style="padding-top: 25px; ">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="../index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            <a href="<c:url value="/tour/findBooked.do"/>">Tìm Booking</a>  
                        </li>
                    </ol>
                </nav>
            </div>
            <div class="">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-center">
                                    <h3>
                                        <i class="far fa-print-search"></i>
                                    </h3>
                                    <h2 class="text-center">Nhập mã Booking bạn muốn tìm</h2>
                                    <%
                                        if (request.getAttribute("message") != null) {
                                            out.print("<p class='text-danger ml-1'>" + request.getAttribute("message") + "</p>");
                                        }

                                    %>
                                    <div class="panel-body">

                                        <form id="register-form" action="<c:url value="/tour/returnPay.do"/>" role="form" autocomplete="off"
                                              class="form" method="post">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input id="opt" name="bookID" placeholder="Ví dụ: 123" value="" class="form-control" type="number" min="0" maxlength="6" required="required">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input name="findBookingSubmit" class="btn-lg btn-primary btn-block" value="Tìm" type="submit">
                                            </div>
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
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
