<%-- 
    Document   : contact
    Created on : Jun 5, 2023, 7:27:08 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>History Booking Tour - Nha Trang Nature Elite</title>
        <link rel="stylesheet" href="../assets/css/Contact/styles.css" />
        <link rel="stylesheet" href="../assets/css/Contact/header_footer.css" />
        <link rel="stylesheet" href="../assets/css/bootstrap.css" />

        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
        <link
            as="style"
            onload='this.onload = null;this.rel = "stylesheet"'
            href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&amp;display=swap"
            rel="stylesheet"
            type="text/css"
            />
        <noscript>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&display=swap"
            />
        </noscript>
        <!-- Link FontAwesome CDN -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            />
        <meta property="og:locale" content="vi_VN" />
    </head>
    <body>
        <!-- Headline Image -->
        <div class="category-header"><h1 class="category-title">Liên hệ</h1></div>
        <section class="main">

            <div class="container">
                <nav aria-label="breadcrumb-wrapper">
                    <ol class="breadcrumb" style="background-color: #fff">
                        <li class="breadcrumb-item">
                            <a href="../index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
                    </ol>
                </nav>
            </div>

            <div class="contacts">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <p class="text-center">Bạn có bất cứ thắc mắc nào về chất lượng tour hoặc dịch vụ</p>
                            <p class="text-center">
                                <a
                                    href="tel:0918.xxx.xxx"
                                    class="btn btn-radius btn-pink btn-booking">
                                    Gọi 0918.xxx.xxx
                                </a>
                                <a
                                    href="tel:0918.xxx.xxx"
                                    class="btn btn-radius btn-pink btn-booking">
                                    Gọi 0918.xxx.xxx
                                </a>
                            </p>

                            <p class="text-center">
                                Hoặc bạn hãy liên hệ ngay để bộ phận chăm sóc khách hàng tư vấn
                                ngay cho bạn.
                            </p>

                            <form method="post" action="/lien-he" novalidate="novalidate">
                                <div
                                    class="text-danger validation-summary-valid"
                                    data-valmsg-summary="true">
                                    <ul>
                                        <li style="display: none"></li>
                                    </ul>
                                </div>
                                <div class="form-group">
                                    <label for="Name">Tên đầy đủ<span class="pink-color">*</span></label>
                                    <input
                                        class="form-control"
                                        type="text"
                                        data-val="true"
                                        data-val-length="Tối đa 50 ký tự."
                                        data-val-length-max="50"
                                        data-val-required="Vui lòng nhập tên của bạn."
                                        id="Name"
                                        maxlength="50"
                                        name="Name"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Name"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Email">Tên Email</label>
                                    <input
                                        class="form-control"
                                        type="email"
                                        data-val="true"
                                        data-val-email="Vui lòng nhập đúng định dạng Email."
                                        id="Email"
                                        name="Email"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Email"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="PhoneNumber">Số điện thoại<span class="pink-color">*</span></label>
                                    <input
                                        class="form-control"
                                        type="text"
                                        data-val="true"
                                        data-val-length="Tối đa 12 ký tự"
                                        data-val-length-max="12"
                                        data-val-required="Vui lòng nhập số điện thoại."
                                        id="PhoneNumber"
                                        maxlength="12"
                                        name="PhoneNumber"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="PhoneNumber"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Content">Nội dung<span class="pink-color">*</span></label>
                                    <textarea
                                        class="form-control"
                                        rows="6"
                                        data-val="true"
                                        data-val-length="Tối đa 500 ký tự"
                                        data-val-length-max="500"
                                        data-val-regex="Không được sử dụng các thẻ HTML"
                                        data-val-regex-pattern="[^<>&amp;]*"
                                        data-val-required="Vui lòng nhập nội dung."
                                        id="Content"
                                        maxlength="500"
                                        name="Content">
                                        Đăng ký báo giá tour: Tour Đi Bộ Dưới Đáy Biển
                                    </textarea>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Content"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>
                                <div class="form-group"></div>
                                <button type="submit" class="btn btn-pink btn-submit">
                                    Gửi đi</button>
                                <input
                                    name="__RequestVerificationToken"
                                    type="hidden"
                                    value="CfDJ8I43ARlGmuROunLuYPjCfFZHDaFs3HKg26IzbzMWjQcHS70ttEoUV6S5ARf8151AmK76Eynqgj2Mp4BgB7E6OAsX0iFmJIQ6BTxu3BD0AGAiJDEJXX7NqHb1631Kf8b8nT1dAbuTv1DVTCbX5KhLKyI"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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
        </section>
    </body>
</html>