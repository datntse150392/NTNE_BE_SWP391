<%-- 
    Document   : listTour
    Created on : Jun 5, 2023, 1:44:27 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" rel="stylesheet" type="text/css">         
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.carousel.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.theme.default.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/styles.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/header_footer.css"/>" rel="stylesheet" type="text/css">
        
        
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/homePageJS/slider/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/slider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/main.js"/>" type="text/javascript"></script>
        
        <title>Nha Trang Nature Elite</title>
    </head>
    
    <body>
        <div class="meta-description">
            <div class="container">
                <div class="meta-container">
                    <p>Những Tour du lịch Nha Trang 1 ngày [Cập Nhật 2023] bên dưới chính là câu trả lời cho những ai đang phân vân: Nếu chỉ được ở lại Nha Trang 1 ngày thì mình sẽ đi đâu để có thể ngắm được một phần cảnh đẹp nơi đây. Đội ngũ công ty lữ hành quốc tế Nha Trang Nature Elite luôn sẵn sàng hỗ trợ tư vấn cho quý khách để quý khách có thể chọn được Tour ưng ý cho gia đình mình dưới hình thức ghép đoàn hoặc đi riêng.</p>

                </div>
            </div>
        </div>
        <section>
            <div class="category-service">
                <div class="container">
                    <div class="row tour-list">
                        <c:if test="${listTour != null}">
                            <c:forEach var="tour" items="${listTour}" varStatus="counter">
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                                    <div class="tour-item">
                                        <figure class="thumb">
                                            <a href="#" class="lazy-container">
                                                <img class="lazy" src=${tour.getValue().getThumbnail()}>
                                            </a>
                                            <span class="sale">hot</span>
                                        </figure>
                                        <div class="content">
                                            <!--Router to detail Tour-->
                                            <a href="<c:url value="/tour/detailTour.do?tourID=${tour.getValue().getId()}"/>">
                                                <h2 class="tour-name">${tour.getValue().getName()}</h2>
                                            </a>
                                            <div class="place">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: ${tour.getValue().getLocation()}</span>
                                            </div>
                                            <div class="price">
                                                <p class="old-price"><del><fmt:formatNumber value="${tour.getValue().getPriceAdult() - 100000}" pattern="###,### VNĐ" /></del></p>
                                                <p class="new-price"><fmt:formatNumber value="${tour.getValue().getPriceAdult()}" pattern="###,### VNĐ" /><span>/người lớn</span></p>
                                                <p class="new-price"><fmt:formatNumber value="${tour.getValue().getPriceChild()}" pattern="###,### VNĐ" /><span>/trẻ em</span></p>
                                            </div>
                                            <div class="other">
                                                <p class="timer">Khởi hành hằng ngày</p>
                                                <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>

                    <div class="pages">
                        <nav class="pager-container">
                            <ul class="pagination justify-content-center">
                                <li class="page-item active"><span>1</span></li>
                                <li class="page-item"><a href="#">2</a></li>
                                <li class="page-item"><a href="#" rel="next"><i class="fas fa-angle-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>
        </section>
    </body>
</html>