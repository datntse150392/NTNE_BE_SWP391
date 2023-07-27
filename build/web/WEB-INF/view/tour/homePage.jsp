<%-- 
    Document   : homePage
    Created on : Jun 11, 2023, 11:20:00 AM
    Author     : Nguyen Huy Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.carousel.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.theme.default.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css"> 
        
        <title>Nha Trang Nature Elite</title>
    </head>
    
    <body>
        <!-- Start Slider -->
        <div id="slider"> 
            <div class="container">
                <div class="owl-carousel owl-theme" id="banner-slider">
                    <div class="item">
                        <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FLogo%20-%20Banner%20-%20Cover%20Image%2FNha%20Trang%20Nature%20Elite.png?alt=media&token=0d1b4cd8-51a4-4ab4-bcf0-fbc3c9e058cc"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fslider2.png?alt=media&token=117e06ae-5b11-4274-a32c-31681f030fb5&_gl=1*170m984*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU1NTMuMC4wLjA."></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Slider -->

        <!-- Start Main -->
        <div id="main">
            <div class="container">
                <!-- Start: Welcome -->
                <div class="content-welcome">
                    <h3 class="content-welcome-heading">Chào mừng đến với Nha Trang Nature Elite!</h3>
                    <p class="content_description">
                        Nếu bạn chỉ có 1 ngày để đi du lịch Nha Trang nhưng muốn khám phá được nhiều nơi? Đừng lo, đã có Nha Trang Nature Elite ở đây!<br>
                        <a href="<c:url value="/account/login1.do"/>" class="content-welcome-link">Đăng nhập</a> hoặc <a href="<c:url value="/account/register.do"/>" class="content-welcome-link">Đăng ký</a> để trải nghiệm!
                    </p>
                </div>
                <!--End: Welcome  -->

                <!-- Start: Location -->
                <div class="content-container">
                    <div class="content-location">
                        
