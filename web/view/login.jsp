<%-- 
    Document   : login
    Created on : Jun 5, 2023, 1:29:42 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/Login/layout.css">
    
    <!-- 
    - google font link
  -->
    <!-- <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Manrope:wght@200&family=Markazi+Text:wght@500&family=Rokkitt:wght@100&display=swap"
        rel="stylesheet">
    <title>Đăng nhập tài khoản</title>
</head>

<body>
    <header>
        <div class="logo">
            <a href="./homepage.html">
                <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4" alt="Trang chủ NhaTrangNatureElite" width="220" height="62">
            </a>
        </div>
        <nav class="nav-menu">
            <ul class="main-menu">
                <li class="menu-item"><a href="#">Giới thiệu</a></li>
                <li class="menu-item"><a href="#">Tour</a></li>
                <li class="menu-item"><a href="#">Blogs</a></li>
                <li class="menu-item"><a href="#">Liên hệ</a></li>
            </ul>
        </nav>
        <div class="action">
            <button class="login-btn">
                <a href="#">Đăng nhập</a>
            </button>
        </div>
    </header>

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
                                                <input id="username" type="text" name="username" placeholder="Tài khoản" value="${email}"> 
                                            </label>
                                        </div>
                                        <div class="login-form-password">
                                            <label for="password">
                                                Mật khẩu
                                                <br>
                                                <input type="password" id="password" name="password" placeholder="Mật khẩu" value="${password}">
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

                            <div class="btn-google" readonly="readonly"><a href="https://accounts.google.com/o/oauth2/auth?client_id=224681386135-ieoer1kr21a56bnm2mh1pav2ionb4qr3.apps.googleusercontent.com&redirect_uri=http://localhost:8084/NTNECompany/account/login_google.do&response_type=code&scope=email&access_type=offline"><i class="fa-brands fa-google"></i> Tiếp
                                    tục với Google</a></div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
    
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
                    <div class="logo-footer">
                        <a href="#">
                            <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo-footer.png?alt=media&token=1ea9b4e7-de5f-478b-b6ee-a20d605a265a" alt="Đây là logo" width="175" height="58">
                        </a>
                    </div>
                    <p class="copyright">© 2023 NhaTrangNatureElite</p>
                    <div class="socials">
                        <a href="#" rel="noopener" class="social" target="_blank" aria-label="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" rel="noopener" class="social" target="_blank" aria-label="twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" rel="noopener" class="social" target="_blank" aria-label="instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
                    <p class="title-col">Chính sách</p>
                    <ul class="quick-links">
                        <li>
                            <a href="#">Điều khoản sử dụng</a>
                        </li>
                        <li>
                            <a href="#">Chính sách bảo mật</a>
                        </li>
                        <li>
                            <a href="#">Đặt cọc Online</a>
                        </li>
                        <li>
                            <a href="#">Chính sách Hoàn - Hủy Tour</a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
                    <p class="title-col">Liên hệ chúng tôi</p>
                    <ul class="contact-info">
                        <li>
                            <i class="fas fa-phone"></i>
                            098.765.4321 - 091.234.5678
                        </li>
                        <li>
                            <i class="fas fa-map-marker"></i>
                            FPT University, Thủ Đức, TP.HCM
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            info@nhatrangnatureelite.com.vn
                        </li>
                    </ul>
                </div>
            </div>
            <div class="page-links">
                <ul>
                    <li>
                        <a href="#">Về chúng tôi</a>
                    </li>
                    <li>
                        <a href="#">Hướng Dẫn Thanh Toán</a>
                    </li>
                    <li>
                        <a href="#">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
    <script src="../assets/js/Homepage/sliders/jquery.min.js"></script>                        
    <script src="../assets/js/Homepage/sliders/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
    <script src="../assets/js/Login/login.js"></script>
    <script>
        login('#form-login');
    </script>
</body>

</html>
