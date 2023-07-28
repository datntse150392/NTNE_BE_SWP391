<%-- 
    Document   : detailTour
    Created on : Jun 5, 2023, 1:23:32 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!--Import FONT-->
        <link rel="shortcut icon" href="./assets/imgs/five-icon.png" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css"> 
        <!--Import CSS-->
        <link href="<c:url value="/assets/css/DetailTour/styles.css"/>" rel="stylesheet" type="text/css">
        
        <!--Import JS Slider -->
        
        <title>Detail Tour</title>
    </head>

    <body>
        <div class="warpped">
            <div class="container">
                <div class="" style="padding-top: 15px; ">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="../index.jsp">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item" aria-current="page">
                                <a href="<c:url value="/tour/list.do"/>">Tour</a>  
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <a href="<c:url value="/tour/detailTour.do?tourID=${tourID}&tripID=${tripID}"/>">${trip.getName()}</a>  
                            </li>
                        </ol>
                    </nav>
                </div> 
                <div class="header"></div>
                <div class="content">
                    <h1 class="header-title" style="font-size: 30px; margin-top: 60px">${trip.getName()}</h1>
                    <span
                        >"Đặt ngay tour du lịch để khám phá những điểm đến tuyệt vời và tạo
                        ra những kỷ niệm không thể quên."</span
                    >
                    <div class="layout">
                        <!-- Layout 1 -->
                        <div class="layout-item">
                            <video
                                class="layout-video"
                                src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FGi%E1%BB%9Bi%20Thi%E1%BB%87u%2FNhaTrangNTNE.mp4?alt=media&token=1b9aa6c9-df28-4cae-9a84-1d08dbc8efdf"
                                controls
                                ></video>
                        </div>
                        <c:if test="${imageList != null}">
                            <c:forEach var="image" items="${imageList}">
                                <div class="layout-item">
                                    <img class="layout-image" src="${image.getValue().getImgUrl()}">
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>

                    <div class="time-line">
                        <h2>Lịch trình di chuyển</h2>
                    </div>
                    
                    <!--HIỂN THỊ TOURITEM || TIMELINE-->
                    <ul class="destination">
                        <c:if test="${itemList != null}">
                            <c:forEach var="item" items="${itemList}" varStatus="counter">
                                <li class="destination-item">
                                    <p class="duration">
                                        <strong>${item.getDuration()}</strong>
                                    </p>
                                    <p class="detail">${item.getScript()}</p>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>

                    <!-- Start Box Booking  -->
                    <div class="booking-tour">
                        <div class="container">
                            <h1>Đặt ngay <b class="title">${trip.getName()}</b></h1>
                            <div class="tourpackage-body">
                                <div class="tourpackage-body-detail">
                                    
                                    <!--HIỂN THỊ GIÁ CƠ BẢN CỦA TRIP-->
                                    <div>
                                        <h3 class="tourpackage-body-detail-title" style="text-transform: none; font-size: 15px">Giá áp dụng cho người lớn: <span style="color: red; font-size: 15px; font-style: normal"><fmt:formatNumber value="${trip.getPriceAdult()}" pattern="###,### VNĐ" /></span> </h3>
                                    </div>
                                    <div>
                                        <h3 class="tourpackage-body-detail-title" style="text-transform: none; font-size: 15px">Giá áp dụng cho trẻ em: <span style="color: red; font-size: 15px; font-style: normal"><fmt:formatNumber value="${trip.getPriceChild()}" pattern="###,### VNĐ" /></span> </h3>                                    
                                    </div>
                                    <form action="<c:url value="/tour/booking.do"/>">
                                        <input type="hidden" name="tourID" value="${tourID}"/>
                                        <input type="hidden" name="tripID" value="${trip.getId()}"/>
                                        <button type="submit" class="btn-booking-tour"">
                                            <i class="fa-solid fa-o"></i> ĐẶT NGAY
                                        </button>
                                    </form>
                                </div>
                            </div>
                            
<!--                            <div class="tourpackage-body">
                                <div class="tourpackage-body-detail">
                                    
                                    HIỂN THỊ GIÁ CƠ BẢN CỦA TRIP
                                    <h3 class="tourpackage-body-detail-title" style="text-transform: none; font-size: 15px">Giá áp dụng cho trẻ em: <span style="color: red; font-size: 15px; font-style: normal"><fmt:formatNumber value="${trip.getPriceChild()}" pattern="###,### VNĐ" /></span></h3>
                                    <form action="<c:url value="/tour/booking.do"/>">
                                        <input type="hidden" name="tourID" value="${tourID}"/>
                                        <input type="hidden" name="tripID" value="${trip.getId()}"/>
                                        <button type="submit" class="btn-booking-tour" style="margin-right: 2px">
                                            <i class="fa-solid fa-o"></i> CHỌN
                                        </button>
                                    </form>
                                </div>
                            </div>-->
                        </div>
                    </div>
                    <!--End Box Booking-->

                    <!-- START MAP BOX -->
                    <div class="map-tour">
                        <div class="map-header">
                            <h1 class="map-title">Thông tin địa điểm</h1>
                        </div>
                        <div class="map-content">
                            <div class="map-location">
                                <iframe src=https://maps.google.com/maps?q=${lat},${lon}&hl=es&z=14&amp;output=embed 
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                                </iframe>
                                <!--<iframe src=https://maps.google.com/maps?q=TRUOC,SAU&hl=es&z=14&amp;output=embed 
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                                </iframe>-->
                                <!--TRUYỀN PARAMETER VÀO "TRUOC" && "SAU"-->
                            </div>
                        </div>
                    </div>
                    <!-- END MAP BOX -->
                </div>
            </div>
        </div>
        <script src="<c:url value="/assets/js/DetailTour/detailTour.js"/>" type="text/javascript"></script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
