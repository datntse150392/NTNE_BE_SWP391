<%-- 
    Document   : list.jsp
    Created on : Jun 13, 2023, 6:28:49 PM
    Author     : baoit
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"></fmt:setLocale>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" >

        <link href="<c:url value="/assets/css/BookedList/tourlist.css" />" rel="stylesheet" type="text/css"/>  
        <link href="<c:url value="/assets/js/BookedList/TestJS.js" />" rel="stylesheet" type="text/javascript"/>
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <title>Thông tin cá nhân</title>
    </head>
    <body> 
        <div class="container-profile">
            <div class="profile">
                <div class="row">
                    <div class="column-left">
                        <div class="wrapper-left">
                            <div class="info">
                                <div class="info-image">
                                    <a href="#">
                                        <img src="#" />
                                    </a>
                                </div>
                                <div class="info_details">
                                    <h5 class="user_name">Dinh Gia Bao (K16_HCM)</h5>
                                    <small>baodgse161753@fpt.edu.vn</small>
                                </div>
                            </div>
                            <hr>
                            <nav class="profile-link">
                                <ul>
                                    <li class="profile-link-collapse">
                                        <a href="#" class="profile-acct">
                                            <h6>Tài khoản</h6>
                                        </a>
                                        <div class="collapse-show">
                                            <ul class="profile-acct-opt">
                                                <li><a href="#">Thông tin cá nhân</a></li>
                                                <li><a href="#">Đổi mật khẩu</a></li>
                                                <li><a href="#">Đăng xuất</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="profile-link-collapse2"><a href="#">Đơn đặt chỗ</a></li>
                                    <li class="profile-link-collapse3"><a href="#">Đánh giá của Quý khách</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <div class="column-right">
                        <div class="wrapper-right">
                            <div class="heading-right">
                                <ul class="provide-info">
                                    <li class="provide-info-showdown"><a href="#">Tất cả</a></li>
                                    <li class="provide-info-showdown"><a href="#">Chờ xác nhận</a></li>
                                    <li class="provide-info-showdown"><a href="#">Đã đặt</a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <form action="#" class="search-form">
                            <input type="text" class="search-bar"
                                   placeholder="Tìm kiếm theo tên tour/ tourCode hoặc số booking">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            <div class="dropdown">
                                <span>SORT</span>
                                <div class="dropdown-content">
                                    <a href="<c:url value="/home/booked_list.do?sort_option=day"/>">Sắp xếp theo ngày</a>
                                    <a href="<c:url value="/home/booked_list.do?sort_option=month"/>">Sắp xếp theo tháng</a>
                                </div>
                            </div>
                        </form>
                                
                        <c:forEach var="product" items="${list}" varStatus="counter">
                            <div class="tab-content">
                                <div class="tab-pane">                          
                                    <div class="item-Order">                                
                                        <p class="text-muted date-time">${product.getDeparttime()}</p>
                                        <div class="tab-content-card">
                                            <div class="tab-row">
                                                <div class="tab-left-col">
                                                    <div class="tab-content-card-image">
                                                        <a href="#"><img src="${product.getThumbnail()}" alt=""></a>
                                                    </div>
                                                </div>

                                                <div class="tab-right-col">
                                                    <h5 class="tab-content-card-image">
                                                        <a href="#" class="tour-name">
                                                            ${product.name}
                                                        </a>
                                                    </h5>
                                                    <div class="tab-right-col-wrapper">
                                                        <div class="tab-right-dropdown">
                                                            <div class="tab-right-dropdown-elements">
                                                                <div class="tab-right-elements">
                                                                    <div class="s-rate">
                                                                        <span>9</span>
                                                                        <div class="s-comment">
                                                                            <h6>Tuyệt vời</h6>
                                                                            <p>358 quan tâm</p>
                                                                        </div>
                                                                    </div>
                                                                    <p class="content-id">
                                                                        <span class="text-muted">Số booking: ${product.getTour_id()}</span>
                                                                        <br>
                                                                        <span class="text-muted">Tour code:
                                                                            ${product.getTrip_id()}</span>
                                                                    </p>
                                                                    <p class="card-text">
                                                                        <small class="text-muted">${product.getQuantityChild() + product.getQuantityAdult()} người</small>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="card-text-end">
                                                    <h6 class="text-primary">
                                                        <c:choose>
                                                            <c:when test = "${product.isStatus() == true}">
                                                                Còn thời hạn thanh toán
                                                            </c:when>

                                                            <c:when test = "${product.isStatus() == false}">
                                                                Quá thời hạn thanh toán
                                                            </c:when>
                                                        </c:choose>                                                           
                                                    </h6>
                                                    <h5 class="total-price"><fmt:formatNumber value="${product.getTotalPrice()}" type="currency"/></h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach> 
                    </div>

                    <div class="pagination">
                        <c:forEach begin="1" end="${count}" var="i"> 
                            <a href="<c:url value="/home/booked_list.do?index=${i}"/>" onclick="handleClick(event)" class="link">${i}</a>
                        </c:forEach>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>