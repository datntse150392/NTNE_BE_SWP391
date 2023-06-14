<%-- 
    Document   : Login
    Created on : Jun 11, 2023, 11:36:36 AM
    Author     : baoit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--<link rel="stylesheet" href="assets/css/LoginPageCSS/bootstrap.css">-->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link href="<c:url value="/CSSMAIN/contentLayout/login_layout/layout.css" />" rel="stylesheet" type="text/css"/>  

        <title>Login Page</title>  
    </head>
    <body>
        <section class="main">
            <div class="container">
                <div class="wrapper">
                    <div class="wrapper-login">
                        <div class="login-header">
                            <div class="login-header-detail">
                                <h5>Chào mừng Quý khách đến với</h5>
                                <h1>Nha Trang Nature Elite</h1>
                            </div>

                        </div>
                        <div class="login-body">

                            <div class="login-option">

                                <button class="login-button"><a href="#" >Đăng nhập</a></button>    
                                <button class="register-button"><a href="#" >Đăng kí</a></button>    

                            </div>
                            <div class="login-form">
                                <div class="login-form-header">
                                    <form action="login_handler.do" method="post">
                                        <div class="login-form-user">
                                            <label for="username">
                                                Số điện thoại hoặc email <br>
                                                <input id="username" type="text" name="username" placeholder="Tài khoản" value="${username}"> 
                                            </label>
                                        </div>
                                        <div class="login-form-password">
                                            <label for="password">
                                                Mật khẩu
                                                <br>
                                                <input type="password" id="passowrd" name="password" placeholder="Mật khẩu" value="${password}">
                                            </label>
                                        </div>
                                        <button class="press-login" type="submit">Đăng nhập</button>
                                    </form>
                                    ${message}
                                </div>
                                <div class="form-divider">Hoặc</div>

                            </div>

                        </div>
                        <div class="add-on">

                            <div class="btn-google" readonly="readonly"><a href="https://accounts.google.com/o/oauth2/auth?client_id=224681386135-ieoer1kr21a56bnm2mh1pav2ionb4qr3.apps.googleusercontent.com&redirect_uri=http://localhost:8080/SWP391_NTNE/account/login_google.do&response_type=code&scope=profile&access_type=offline"><i class="fa-brands fa-google"></i> Tiếp
                                    tục với Google</a></div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <!--<script src="./js/sliders/jquery.min.js"></script>-->
        <!--<script src="./js/sliders/bootstrap.js"></script>-->
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
    </body>
</html>
