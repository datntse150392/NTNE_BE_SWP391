<%-- 
    Document   : login1
    Created on : Jun 24, 2023, 11:34:14 PM
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

        <link rel="stylesheet" href="../assets/css/HomePageCSS/bootstrap1.css">
        <link rel="stylesheet" href="../assets/css/Login/login.css">
        <link rel="stylesheet" href="../assets/css/header_footer.css">
        

    </head>
    <body>
        <div class="wrapper">
            <div class="contain" id="contain">
                <div class="form-contain log-in-contain">
                    <form action="login_handler.do" method="post">
                        <h1>ĐĂNG NHẬP</h1>
                        <input id="email" type="email" name="email" placeholder="Email" value="${email}" required=""> 
                        <input type="password" id="password" name="password" placeholder="Mật khẩu" value="${password}" required="">
                        <p style="color: red; text-align: left">${message}</p>  
                        <a href="#">Quên mật khẩu?</a>
                        <button type="submit">Đăng Nhập</button>
                        <span>Hoặc</span>
                        <div class="add-on">
                            <div class="btn-google" readonly="readonly">
                                <a href="https://accounts.google.com/o/oauth2/auth?client_id=224681386135-ieoer1kr21a56bnm2mh1pav2ionb4qr3.apps.googleusercontent.com&redirect_uri=http://localhost:8080/SWP391_NTNE/account/login_google.do&response_type=code&scope=email%20profile&access_type=offline">
                                    <i class="fa-brands fa-google"></i> 
                                    Tiếp tục với Google
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
                            
                <div class="overlay-contain">
                    <div class="overlay">
                        <div class="overlay-panel overlay-right">
                            <div class="img" style="background-image: url(https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg-1.jpg?alt=media&token=f1ef0d1c-59bc-450e-a59d-fae98466aced);"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
