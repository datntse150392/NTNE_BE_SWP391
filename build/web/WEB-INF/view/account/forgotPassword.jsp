<%-- 
    Document   : forgotPassword
    Created on : Jun 29, 2023, 8:09:44 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/Login/forgotpassword.css"/>" type="text/css" rel="stylesheet">
        
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    </head>
    <body>
        <div class="container padding-bottom-3x mb-2 mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">
                        <h2 style="font-weight: bold">Quên mật khẩu?</h2>
                        <p>Thiết lập mật khẩu mới chỉ qua 3 bước đơn giản sau. Việc này sẽ giúp bảo mật tài khoản của bạn!</p>
                        <ol class="list-unstyled">
                            <li>1. Nhập địa chỉ <span style="font-weight: bold; color: red">email</span> mà bạn sử dụng để đăng ký.</li>
                            <li>2. Hệ thống sẽ gửi <span style="font-weight: bold; color: red">một mã OTP đến email của bạn</span>.</li>
                            <li>3. Nhập <span style="font-weight: bold; color: red">mã OTP</span> và hoàn thành việc thiết lập mật khẩu mới.</li>
                        </ol>
                    </div>
                    <form class="card mt-4" action="<c:url value="/account/forgotPasswordHandler.do"/>" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="email-for-pass" style="font-weight: bold">Nhập địa chỉ email</label> 
                                <input class="form-control" type="email" name="email" id="email-for-pass" required="">
                                <small class="form-text text-muted">Nhập địa chỉ email mà bạn sử dụng để đăng ký tài khoản.
                                    Sau đó, hệ thống sẽ gửi đến email này một mã OTP.
                                </small>
                                <p style="color: red; text-align: justify; font-weight: bold">${MSG_ERROR}</p>
                                <button class="btn btn-success" type="submit">Lấy mật khẩu mới</button>
                                
                            </div>
                            <a href="<c:url value="/account/login1.do"/>" style="font-weight: bold">Quay về trang chủ</a>
                        </div>
                    </form>
                        
                </div>
            </div>
        </div>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>
        <script type='text/Javascript'></script>
    </body>
</html>
