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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <section>
            <div class="container-lg" style="padding-top: 7rem;">
                <div class="row gap-4">
                    <div class="col-12 col-md-4 border rounded p-2">
                        <div class="container-fluid">
                            <div class="row pb-4 align-items-center border-bottom">
                                <div class="col-3">
                                    <a href="#">
                                        <img class="img-fluid rounded-circle" src="${sessionScope.person.getLinkImg()}" />
                                    </a>
                                </div>
                                <div class="col-9 align-items-center">
                                    <p class="fs-3 fw-semibold mb-0">${sessionScope.person.name}</p>
                                    <p class="fs-6 fw-light mb-0">${sessionScope.person.email}</p>
                                </div>
                            </div>
                            <nav class="row pt-4 align-items-center">
                                    <div class="row">
                                        <div class="row px-4 fw-semibold">Tài khoản</div>
                                        <div class="row px-4">
                                            <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">Thông tin cá nhân</a>
                                            <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="<c:url value="/account/changepassword.do"/>">Đổi mật khẩu</a>
                                            <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">Đăng xuất</a>
                                        </div>
                                    </div>
                                    <div class="row py-2">
                                        <a class="text-dark fw-semibold text-decoration-none" href="<c:url value="/tour/bookedList.do?index=1"/>">Đơn đặt chỗ</a>
                                    </div>
                                    <div class="row py-2">
                                        <a class="text-dark fw-semibold text-decoration-none" href="#">Đánh giá của Quý khách</a>
                                    </div>
                            </nav>
                        </div>
                    </div>

                    <div class="col-12 col-md-7 border rounded p-2">
                        <div class="container-fluid">
                            <div class="row">
                                <p class="display-6 fs-2 fw-semibold">Thông tin cá nhân</p>
                                <p class="lead">
                                    Cập nhật thông tin của Quý khách và tìm hiểu các thông tin này được sử dụng ra sao.
                                </p>
                            </div>
                            <div class="row">
                                <div class="container-flui justify-">
                                    <div class="row py-2 border-bottom border-top" >
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-user"></i>
                                            <span class="ps-2">Họ và Tên</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.name}</div>
                                    </div>
                                    <div class="row py-2 border-bottom">
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-star"></i>
                                            <span class="ps-2">Điểm thưởng</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.accumulatedScore}</div>
                                    </div>
                                    <div class="row py-2 border-bottom">
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-suitcase-rolling"></i>
                                            <span class="ps-2">Tổng số tour đã đi</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.totalTour}</div>
                                    </div>
                                    <div class="row py-2 border-bottom">
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-envelope"></i>
                                            <span class="ps-2">Địa chỉ email</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.email}</div>
                                    </div>
                                    <div class="row py-2 border-bottom">
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-phone"></i>
                                            <span class="ps-2">Số điện thoại</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.phone}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col p-3 fw-semibold">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <span class="ps-2">Địa chỉ</span>
                                        </div>
                                        <div class="col p-3">${sessionScope.person.address}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>