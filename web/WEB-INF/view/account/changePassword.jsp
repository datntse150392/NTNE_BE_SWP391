<%-- 
    Document   : changepassword
    Created on : Jun 15, 2023, 8:11:15 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

        <link href="<c:url value="/assets/css/UserProfile/stylechange-pass.css"/>" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
        <section>
            <div div class="container-lg" style="padding-top: 9rem;">
                <div class="row gap-4 justify-content-center mx-0" style="margin-top: 20px">
                    <div class="col-12 col-md-4 pt-2 ps-4 left-box" style=" max-height: 374px; border-radius: 20px; border: 1px solid #33333338;">
                        <div class="container-fluid">
                            <div class="row pb-4 align-items-center border-bottom">
                                <div class="col-3 m-0 p-0">
                                    <a href="#">
                                        <img class="img-fluid rounded-circle" src="${sessionScope.person.getLinkImg()}"/>
                                    </a>
                                </div>
                                <div class="col-9 align-items-center">
                                    <p class="fs-3 fw-semibold mb-0">${sessionScope.person.name}</p>
                                    <p class="fs-4 fw-light mb-0">${sessionScope.person.email}</p>
                                </div>
                            </div>
                            <nav class="row pt-4 align-items-center">
                                <div class="row">
                                    <div class="row ms-0 fw-semibold" style="font-size: 16px; color: #2d4271; font-weight: 700 !important;">Tài khoản</div>
                                    <div class="row px-5" style="margin: 0px -15px;">
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/userprofile.do"/>" style="font-size: 14px; color: #000000;">Thông tin cá nhân</a>
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/changePassword.do"/>" style="font-size: 14px; color: #000000;">Đổi mật khẩu</a>
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/logOut.do"/>" style="font-size: 14px; color: #000000;">Đăng xuất</a>
                                    </div>
                                </div>
                                <div class="row py-2" style="font-size: 16px; font-weight: 700 !important;">
                                    <a style="color: #2d4271;" class="fw-semibold text-decoration-none" href="<c:url value="/tour/bookedList.do?index=1&state=All"/>">Đơn đặt chỗ</a>
                                </div>

                            </nav>
                        </div>
                    </div>

                    <div class="col-12 col-md-7 p-2" style="border: 0.5px solid #d5d5d5;border-radius: 14px;">
                        <div class="" style="padding: 15px 20px 13px 30px;">
                            <div class="heading-right">
                                <h5 style="color: #2d4271;font-size: 20px;font-weight: 700;line-height: 24px;margin: 0px 0px 8px;">Đổi mật khẩu</h5>
                                <p style="color: #6c757d;font-size: 15px;line-height: 24px;margin: 0px 0px 25px;">Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác </p>
                            </div>
                            <div class="provide-details">
                                <div class="section-details">
                                    <c:if test="${MSG_SUCCESS != null}">
                                        <p style="color: red;">${MSG_SUCCESS}</p>
                                    </c:if>
                                    <c:if test="${MSG_ERROR != null}">
                                        <p style="color: red;">${MSG_ERROR}</p>
                                    </c:if>
                                    <form action="<c:url value="/account/changePasswordHandler.do"/>" method="post">
                                        <div class="section-item">
                                            <div class="section-item-field">Mật khẩu cũ</div> 

                                            <input type="password" name="oldPassword" class="section-item-userinfo" placeholder="Mật khẩu cũ" required=""/>
                                        </div>

                                        <div class="section-item">
                                            <div class="section-item-field">Mật khẩu mới</div>
                                            <input type="password" name="newPassword" class="section-item-userinfo" placeholder="Mật khẩu mới" required=""/>
                                        </div>
                                        <div class="section-item">
                                            <div class="section-item-field">Nhập lại mật khẩu mới</div>
                                            <input type="password" name="newPasswordRetype" class="section-item-userinfo"
                                                   placeholder="Nhập lại mật khẩu mới" required="*"/>
                                        </div>
                                        <div class="section-item">
                                            <div class="section-item-field"></div>
                                            <button class="newpass-button" type="submit">Đổi mật khẩu <i class="fa-sharp fa-solid fa-right-to-bracket"></i></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <script src="../assets/js/Homepage/sliders/jquery.min.js"></script>
        <script src="../assets/js/Homepage/sliders/slider.js"></script>
        <script src="../assets/js/Homepage/main.js"></script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>

    </body>
</html>