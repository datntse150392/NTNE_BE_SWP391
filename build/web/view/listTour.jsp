<%-- 
    Document   : listTour
    Created on : Jun 5, 2023, 1:44:27 AM
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
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<!--        <link rel="stylesheet" href="../assets/css/bootstrap.css">-->
        <link rel="stylesheet" href="<c:url value="assets/css/ListTour/header_footer.css"/>">
        <link rel="stylesheet" href="/assets/css/ListTour/styles.css">
        <title>Tổng Hợp Tour Du Lịch Nha Trang 1 Ngày HOT Nhất Hiện Nay</title>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="../index.jsp">
                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*165tam*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODY1OS4wLjAuMA.." alt="Trang chủ NhaTrangNatureElite" width="220" height="62">
                </a>
            </div>
            <nav class="nav-menu">
                <ul class="main-menu">
                    <li class="menu-item"><a href="#">Tour</a></li>
                    <li class="menu-item"><a href="#">Blogs</a></li>
                    <li class="menu-item"><a href="#">Liên hệ</a></li>
                </ul>
            </nav>
            <div class="action">
                <button class="login-btn">
                    <a href="<c:url value="/view/login.jsp"/>">Đăng nhập</a>
                </button>
            </div>
        </header>

        <div class="category-header">
            <h1 class="category-title">Tour Du lịch Nha Trang 1 ngày</h1>
        </div>

        <section class="main">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../index.jsp">Trang chủ</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tour 1 ngày</li>
                    </ol>
                </nav>
            </div>

            <div class="meta-description">
                <div class="container">
                    <div class="meta-container">
                        <p>Những Tour du lịch Nha Trang 1 ngày [Cập Nhật 2023] bên dưới chính là câu trả lời cho những ai đang phân vân: Nếu chỉ được ở lại Nha Trang 1 ngày thì mình sẽ đi đâu để có thể ngắm được một phần cảnh đẹp nơi đây. Đội ngũ công ty lữ hành quốc tế Nha Trang Nature Elite luôn sẵn sàng hỗ trợ tư vấn cho quý khách để quý khách có thể chọn được Tour ưng ý cho gia đình mình dưới hình thức ghép đoàn hoặc đi riêng.</p>

                    </div>
                </div>
            </div>

            <div class="category-service">
                <div class="container">
                    <div class="row tour-list">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="<c:url value="/view/detailTour.jsp"/>" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour1.jpg?alt=media&token=0d2561fd-d2fb-4b37-9ea7-77aa2fec3ea6&_gl=1*o5u4ai*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODc4Ny4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Vinpearl Land</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: VinWonders, Diving Club, Imperial Club, Wave Bar</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>900,000 VND</del></p>
                                        <p class="new-price">800,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="#" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour2.jpg?alt=media&token=a43242ce-3144-4d90-a132-4e814aed891a&_gl=1*8ccf41*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODgxMy4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Tour 4 Đảo Nha Trang</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: Bãi Tranh, Làng Chài, Robinson, Hòn Tằm</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>700,000 VND</del></p>
                                        <p class="new-price">600,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="#" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour3.jpg?alt=media&token=9a180760-f281-4a5c-9b6d-b28914ed00d4&_gl=1*1e3a5hu*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODgzMC4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Tour Vịnh Đảo Bình Ba</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: Cảng Đá Bạc, Hòn Xanh, Vương Quốc Tôm Hùm, Hòn Rùa</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>800,000 VND</del></p>
                                        <p class="new-price">700,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="#" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour4.jpg?alt=media&token=4458f3f5-20d5-4691-9149-f11ef5883f59&_gl=1*1j92se3*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODg0Ni4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Tour Vịnh Đảo Bình Hưng</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: Vườn Nho, Hang Rái, vịnh Vĩnh Hy, đảo Bình Hưng</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>850,000 VND</del></p>
                                        <p class="new-price">750,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="#" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour5.jpg?alt=media&token=36f0bd0d-5c11-46f1-8139-4b175a676272&_gl=1*v3cvdg*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODg4MC4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Tour Du Thuyền Sea Coral</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: Vịnh Nha Trang, Horizon Bar, Sundeck, Islands Club</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>1,199,000 VND</del></p>
                                        <p class="new-price">999,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                            <div class="tour-item">
                                <figure class="thumb">
                                    <a href="#" class="lazy-container">
                                        <img class="lazy" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour6.jpg?alt=media&token=315c71e2-b31d-4de6-a9f1-635ff0d032e8&_gl=1*1dxln67*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODkyNi4wLjAuMA..">
                                    </a>
                                    <span class="sale">hot</span>
                                </figure>
                                <div class="content">
                                    <a href="#"><h2 class="tour-name">Tour 3 Đảo Nha Trang</h2></a>
                                    <div class="place">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="text">Điểm đến: Cảng Vĩnh Trường, Bãi Tranh, Hòn Tằm, Làng Chài</span>
                                    </div>
                                    <div class="price">
                                        <p class="old-price"><del>700,000 VND</del></p>
                                        <p class="new-price">600,000 VND <span>/người lớn</span></p>
                                    </div>
                                    <div class="other">
                                        <p class="timer">Khởi hành hằng ngày</p>
                                        <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<!--                    <div class="pages">
                        <nav class="pager-container">
                            <ul class="pagination justify-content-center">
                                <li class="page-item active"><span>1</span></li>
                                <li class="page-item"><a href="#">2</a></li>
                                <li class="page-item"><a href="#" rel="next"><i class="fas fa-angle-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>-->
                </div>
            </div>
        </section>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
                        <div class="logo-footer">
                            <a href="#">
                                <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo-footer.png?alt=media&token=1ea9b4e7-de5f-478b-b6ee-a20d605a265a&_gl=1*1fyyh6r*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODA0NC4wLjAuMA.." alt="Đây là logo" width="175" height="58">
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
                            <a href="./about.html">Về chúng tôi</a>
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
    </body>
</html>