<%-- 
    Document   : userprofile
    Created on : Jun 14, 2023, 9:14:56 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.User_Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/assets/css/UserProfile/styleindex.css"/>" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">        
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
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
                                        <img src="${sessionScope.person.getLinkImg()}" />
                                    </a>
                                </div>
                                <div class="info_details">
                                    <h5 class="user_name">${sessionScope.person.name}</h5>
                                    <small>${sessionScope.person.email}</small>
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
                                                <li><a href="<c:url value="/account/changepassword.do"/>">Đổi mật khẩu</a></li>
                                                <li><a href="#">Đăng xuất</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="profile-link-collapse2"><a href="<c:url value="/tour/bookedList.do?index=1"/>">Đơn đặt chỗ</a></li>
                                    <li class="profile-link-collapse3"><a href="#">Đánh giá của Quý khách</a></li>

                                </ul>
                            </nav>
                        </div>
                    </div>

                    <div class="column-right">
                        <div class="wrapper-right">
                            <div class="heading-right">
                                <h5>Thông tin cá nhân</h5>
                                <p>Cập nhật thông tin của Quý khách và tìm hiểu các thông tin này được sử dụng ra sao. </p>
                            </div>
                            <div class="provide-details">
                                <div class="section-details">
                                    <div class="section-item" >
                                        <div class="section-item-field">Họ và Tên</div>
                                        <div class="section-item-userinfo">${sessionScope.person.name}</div>
                                    </div>
                                    <div class="section-item">
                                        <div class="section-item-field">Điểm thưởng</div>
                                        <div class="section-item-userinfo">${sessionScope.person.accumulatedScore}</div>
                                    </div>
                                    <div class="section-item">
                                        <div class="section-item-field">Tổng số tour đã đi</div>
                                        <div class="section-item-userinfo">${sessionScope.person.totalTour}</div>
                                    </div>
                                    <div class="section-item">
                                        <div class="section-item-field">Địa chỉ email</div>
                                        <div class="section-item-userinfo">${sessionScope.person.email}</div>
                                    </div>
                                    <div class="section-item">
                                        <div class="section-item-field">Số điện thoại</div>
                                        <div class="section-item-userinfo">${sessionScope.person.phone}</div>
                                    </div>
                                    <div class="section-item">
                                        <div class="section-item-field">Địa chỉ</div>
                                        <div class="section-item-userinfo">${sessionScope.person.address}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>