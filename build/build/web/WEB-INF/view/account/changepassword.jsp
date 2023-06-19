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
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
        <link rel="stylesheet" href="../assets/css/UserProfile/stylechange-pass.css">
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
                                                <li><a href="<c:url value="/account/changepassword.do"/>">Đổi mật khẩu</a></li>
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
                                <h5>Đổi mật khẩu</h5>
                                <p>Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác </p>
                                <c:if test="${MSG_ERROR}">
                                    <p>${MSG_ERROR}</p>
                                </c:if>
                            </div>
                            <div class="provide-details">
                                <div class="section-details">
                                    <form action="<c:url value="/account/changePasswordHandler.do"/>" method="post">
                                        <div class="section-item">
                                            <div class="section-item-field">Mật khẩu cũ</div> 

                                            <input type="text" name="oldPassword" class="section-item-userinfo" placeholder="Mật khẩu cũ" />
                                        </div>

                                        <div class="section-item">
                                            <div class="section-item-field">Mật khẩu mới</div>
                                            <input type="text" name="newPassword" class="section-item-userinfo" placeholder="Mật khẩu mới" />
                                        </div>
                                        <div class="section-item">
                                            <div class="section-item-field">Nhập lại mật khẩu mới</div>
                                            <input type="text" class="section-item-userinfo"
                                                   placeholder="Nhập lại mật khẩu mới" />
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
        </div>
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
    </body>
</html>