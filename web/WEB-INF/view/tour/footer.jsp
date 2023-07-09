<%-- 
    Document   : footer
    Created on : Jun 11, 2023, 4:32:25 PM
    Author     : Nguyen Huy Khai
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/bootsrap1.css"/>" rel="stylesheet" type="text/css">
        
        <link href="<c:url value="/assets/css/header_footer.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        
        
        
        <!--Import JS Slider -->
        
        
        <title>Nha Trang Nature Elite</title>
    </head>
    <body>
        <!-- Start: Footer -->
        <div id="footer">
            <div class="container">
                <div class="row__special">
                    <div class="col-lg-3 col-md-6">
                        
                        <div class="contact-item">
                            <i class="fas fa-comments-alt contact-icon"></i>
                            <div class="contact-content">
                                <p class="contact-content-title">Messenger</p>
                                <a href="" class="contact-content-link"> http://m.me/nhatrangnatureelite</a>
                            </div>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-phone-volume contact-icon"></i>
                            <div class="contact-content">
                                <p class="contact-content-title">Call center</p>
                                <a href="" class="contact-content-link"> 1800XXXX (Việt Nam)</a>
                                <a href="" class="contact-content-link"> 098.765.4321</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="top-homstay">
                            <p class="footer-content-heading">CHÍNH SÁCH</p>
                            <ul class="footer-content-list">
                                <li class="footer-content-item"><a href="" class="footer-content-link">Điều khoản sử dụng</a></li>
                                <li class="footer-content-item"><a href="" class="footer-content-link">Chính sách bảo mật</a></li>
                                <li class="footer-content-item"><a href="" class="footer-content-link">Đặt cọc Online</a></li>
                                <li class="footer-content-item"><a href="" class="footer-content-link">Chính sách Hoàn - Hủy Tour</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4">
                        <div class="about-me">
                            <p class="footer-content-heading">VỀ CHÚNG TÔI</p>
                            <ul class="footer-content-list">
                                <li class="footer-content-item">
                                    <i class="fas fa-phone"></i>
                                    098.765.4321 - 091.234.5678
                                </li>
                                <li class="footer-content-item">
                                    <i class="fas fa-map-marker"></i>
                                    FPT University, Thủ Đức, TP.HCM
                                </li>
                                <li class="footer-content-item">
                                    <i class="fas fa-envelope"></i>
                                    info@nhatrangnatureelite.com.vn
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4">
                        <div class="social-item">
                            <p class="footer-content-heading">FOLLOW US</p>
                            <div class="social-network">
                                <div class="social-item">
                                    <a href="https://www.instagram.com/nature/"><i class="fab fa-instagram social-icon"></i></a>
                                </div>
                                <div class="social-item">
                                    <a href="https://www.youtube.com/@NTNVlogsNguyenThanhNam"><i class="fab fa-youtube social-icon"></i></a>
                                </div>
                                <div class="social-item">
                                    <a href="https://www.facebook.com/profile.php?id=100094417777643"><i class="fab fa-facebook-f social-icon"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="copyright">
                    <div class="container">
                        <p class="copyright-content">&copy;2023 NhaTrangNatureElite. Bản quyền thuộc về Công ty TNHH Nha Trang Nature Elite. Mọi hành vi sao chép đều là phạm pháp nếu không có sự cho phép bằng văn bản của chúng tôi.</p>
                        <p class="author-copyright">copyright&copy; by DKTBL</a></p>
                    </div>
                </div>
            </div>

            <div class="move-on-top">
                <div class="move-on-top-container">
                    <a href="#" class="text-decoration-none" ><i class="fas fa-arrow-up move-on-top-btn"></i></a>
                </div>
            </div>
        </div>
        <!-- End: Footer -->
        <script src="<c:url value="/assets/js/homePageJS/slider/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/slider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/main.js"/>" type="text/javascript"></script>
    </body>
</html>