<!--                    -----------------------------------------------------------
                                           HIỂN THỊ ĐỊA ĐIỂM NỔI BẬT
                        ------------------------------------------------------------->
                        <p class="content-title">Tour mới nhất</p>
                        <p class="content-description">Cùng Nha Trang Nature Elite bắt đầu chuyến hành trình khám phá Nha Trang của bạn</p>
                        <!-- Start: Content Slider -->
                        <div class="content-slider">
                            <div class="owl-carousel" id="content-slider">
                                
                                <!---------------------------------->
                                <!--LẤY THÔNG TIN ĐỊA ĐIỂM NỔI BẬT-->
                                <!---------------------------------->
                                
                                <c:if test="${listTourRecent != null}">
                                    <c:forEach var="tour" items="${listTourRecent}" varStatus="counter">
                                        <div class="item content-slider-item">
                                            <a href="<c:url value="/tour/detailTour.do?tourID=${tour.getValue().getId()}&tripID=0"/>"><img src="${tour.getValue().getThumbnail()}" alt="" class="content-slider-img">
                                                <div class="content-slider-name">
                                                    <h3 class="content-slider-heading">${tour.getValue().getName()}</h3>   
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <!-- End: Content Slider -->
                    </div>
                </div>
                <!-- End: Location -->

                        <!---------------------------------->
                        <!--LẤY THÔNG TIN TOUR NỔI BẬT-->
                        <!---------------------------------->
                <!-- Start: Suggest -->
                <div class="content-container">
                    <div class="content-suggest">
                        <p class="content-title">Top các Tour nổi bật</p>
                        <p class="content-description">Những Tour one-day nổi tiếng mà Nha Trang Nature Elite gợi ý dành cho bạn</p>
                        <div class="content-slider">
                            <div class="owl-carousel" id="suggest-slider">
                                
                                <c:if test="${listTour != null}">
                                    <c:forEach var="tour" items="${listTour}" varStatus="counter">
                                        <div class="item">
                                            <!--Router to detail Tour-->
                                            <a href="<c:url value="/tour/detailTour.do?tourID=${tour.getValue().getId()}&tripID=0"/>" class="content-suggest-item-link">
                                                <div class="contentImage">
                                                    <img src="${tour.getValue().getThumbnail()}" alt="" class="content-slider-img-new">
                                                </div>
                                                <div class="content-suggest-item">
                                                    <p class="content-suggest-heading">${tour.getValue().getName()}</p>
                                                    <p class="content-suggest-description">
                                                        <i class="fas fa-map-marker-alt"></i>
                                                        <span class="text">Điểm đến: ${tour.getValue().getLocation()}</span>
                                                    </p>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: Suggest -->
                
                <div class="content-container">
                    <div class="content-targets">
                        <p class="content-title">Vì sao chọn Nha Trang Nature Elite</p>
                        <!-- Start Target -->
                        <div class="row">
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
                                    <i class="far fa-question-circle"></i>
                                    <div class="content">
                                        <h3 class="target-name">Hỗ Trợ / Tư Vấn</h3>
                                        <p>Đội ngũ hỗ trợ / tư vấn 24/7 bằng nhiều kênh: Zalo, Facebook, live chat, email, điện thoại ++</p>
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
                                    <i class="far fa-thumbs-up"></i>
                                    <div class="content">
                                        <h3 class="target-name">Đặt Tour / Dịch Vụ</h3>
                                        <p>Dễ dàng, nhanh chóng trong vòng 30s</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                                <div class="target">
                                    <i class="fas fa-trophy"></i>
                                    <div class="content">
                                        <h3 class="target-name">Đầy Đủ Giấy Phép</h3>
                                        <p>Giấy phép lữ hàng quốc tế số XX-XXX/2023/TCDL-GP LHQT do Tổng cục Du Lịch cấp</p>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- Start Tutorial -->
                <div class="content-container">
                    <div class="content-tutorial">
                        <p class="content-title">Hướng dẫn sử dụng</p>
                        <p class="content-description">Đặt chỗ nhanh, thanh toán đơn giản, sử dụng dễ dàng</p>
                        <div class="content-slider">
                            <div class="owl-carousel" id="tutorial-slider">
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial1.jpg?alt=media&token=a421ff4d-757b-481b-8207-4357d4c78bb5&_gl=1*11rvba5*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU1ODkuMC4wLjA." alt="" class="content-promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial2.jpg?alt=media&token=d07c1b22-ef2d-42b1-b950-380701424f36&_gl=1*3o2cf1*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU2MjkuMC4wLjA." alt="" class="content-promotion-img"></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Ftutorial3.jpg?alt=media&token=cd9c9cbb-56bd-4fde-a7d3-3da24a2efd04&_gl=1*afp54u*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU2NDYuMC4wLjA." alt="" class="content-promotion-img"></a>
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
        <div class="download-app">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="download-app-introduce">
                            <div class="download-app-logo">
                                <img style="width: 400px; padding-right: 20px;" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*q7lns9*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE1ODg4Ni40NC4xLjE2ODYxNTg5MTYuMC4wLjA."/>
                            </div>
                            <div class="download-app-content">
                                <h2 class="download-app-content-heading">TÌM KIẾM CÁC GÓI TOUR ONE-DAY GIÁ TỐT NHẤT</h2>
                                <p class="download-app-content-description">Nha Trang Nature Elite hiện là nền tảng cung cấp các tour one-day #1 Việt Nam. Đồng hành cùng chúng tôi, bạn có những chuyến đi mang đầy trải nghiệm. Với Nha Trang Nature Elite, việc lên kế hoạch, tìm kiếm những địa điểm, những hoạt động trải nghiệm,... trở nên nhanh chóng, thuận tiện và dễ dàng.</p>
                                <p class="download-app-content-description">Với hơn 10 năm kinh nghiệm tổ chức và điều hành tour tại Nha Trang, cùng với loại hình du lịch "có 1 0 2"
                                    và tiếp đón hơn 10.000 khách du lịch trong và ngoài nước mỗi năm, độ chuyên nghiệp và uy tín của chúng tôi là không phải bàn. Ở Nha Trang Nature Elite, khách hàng là thượng đế.</p>
                            </div> 
                            <div class="text-center">
                                <a class="btn btn-default" href="<c:url value="/tour/about.do"/>">Tìm hiểu thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="download-app-picture">
                            <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fhome-02.png?alt=media&token=f7e55da9-6866-4103-a1a3-83b0c7f3e292&_gl=1*bdb4tg*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjE1MzcyNS4xMS4xLjE2ODYxNTU3NTUuMC4wLjA." alt="" class="download-app-image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End: Download App  -->
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/homePageJS/slider/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/slider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/main.js"/>" type="text/javascript"></script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
