<%-- 
    Document   : resetPassword
    Created on : Jun 29, 2023, 10:24:26 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <title>JSP Page</title>
        
        <link href="<c:url value="/assets/css/Login/resetpassword.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="column-right">
            <div class="wrapper-right">
                <div class="heading-right">
                    <h2 style="font-weight: bold">Đổi mật khẩu</h2>
                    <p>Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác </p>
                </div>
                <div class="provide-details">
                    <div class="section-details">
                        <c:if test="${MSG_SUCCESS != null}">
                            <p style="color: red;">${MSG_SUCCESS}</p>
                        </c:if>
                        <c:if test="${MSG_ERROR != null}">
                            <p style="color: red;">${MSG_ERROR}</p>
                        </c:if>
                        <form action="<c:url value="/account/resetPasswordHandler.do"/>" method="post">
                            <div class="section-item">
                                <div class="section-item-field">Mật khẩu mới</div>
                                <input type="password" name="newPassword" class="section-item-userinfo" placeholder="Mật khẩu mới" required=""/>
                            </div>
                            <div class="section-item">
                                <div class="section-item-field">Nhập lại mật khẩu mới</div>
                                <input type="password" name="confPassword" class="section-item-userinfo"
                                       placeholder="Nhập lại mật khẩu mới" required=""/>
                            </div>
                            <div class="section-item">
                                <div class="section-item-field"></div>
                                <button class="newpass-button" type="submit">Xác nhận</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="../assets/js/Homepage/sliders/jquery.min.js"></script>
        <script src="../assets/js/Homepage/sliders/slider.js"></script>
        <script src="../assets/js/Homepage/main.js"></script>
    </body>
</html>
