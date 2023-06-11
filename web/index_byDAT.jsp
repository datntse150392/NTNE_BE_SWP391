<%-- 
    Document   : index
    Created on : Jun 5, 2023, 12:41:48 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="./assets/imgs/five-icon.png" type="image/x-icon" sizes="30x30">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="./assets/css/HomePageCSS/bootstrap1.css">

        <!-- Css Slider -->
        <link rel="stylesheet" href="./assets/css/HomePageCSS/slider/owl.carousel.min.css">
        <link rel="stylesheet" href="./assets/css/HomePageCSS/slider/owl.theme.default.min.css">

        <!-- Css Slider -->
        <link rel="stylesheet" href="./assets/css/HomePageCSS/homepage_new.css">
        <title>Nha Trang Nature Elite</title>
    </head>
    <body>
        <!-- Loader page -->
        <!-- <div class="loader">
            <i class="fal fa-spinner loader-icon"></i>
        </div> -->
        <!-- Start: Header -->
        <div id="header">
            <div class="container h-100">
                <div class="header__container">
                    <!-- Start: Logo And Search -->
                    <div class="header__logo">
                        <a href="#">
                            <img style="width: 150px; padding-right: 20px;" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*q7lns9*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE1ODg4Ni40NC4xLjE2ODYxNTg5MTYuMC4wLjA."/>
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
                            <li class="header__nav-item"><a href="" class="header__nav-link">Đăng nhập</a></li>
                        </ul>
                    </div>
                    <!-- End: Nav PC -->
                </div>
            </div>
        </div>
        <!-- End: Header -->

        <!-- Start Slider -->
        <div id="slider"> 
            <div class="container">
                <div class="owl-carousel owl-theme" id="banner-slider">
                    <div class="item">
                        <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fslider-1.png?alt=media&token=57178d7c-0a2f-489a-b223-b4f9cebd472a&_gl=1*16no2wc*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTM4MTUuMC4wLjA."></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fslider2.png?alt=media&token=117e06ae-5b11-4274-a32c-31681f030fb5&_gl=1*170m984*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU1NTMuMC4wLjA."></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Slider -->

        <!--Start: Body-->
        <!-- Start Main -->
        <div id="main">
            <div class="container">
                <!-- Start: Welcome -->
                <div class="content__welcome">
                    <h3 class="content__welcome-heading">Chào mừng đến với Nha Trang Nature Elite!</h3>
                    <p class="content_description">
                        Nếu bạn chỉ có 1 ngày để đi du lịch Nha Trang nhưng muốn khám phá được nhiều nơi? Đừng lo, đã có Nha Trang Nature Elite ở đây!<br>
                        <a href="" class="content__welcome-link">Đăng nhập</a> hoặc <a href="" class="content__welcome-link">Đăng ký</a> để trải nghiệm!
                    </p>
                </div>
                <!--End: Welcome  -->

                <!-- Start: Location -->
                <div class="content__container">
                    <div class="content__location">
                        <p class="content-title">Địa điểm nổi bật</p>
                        <p class="content-description">Cùng Nha Trang Nature Elite bắt đầu chuyến hành trình khám phá Nha Trang của bạn</p>
                        <!-- Start: Content Slider -->
                        <div class="content__slider">
                            <div class="owl-carousel" id="content-slider">
                                <div class="item content__slider-item">
                                    <a href="<c:url value="view/detailTour.jsp"/>"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg7.jpg?alt=media&token=997d98c7-050d-44d5-b005-f61f65f1160b&_gl=1*25jfjz*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNzE1OS4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Vinpearl Land</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item content__slider-item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fhonmun.jpg?alt=media&token=777ddc6b-971e-4871-86a1-68f00477fc80&_gl=1*1q8mu5l*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNzcyNy4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Hòn Mun</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item content__slider-item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg_3.jpg?alt=media&token=f313d1e0-f204-4529-b75f-f6390ab51fd5&_gl=1*1mvaj3o*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNzQyOC4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Đảo Điệp Sơn</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item content__slider-item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fhangrai.jpg?alt=media&token=6acee86f-c671-4a85-8b1b-6c8b92824dc3&_gl=1*1tjuxfe*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNzk3NS4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Hang Rái Vĩnh Hy</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p></p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item content__slider-item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Fdao-binh-ba-top.jpg?alt=media&token=327b6f29-2058-4d5f-b77a-dae53ed1eda1&_gl=1*ywfo3q*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwODYyOS4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Vịnh Đảo Bình Ba</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item content__slider-item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour4.jpg?alt=media&token=6af3feae-67ae-43bf-a1fa-39530c95644f&_gl=1*kuwd9o*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwODgwOS4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__slider-name">
                                            <h3 class="content__slider-heading">Đảo Bình Hưng</h3>
                                            <p class="content__slider-description">Đã có <strong>X</strong> lượt khách</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- End: Content Slider -->
                    </div>
                </div>
                <!-- End: Location -->

                <!-- Start: Promotion -->
                <!-- <div class="content__container">
                    <div class="content__promotion">
                        <p class="content-title">Ưu đãi độc quyền</p>
                        <p class="content-description">Chỉ có tại Luxstay, hấp dẫn và hữu hạn, book ngay!</p>
                        <div class="content__slider">
                            <div class="owl-carousel" id="promotion-slider">
                                <div class="item">
                                    <a href=""><img src="./assets/imgs/promotion1.jpg" alt="" class="content__promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="./assets/imgs/promotion2.jpg" alt="" class="content__promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="./assets/imgs/promotion3.jpg" alt="" class="content__promotion-img"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                <!-- End: Promotion -->

                <!-- Start: Suggest -->
                <div class="content__container">
                    <div class="content__suggest">
                        <p class="content-title">Top các Tour nổi bật</p>
                        <p class="content-description">Những Tour one-day nổi tiếng mà Nha Trang Nature Elite gợi ý dành cho bạn</p>
                        <div class="content__slider">
                            <div class="owl-carousel" id="suggest-slider">
                                <div class="item">
                                    <a href="" class="content__suggest-item-link"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour2.jpg?alt=media&token=a43242ce-3144-4d90-a132-4e814aed891a&_gl=1*8wanyr*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwOTAwNi4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__suggest-item">
                                            <p class="content__suggest-heading">Tour 4 Đảo Nha Trang</p>
                                            <p class="content__suggest-description">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: Vịnh San Hô, Làng Chài, đảo Hòn Miễu, đảo Hòn Sỏi</span>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="" class="content__suggest-item-link"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour6.jpg?alt=media&token=315c71e2-b31d-4de6-a9f1-635ff0d032e8&_gl=1*df9lyv*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwOTg1MC4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__suggest-item">
                                            <p class="content__suggest-heading">Tour 3 Đảo Nha Trang</p>
                                            <p class="content__suggest-description">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: Cảng Vĩnh Trường, Bãi Tranh, Hòn Tằm, Làng Chài</span>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="" class="content__suggest-item-link"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg__3.jpg?alt=media&token=51fba26c-b425-4000-91a0-f2cfbcacf398&_gl=1*1qp5h8r*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjExMDY0My4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__suggest-item">
                                            <p class="content__suggest-heading">Tour Du Thuyền 5 Sao Sea Coral</p>
                                            <p class="content__suggest-description">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: Vịnh Nha Trang, Horizon Bar, Sundeck, Islands Club</span>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="" class="content__suggest-item-link"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour7.jpg?alt=media&token=9b1fef4a-fa94-41b5-bf77-73de31440cd6&_gl=1*1rlte14*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwOTA0OC4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__suggest-item">
                                            <p class="content__suggest-heading">Tour Đi Bộ Dưới Đáy Biển</p>
                                            <p class="content__suggest-description">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: Hòn Tằm, Vịnh San Hô, Bãi Tranh, Làng Chài</span>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="" class="content__suggest-item-link"><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg1.jpg?alt=media&token=91cd87ed-b271-4855-a792-c3c2edb4b351&_gl=1*rqy114*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NTgwNzc3NC40LjEuMTY4NTgwODQyNi4wLjAuMA.." alt="" class="content__slider-img">
                                        <div class="content__suggest-item">
                                            <p class="content__suggest-heading">Vinpearl Land</p>
                                            <p class="content__suggest-description">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: VinWonders, Diving Club, Imperial Club, Wave Bar</span>
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: Suggest -->

                <!-- Start Explore -->
                <!-- <div class="content__container">
                    <div class="content__explore">
                        <p class="content-title">Gợi ý khám phá</p>
                        <p class="content-description">Để mỗi chuyến đi là một hành trình truyền cảm hứng, mỗi căn phòng là một khoảng trời an yên</p> -->
                <!-- Start: Explore Slider -->
                <!-- <div class="explore__slider">
                    <div class="owl-carousel" id="explore-slider">
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore.jpg" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">5 resort hạng sang ở Việt Nam xuất hiện trên tạp chí du lịch Anh</p>
                        </div>
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore2.jpg" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">Du lịch Cần Thơ nhất định phải ghé thăm những địa điểm này</p>
                        </div>
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore3.jpg" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">Tuần lễ “Tôi yêu bánh mì Sài Gòn” chính thức diễn ra từ ngày 24/3</p>
                        </div>
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore4.jpg" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">Trải nghiệm thú vị ở sở thú Zoodoo Đà Lạt</p>
                        </div>
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore5.jpg" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">Hội An sẽ lập chốt quản lý du khách đeo khẩu trang khi vào thành phố</p>
                        </div>
                        <div class="item explore__slider-item">
                            <a href=""><img src="./assets/imgs/explore/explore6.png" alt="" class="content__slider-img"></a>
                            <div class="explore__slider-name">Thông tin HomeStay</div>
                            <p class="explore__slider-description">Thủ đô Hà Nội nằm trong danh sách những thành phố đẹp nhất thế giới</p>
                        </div>
                    </div>
                    
                </div> -->
                <!-- End: Explore Slider -->
                <!-- </div>
            </div> -->
                <!-- End Explore -->
                <div class="content__container">
                    <div class="content__targets">
                        <p class="content-title">Vì sao chọn Nha Trang Nature Elite</p>
                        <!-- Start Target -->
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="fas fa-trophy"></i>
                                    <div class="content">
                                        <h3 class="target-name">Đầy Đủ Giấy Phép</h3>
                                        <p>Giấy phép lữ hàng quốc tế số XX-XXX/2023/TCDL-GP LHQT do Tổng cục Du Lịch cấp</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="fas fa-money-check-alt"></i>
                                    <div class="content">
                                        <h3 class="target-name">Thanh Toán Linh Hoạt</h3>
                                        <p>Chấp nhận thanh toán bằng cả hình thức trực tiếp lẫn chuyển khoản</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <div class="content">
                                        <h3 class="target-name">Giá Rẻ</h3>
                                        <p>Cam kết mức giá tiết kiệm nhất, hợp lý nhất thị trường</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="far fa-smile-beam"></i>
                                    <div class="content">
                                        <h3 class="target-name">Sản Phẩm - Dịch Vụ</h3>
                                        <p>Đảm bảo cung cấp dịch vụ chất lượng nhất tương ứng với mức giá tốt nhất trong cùng khu vực</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="far fa-thumbs-up"></i>
                                    <div class="content">
                                        <h3 class="target-name">Đặt Tour / Dịch Vụ</h3>
                                        <p>Dễ dàng, nhanh chóng trong vòng 30s</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="far fa-question-circle"></i>
                                    <div class="content">
                                        <h3 class="target-name">Hỗ Trợ / Tư Vấn</h3>
                                        <p>Đội ngũ hỗ trợ / tư vấn 24/7 bằng nhiều kênh: Zalo, Facebook, live chat, email, điện thoại ++</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Start Tutorial -->
                <div class="content__container">
                    <div class="content__tutorial">
                        <p class="content-title">Hướng dẫn sử dụng</p>
                        <p class="content-description">Đặt chỗ nhanh, thanh toán đơn giản, sử dụng dễ dàng</p>
                        <div class="content__slider">
                            <div class="owl-carousel" id="tutorial-slider">
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial1.jpg?alt=media&token=a421ff4d-757b-481b-8207-4357d4c78bb5&_gl=1*11rvba5*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU1ODkuMC4wLjA." alt="" class="content__promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial2.jpg?alt=media&token=d07c1b22-ef2d-42b1-b950-380701424f36&_gl=1*3o2cf1*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU2MjkuMC4wLjA." alt="" class="content__promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial3.jpg?alt=media&token=cd9c9cbb-56bd-4fde-a7d3-3da24a2efd04&_gl=1*afp54u*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU2NDYuMC4wLjA." alt="" class="content__promotion-img"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Tutorial -->
            </div>
        </div>
        <!-- End Main -->

        <!--Start: Download App  -->
        <div class="download__app">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="download__app-introduce">
                            <div class="download__app-logo">
                                <img style="width: 400px; padding-right: 20px;" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*q7lns9*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE1ODg4Ni40NC4xLjE2ODYxNTg5MTYuMC4wLjA."/>
                            </div>
                            <div class="download__app-content">
                                <h2 class="download__app-content-heading">TÌM KIẾM CÁC GÓI TOUR ONE-DAY GIÁ TỐT NHẤT</h2>
                                <p class="download__app-content-description">Nha Trang Nature Elite hiện là nền tảng cung cấp các tour one-day #1 Việt Nam. Đồng hành cùng chúng tôi, bạn có những chuyến đi mang đầy trải nghiệm. Với Nha Trang Nature Elite, việc lên kế hoạch, tìm kiếm những địa điểm, những hoạt động trải nghiệm,... trở nên nhanh chóng, thuận tiện và dễ dàng.</p>
                                <p class="download__app-content-description">Với hơn 10 năm kinh nghiệm tổ chức và điều hành tour tại Nha Trang, cùng với loại hình du lịch "có 1 0 2"
                                    và tiếp đón hơn 10.000 khách du lịch trong và ngoài nước mỗi năm, độ chuyên nghiệp và uy tín của chúng tôi là không phải bàn. Ở Nha Trang Nature Elite, khách hàng là thượng đế.</p>
                            </div> 
                            <div class="text-center">
                                <a class="btn btn-default" href="./about.html">Tìm hiểu thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="download__app-picture">
                            <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fhome-02.png?alt=media&token=f7e55da9-6866-4103-a1a3-83b0c7f3e292&_gl=1*bdb4tg*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU3NTUuMC4wLjA." alt="" class="download__app-image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End: Download App  -->
        <div id=stats class=s-stats>
            <div class="row stats block-1-4 block-m-1-2 block-mob-full" data-aos=fade-up>
                <div class="col-block stats__col">
                    <div class=stats__count>16</div>
                    <h5>Đối tác</h5>
                </div>
                <div class="col-block stats__col">
                    <div class=stats__count>90</div>
                    <h5>Khách hàng</h5>
                </div>
                <div class="col-block stats__col">
                    <div class=stats__count>28</div>
                    <h5>Truy cập</h5>
                </div>
                <div class="col-block stats__col">
                    <div class=stats__count>1440</div>
                    <h5>Đặt tour</h5>
                </div>
            </div>
        </div>
        <!--End: Body-->

        <!-- Start: Footer -->
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
                                <a href="" class="contact__content-link"> http://m.me/nhatrangnatureelite</a>
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
                        <p class="author-copyright">copyright&copy; by DKTBL</a></p>
                    </div>
                </div>
            </div>

            <div class="move-on-top">
                <div class="move-on-top__container">
                    <a href="#"><i class="fas fa-arrow-up move-on-top-btn"></i></a>
                </div>
            </div>
        </div>
        <!-- End: Footer -->
        <!--JS Slider -->
        <script src="./assets/js/homePageJS/sliders/jquery.min.js"></script>
        <script src="./assets/js/homePageJS/sliders/owl.carousel.js"></script>
        <script src="./assets/js/homePageJS/sliders/slider.js"></script>
        <!-- JS -->
        <script src="./assets/js/homePageJS/main.js"></script>
    </body>
</html>