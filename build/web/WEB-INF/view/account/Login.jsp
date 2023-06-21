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
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        
        <link rel="stylesheet" href="../assets/css/Login/layout.css">
        <link rel="stylesheet" href="../assets/css/header_footer.css">
        <link rel="stylesheet" href="../assets/css/HomePageCSS/bootstrap1.css">
        


        <title>Login Page</title>  
    </head>
    <body>
        <div id="header">
            <div class="container h-100">
                <div class="header__container">
                    <!-- Start: Logo And Search -->
                    <div class="header__logo">
                        <a href="#">
                            <svg version="1.1" viewBox="0 0 50 50" class="header__logo-pc-svg" id="logo-pc">
                            <path pid="0" d="M25.093 0c13.781.06 24.94 11.317 24.882 25.106C49.917 38.894 38.663 50.058 24.88 50 11.1 49.942-.059 38.683.001 24.894.057 11.106 11.31-.058 25.092 0zm11.801 31.9L14.398 16.053c.241-.26.48-.518.74-.777 2.7-2.687 5.971-4.031 9.775-4.015 3.804.015 7.064 1.388 9.741 4.098.238.241.476.482.694.743l-5.951 4.133 2.381 1.688 5.153-3.576v.02L39.33 16.7c-.692-1.203-1.584-2.325-2.616-3.39-3.231-3.292-7.167-4.947-11.788-4.967-4.6-.019-8.53 1.603-11.809 4.867a17.806 17.806 0 00-2.682 3.408l1.429 1.004 23.429 16.51c-.24.26-.48.518-.74.777-2.7 2.687-5.971 4.011-9.775 3.996-3.803-.016-7.063-1.37-9.74-4.08-.258-.26-.496-.521-.734-.782l6.111-4.251-.139-.181-2.183-1.528-5.373 3.735v-.021l-2.377 1.65a17.824 17.824 0 002.654 3.43c3.253 3.291 7.169 4.946 11.769 4.965 4.62.021 8.549-1.602 11.83-4.866 1.06-1.075 1.96-2.21 2.682-3.406l-2.383-1.67z"></path>
                            </svg>
                            <svg version="1.1" viewBox="0 0 244 50" class="header__logo-mobile-svg" id="logo-mobile">
                            <path pid="0" d="M25.093 0c13.781.06 24.94 11.317 24.882 25.106C49.917 38.894 38.663 50.058 24.88 50 11.1 49.942-.059 38.683.001 24.894.057 11.106 11.31-.058 25.092 0zm11.801 31.9L14.398 16.053c.241-.26.48-.518.74-.777 2.7-2.687 5.971-4.031 9.775-4.015 3.804.015 7.064 1.388 9.741 4.098.238.241.476.482.694.743l-5.951 4.133 2.381 1.688 5.153-3.576v.02L39.33 16.7c-.692-1.203-1.584-2.325-2.616-3.39-3.231-3.292-7.167-4.947-11.788-4.967-4.6-.019-8.53 1.603-11.809 4.867a17.806 17.806 0 00-2.682 3.408l1.429 1.004 23.429 16.51c-.24.26-.48.518-.74.777-2.7 2.687-5.971 4.011-9.775 3.996-3.803-.016-7.063-1.37-9.74-4.08-.258-.26-.496-.521-.734-.782l6.111-4.251-.139-.181-2.183-1.528-5.373 3.735v-.021l-2.377 1.65a17.824 17.824 0 002.654 3.43c3.253 3.291 7.169 4.946 11.769 4.965 4.62.021 8.549-1.602 11.83-4.866 1.06-1.075 1.96-2.21 2.682-3.406l-2.383-1.67zm45.839 2.652l-12.45-.05.096-21.789a.957.957 0 00-.965-.945l-.678-.003a.96.96 0 00-.974.939v.047c-.048.095-.05.236-.05.33l-.098 22.636a1.337 1.337 0 001.351 1.326l13.805.056a.958.958 0 00.973-.938l.003-.662a1.037 1.037 0 00-1.013-.946v-.001zm27.64-22.67l-.871-.003c-.563-.003-1.027.42-1.027.937l-.075 15.878c-.014 3.157-3.252 5.735-7.197 5.72-3.943-.014-7.158-2.618-7.144-5.775l.123-15.5.052-.282a.957.957 0 00-.201-.756 1.128 1.128 0 00-.767-.332l-.87-.004c-.513-.002-.924.326-1.028.75a.857.857 0 00-.156.47l-.073 15.69c-.02 4.616 4.47 8.402 9.95 8.424 5.48.022 10.004-3.73 10.025-8.3l.122-15.5.054-.282a.952.952 0 00-.203-.755c-.152-.189-.458-.379-.714-.38zm48.638 11.226c-3.275-1.249-6.696-2.496-6.688-4.393.01-2.42 2.721-4.401 6.05-4.387 3.331.014 6.025 2.017 6.014 4.436l-.002.38a.96.96 0 00.961.953l.675.003a.96.96 0 00.971-.945v-.38c.009-1.66-.709-3.276-2.006-4.515-1.635-1.618-4.092-2.532-6.65-2.494-4.873-.02-8.698 3.047-8.715 6.938.03 3.748 4.416 5.38 8.656 6.962 3.324 1.247 6.795 2.495 6.785 4.487-.01 2.372-3.155 4.399-6.775 4.385-3.668-.016-6.747-2.07-6.737-4.44l.001-.38a.961.961 0 00-.96-.954l-.676-.002a.96.96 0 00-.97.945v.38c-.018 3.843 4.215 6.991 9.38 7.012 5.163.022 9.423-3.092 9.44-6.934-.033-3.796-4.464-5.427-8.754-7.057zM193.66 11.84l-18.844-.076c-.547-.003-.996.42-.999.94l-.002.66c-.002.52.443.946.99.949l8.103.032-.095 21.802c-.003.52.443.947.99.949l.696.002c.546.003.996-.42 1-.94l.095-21.802 8.055.031c.547.003.996-.42.999-.94l.003-.66c.003-.52-.443-.946-.99-.947zm49.264.515c-.144-.33-.481-.52-.867-.52l-.87-.005a.963.963 0 00-.677.28l-.145.14-.147.142-6.609 9.677-6.72-9.734c-.048-.046-.096-.094-.096-.14l-.143-.143a.97.97 0 00-.675-.285l-.774-.003a1.021 1.021 0 00-.872.515 1.03 1.03 0 00.045.988l7.966 11.576-.049 11.307c.006.527.437.95.964.946l.675.002a.957.957 0 00.97-.937l.049-11.308 7.923-11.509c.194-.329.243-.705.052-.989zm-37.898 12.047l3.75-7.994 3.728 8.023-7.478-.03zm15.615 10.954v-.047l-10.5-22.733c-.15-.425-.549-.71-1.102-.807-.603-.049-1.156.231-1.41.703v.046l-10.705 22.697v.047l-.204.471c-.095.283-.06.595.097.849.188.258.483.416.802.428l.854.004c.453.001.806-.282.958-.657l.05-.141 4.314-9.277 9.95.04 4.28 9.31.049.14c.15.38.5.664.952.667l.854.002c.352.002.654-.139.806-.422.152-.281.254-.563.104-.847l-.149-.473zm-86.008-15.15l.817.003a.963.963 0 00.729-.347l4.755-6.218.412-.478a.763.763 0 00.095-.915c-.135-.306-.453-.482-.816-.483l-.863-.004a.929.929 0 00-.868.608l-4.983 6.522a.94.94 0 00-.096.915c.135.22.453.394.816.397h.002zm-6.998 8.45l-.819-.002a.96.96 0 00-.728.347l-4.755 6.207-.413.48a.77.77 0 00-.094.92c.135.309.452.485.816.488l.864.002a.91.91 0 00.82-.478l5.03-6.601a.949.949 0 00.095-.92 1.027 1.027 0 00-.816-.443zm8.019-.453l.148.14 5.55 7.248c.248.284.246.662.095.99-.15.332-.5.519-.9.517l-.896-.004a1.013 1.013 0 01-.697-.286l-.149-.14c-.03-.002-.042-.02-.059-.044a.212.212 0 00-.04-.052l-5.501-7.151a1.005 1.005 0 01-.15-.237l-11.694-15.39-.446-.521c-.248-.285-.246-.662-.096-.993.15-.33.501-.518.9-.516l.897.004a.99.99 0 01.845.428l.15.19 11.992 15.721s.05.048.05.096z"></path>
                            </svg>
                        </a>
                    </div>
                    <div class="header__search">
                        <div class="header__search-inputs">
                            <span class="fad fa-search header__search-icon"></span>
                            <input type="text" placeholder="Tìm kiếm" class="header__search-input">
                        </div>
                        <div class="header__search-submit">
                            <button class="header__search-submit-btn">
                                <span class="fas fa-search  header__search-submit-icon"></span>
                            </button>
                        </div>

                        <div class="header__search-suggest">
                            <h5 class="search__suggest-heading">TÌM KIẾM GẦN ĐÂY</h5>
                            <ul class="search__suggest-list">
                                <li class="search__suggest-item">
                                    <div class="search__suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour1.jpg?alt=media&token=0d2561fd-d2fb-4b37-9ea7-77aa2fec3ea6&_gl=1*m2nlv3*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNDc2Mi4wLjAuMA.." alt="" class="search__suggest-thumbnail-img">
                                    </div>
                                    <div class="search__suggest-content">
                                        <p class="search__suggest-title">Vinpearl Land</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search__suggest-item">
                                    <div class="search__suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour4.jpg?alt=media&token=4458f3f5-20d5-4691-9149-f11ef5883f59&_gl=1*1d42w0z*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTA3MS4wLjAuMA.." alt="" class="search__suggest-thumbnail-img">
                                    </div>
                                    <div class="search__suggest-content">
                                        <p class="search__suggest-title">Đảo Bình Hưng</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search__suggest-item">
                                    <div class="search__suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour9.jpg?alt=media&token=0d732622-9c3e-437a-88fc-9da066c5d44d&_gl=1*1xxmd6f*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTI0OS4wLjAuMA.." alt="" class="search__suggest-thumbnail-img">
                                    </div>
                                    <div class="search__suggest-content">
                                        <p class="search__suggest-title">Hang Rái - Vĩnh Hy</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search__suggest-item">
                                    <div class="search__suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour8.jpg?alt=media&token=fcd2565a-3aa9-4e5b-9808-54de4d11332d&_gl=1*n3l9jo*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTMxNC4wLjAuMA.." alt="" class="search__suggest-thumbnail-img">
                                    </div>
                                    <div class="search__suggest-content">
                                        <p class="search__suggest-title">Hòn Mun</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search__suggest-item">
                                    <div class="search__suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour10.jpg?alt=media&token=b0d7db9f-a069-40ab-b07d-f702a4d3bfa9&_gl=1*1mcbyqs*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTM0Ny4wLjAuMA.." alt="" class="search__suggest-thumbnail-img">
                                    </div>
                                    <div class="search__suggest-content">
                                        <p class="search__suggest-title">Đảo Điệp Sơn</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End: Logo And Search -->
                    <!-- Start: Nav PC -->
                    <div class="header__nav">
                        <ul class="header__nav-list">
                            
                            <li class="header__nav-item"><a href="" class="header__nav-link">Giới thiệu</a></li>
                            <li class="header__nav-item"><a href="" class="header__nav-link">Tour</a></li>
                            <li class="header__nav-item"><a href="" class="header__nav-link">Liên hệ</a></li>
                            
                        </ul>
                    </div>
                    <!-- End: Nav PC -->
                </div>
            </div>
        </div>
        <!-- End: Header -->
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

                                <button class="login-button"><a href="<c:url value="/account/login.do"/>" >Đăng nhập</a></button>    
                                <button class="register-button"><a href="<c:url value="/account/register.do"/>" >Đăng kí</a></button>    

                            </div>
                            <div class="login-form">
                                <div class="login-form-header">
                                    <form action="login_handler.do" method="post">
                                        <div class="login-form-user">
                                            <label for="email">
                                                Email <br>
                                                <input id="email" type="email" name="email" placeholder="example@gmail.com" value="${email}" required=""> 
                                            </label>
                                        </div>
                                        <div class="login-form-password">
                                            <label for="password">
                                                Mật khẩu
                                                <br>
                                                <input type="password" id="password" name="password" placeholder="Mật khẩu" value="${password}" required="">
                                            </label>
                                        </div>
                                                <p style="color: red; text-align: left">${message}</p>
                                            <button class="press-login" type="submit">Đăng nhập</button>
                                    </form>
                                    
                                </div>
                                <div class="form-divider">Hoặc</div>
                            </div>
                        </div>
                        <div class="add-on">

                            <div class="btn-google" readonly="readonly"><a href="https://accounts.google.com/o/oauth2/auth?client_id=224681386135-ieoer1kr21a56bnm2mh1pav2ionb4qr3.apps.googleusercontent.com&redirect_uri=http://localhost:8080/SWP391_NTNE/account/login_google.do&response_type=code&scope=email%20profile&access_type=offline"><i class="fa-brands fa-google"></i> Tiếp
                                    tục với Google</a></div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <svg version="1.1" viewBox="0 0 244 50" class="svg-icon svg-fill" style="width: 170px;">
                        <path pid="0" d="M25.093 0c13.781.06 24.94 11.317 24.882 25.106C49.917 38.894 38.663 50.058 24.88 50 11.1 49.942-.059 38.683.001 24.894.057 11.106 11.31-.058 25.092 0zm11.801 31.9L14.398 16.053c.241-.26.48-.518.74-.777 2.7-2.687 5.971-4.031 9.775-4.015 3.804.015 7.064 1.388 9.741 4.098.238.241.476.482.694.743l-5.951 4.133 2.381 1.688 5.153-3.576v.02L39.33 16.7c-.692-1.203-1.584-2.325-2.616-3.39-3.231-3.292-7.167-4.947-11.788-4.967-4.6-.019-8.53 1.603-11.809 4.867a17.806 17.806 0 00-2.682 3.408l1.429 1.004 23.429 16.51c-.24.26-.48.518-.74.777-2.7 2.687-5.971 4.011-9.775 3.996-3.803-.016-7.063-1.37-9.74-4.08-.258-.26-.496-.521-.734-.782l6.111-4.251-.139-.181-2.183-1.528-5.373 3.735v-.021l-2.377 1.65a17.824 17.824 0 002.654 3.43c3.253 3.291 7.169 4.946 11.769 4.965 4.62.021 8.549-1.602 11.83-4.866 1.06-1.075 1.96-2.21 2.682-3.406l-2.383-1.67zm45.839 2.652l-12.45-.05.096-21.789a.957.957 0 00-.965-.945l-.678-.003a.96.96 0 00-.974.939v.047c-.048.095-.05.236-.05.33l-.098 22.636a1.337 1.337 0 001.351 1.326l13.805.056a.958.958 0 00.973-.938l.003-.662a1.037 1.037 0 00-1.013-.946v-.001zm27.64-22.67l-.871-.003c-.563-.003-1.027.42-1.027.937l-.075 15.878c-.014 3.157-3.252 5.735-7.197 5.72-3.943-.014-7.158-2.618-7.144-5.775l.123-15.5.052-.282a.957.957 0 00-.201-.756 1.128 1.128 0 00-.767-.332l-.87-.004c-.513-.002-.924.326-1.028.75a.857.857 0 00-.156.47l-.073 15.69c-.02 4.616 4.47 8.402 9.95 8.424 5.48.022 10.004-3.73 10.025-8.3l.122-15.5.054-.282a.952.952 0 00-.203-.755c-.152-.189-.458-.379-.714-.38zm48.638 11.226c-3.275-1.249-6.696-2.496-6.688-4.393.01-2.42 2.721-4.401 6.05-4.387 3.331.014 6.025 2.017 6.014 4.436l-.002.38a.96.96 0 00.961.953l.675.003a.96.96 0 00.971-.945v-.38c.009-1.66-.709-3.276-2.006-4.515-1.635-1.618-4.092-2.532-6.65-2.494-4.873-.02-8.698 3.047-8.715 6.938.03 3.748 4.416 5.38 8.656 6.962 3.324 1.247 6.795 2.495 6.785 4.487-.01 2.372-3.155 4.399-6.775 4.385-3.668-.016-6.747-2.07-6.737-4.44l.001-.38a.961.961 0 00-.96-.954l-.676-.002a.96.96 0 00-.97.945v.38c-.018 3.843 4.215 6.991 9.38 7.012 5.163.022 9.423-3.092 9.44-6.934-.033-3.796-4.464-5.427-8.754-7.057zM193.66 11.84l-18.844-.076c-.547-.003-.996.42-.999.94l-.002.66c-.002.52.443.946.99.949l8.103.032-.095 21.802c-.003.52.443.947.99.949l.696.002c.546.003.996-.42 1-.94l.095-21.802 8.055.031c.547.003.996-.42.999-.94l.003-.66c.003-.52-.443-.946-.99-.947zm49.264.515c-.144-.33-.481-.52-.867-.52l-.87-.005a.963.963 0 00-.677.28l-.145.14-.147.142-6.609 9.677-6.72-9.734c-.048-.046-.096-.094-.096-.14l-.143-.143a.97.97 0 00-.675-.285l-.774-.003a1.021 1.021 0 00-.872.515 1.03 1.03 0 00.045.988l7.966 11.576-.049 11.307c.006.527.437.95.964.946l.675.002a.957.957 0 00.97-.937l.049-11.308 7.923-11.509c.194-.329.243-.705.052-.989zm-37.898 12.047l3.75-7.994 3.728 8.023-7.478-.03zm15.615 10.954v-.047l-10.5-22.733c-.15-.425-.549-.71-1.102-.807-.603-.049-1.156.231-1.41.703v.046l-10.705 22.697v.047l-.204.471c-.095.283-.06.595.097.849.188.258.483.416.802.428l.854.004c.453.001.806-.282.958-.657l.05-.141 4.314-9.277 9.95.04 4.28 9.31.049.14c.15.38.5.664.952.667l.854.002c.352.002.654-.139.806-.422.152-.281.254-.563.104-.847l-.149-.473zm-86.008-15.15l.817.003a.963.963 0 00.729-.347l4.755-6.218.412-.478a.763.763 0 00.095-.915c-.135-.306-.453-.482-.816-.483l-.863-.004a.929.929 0 00-.868.608l-4.983 6.522a.94.94 0 00-.096.915c.135.22.453.394.816.397h.002zm-6.998 8.45l-.819-.002a.96.96 0 00-.728.347l-4.755 6.207-.413.48a.77.77 0 00-.094.92c.135.309.452.485.816.488l.864.002a.91.91 0 00.82-.478l5.03-6.601a.949.949 0 00.095-.92 1.027 1.027 0 00-.816-.443zm8.019-.453l.148.14 5.55 7.248c.248.284.246.662.095.99-.15.332-.5.519-.9.517l-.896-.004a1.013 1.013 0 01-.697-.286l-.149-.14c-.03-.002-.042-.02-.059-.044a.212.212 0 00-.04-.052l-5.501-7.151a1.005 1.005 0 01-.15-.237l-11.694-15.39-.446-.521c-.248-.285-.246-.662-.096-.993.15-.33.501-.518.9-.516l.897.004a.99.99 0 01.845.428l.15.19 11.992 15.721s.05.048.05.096z"></path>
                        </svg>
                        <div class="contact-item">
                            <i class="fas fa-comments-alt contact-icon"></i>
                            <div class="contact__content">
                                <p class="contact__content-title">Messenger</p>
                                <a href="" class="contact__content-link"> http://m.me/luxstay</a>
                            </div>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-phone-volume contact-icon"></i>
                            <div class="contact__content">
                                <p class="contact__content-title">Call center</p>
                                <a href="" class="contact__content-link"> 1800XXXX (Việt Nam)</a>
                                <a href="" class="contact__content-link"> 098.765.4321</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="top-homstay">
                            <p class="footer__content-heading">CHÍNH SÁCH</p>
                            <ul class="footer__content-list">
                                <li class="footer__content-item"><a href="" class="footer__content-link">Điều khoản sử dụng</a></li>
                                <li class="footer__content-item"><a href="" class="footer__content-link">Chính sách bảo mật</a></li>
                                <li class="footer__content-item"><a href="" class="footer__content-link">Đặt cọc Online</a></li>
                                <li class="footer__content-item"><a href="" class="footer__content-link">Chính sách Hoàn - Hủy Tour</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4">
                        <div class="about-me">
                            <p class="footer__content-heading">VỀ CHÚNG TÔI</p>
                            <ul class="footer__content-list">
                                <li class="footer__content-item">
                                    <i class="fas fa-phone"></i>
                                    098.765.4321 - 091.234.5678
                                </li>
                                <li class="footer__content-item">
                                    <i class="fas fa-map-marker"></i>
                                    FPT University, Thủ Đức, TP.HCM
                                </li>
                                <li class="footer__content-item">
                                    <i class="fas fa-envelope"></i>
                                    info@nhatrangnatureelite.com.vn
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4">
                        <div class="social-item">
                            <p class="footer__content-heading">FOLLOW US</p>
                            <div class="social-network">
                                <div class="social-item">
                                    <a href=""><i class="fab fa-instagram social-icon"></i></a>
                                </div>
                                <div class="social-item">
                                    <a href=""><i class="fab fa-youtube social-icon"></i></a>
                                </div>
                                <div class="social-item">
                                    <a href=""><i class="fab fa-facebook-f social-icon"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="copyright">
                    <div class="container">
                        <p class="copyright-content">&copy;2023 NhaTrangNatureElite. Bản quyền thuộc về Công ty TNHH Nha Trang Nature Elite. Mọi hành vi sao chép đều là phạm pháp nếu không có sự cho phép bằng văn bản của chúng tôi.</p>
                        <p class="author-copyright">copyright&copy; by DKTBL</p>
                    </div>
                </div>
            </div>

            <div class="move-on-top">
                <div class="move-on-top__container">
                    <a href="#"><i class="fas fa-arrow-up move-on-top-btn"></i></a>
                </div>
            </div>
        </div>
        <script src="../assets/js/Homepage/sliders/jquery.min.js"></script>
        <script src="../assets/js/Homepage/sliders/slider.js"></script>
        <script src="../assets/js/Homepage/main.js"></script>
        
    </body>
</html>
