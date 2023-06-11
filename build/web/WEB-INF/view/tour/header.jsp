<%-- 
    Document   : header
    Created on : Jun 11, 2023, 4:29:31 PM
    Author     : Nguyen Huy Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<!DOCTYPE html>
<!--<html>
    <body>-->
        <!-- Start: Header -->
        <div id="header">
            <div class="container h-100">
                <div class="header-container">
                    <!-- Start: Logo And Search -->
                    <div class="header-logo">
                        <a href="#">
                            <img style="width: 150px; padding-right: 20px;" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*q7lns9*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE1ODg4Ni40NC4xLjE2ODYxNTg5MTYuMC4wLjA."/>
                        </a>
                    </div>
                    <div class="header-search">
                        <div class="header-search-inputs">
                            <span class="fad fa-search header-search-icon"></span>
                            <input type="text" placeholder="Tìm kiếm" class="header-search-input">
                        </div>
                        <div class="header-search-submit">
                            <button class="header-search-submit-btn">
                                <span class="fas fa-search  header-search-submit-icon"></span>
                            </button>
                        </div>

                        <!--<div class="header-search-suggest">-->
                        <div class="header-search-suggest">
                            <h5 class="search-suggest-heading">TÌM KIẾM GẦN ĐÂY</h5>
                            <ul class="search-suggest-list">
                                <li class="search-suggest-item">
                                    <div class="search-suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour1.jpg?alt=media&token=0d2561fd-d2fb-4b37-9ea7-77aa2fec3ea6&_gl=1*m2nlv3*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNDc2Mi4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                    </div>
                                    <div class="search-suggest-content">
                                        <p class="search-suggest-title">Vinpearl Land</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search-suggest-item">
                                    <div class="search-suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour4.jpg?alt=media&token=4458f3f5-20d5-4691-9149-f11ef5883f59&_gl=1*1d42w0z*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTA3MS4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                    </div>
                                    <div class="search-suggest-content">
                                        <p class="search-suggest-title">Đảo Bình Hưng</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search-suggest-item">
                                    <div class="search-suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour9.jpg?alt=media&token=0d732622-9c3e-437a-88fc-9da066c5d44d&_gl=1*1xxmd6f*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTI0OS4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                    </div>
                                    <div class="search-suggest-content">
                                        <p class="search-suggest-title">Hang Rái - Vĩnh Hy</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search-suggest-item">
                                    <div class="search-suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour8.jpg?alt=media&token=fcd2565a-3aa9-4e5b-9808-54de4d11332d&_gl=1*n3l9jo*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTMxNC4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                    </div>
                                    <div class="search-suggest-content">
                                        <p class="search-suggest-title">Hòn Mun</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                                <li class="search-suggest-item">
                                    <div class="search-suggest-thumbnail">
                                        <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour10.jpg?alt=media&token=b0d7db9f-a069-40ab-b07d-f702a4d3bfa9&_gl=1*1mcbyqs*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTM0Ny4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                    </div>
                                    <div class="search-suggest-content">
                                        <p class="search-suggest-title">Đảo Điệp Sơn</p>
                                        <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End: Logo And Search -->

                    <!-- Start: Nav PC -->
                    <div class="header-nav">
                        <ul class="header-nav-list">
                            <li class="header-nav-item"><a class="header-nav-link" href="#">Giới thiệu</a></li>
                            <li class="header-nav-item"><a class="header-nav-link" href="<c:url value="/tour/listTour.do"/>">Tour</a></li>
                            <li class="header-nav-item"><a class="header-nav-link" href="#">Liên hệ</a></li>
                            <li class="header-nav-item"><a class="header-nav-link" href="#">Đăng nhập</a></li>
                        </ul>
                    </div>
                    <!-- End: Nav PC -->
                </div>
            </div>
        </div>
        <!-- End: Header -->
    <!--</body>-->
<!--</html>-->
