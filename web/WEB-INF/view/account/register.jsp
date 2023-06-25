<%-- 
    Document   : register
    Created on : Jun 5, 2023, 1:37:49 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- FONT GG -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Manrope:wght@200&family=Markazi+Text:wght@500&family=Rokkitt:wght@100&display=swap"
        rel="stylesheet">
    <!-- 
        LINK CSS
     -->
     <link rel="stylesheet" href="../assets/css/Register/styles.css">
    <!-- FONT CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Đăng Kí Tài Khoản</title>
</head>

<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="" method="post" id="form-register">
                    <h2>Đăng kí tài khoản</h2>
                    <div class="inputbox">
                        <input type="text" name="displayname" rules="required">
                        <label for="">Họ và tên</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="inputbox">
                        <input type="text" name="username" rules="required">
                        <label for="">Tên tài khoản</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="inputbox">
                        <input id="password" type="password" name="password" value="" rules="required|min:6">
                        <label for="">Mật khẩu</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="inputbox">
                        <input type="password" name="re_password" rules="confirmPassword|min:6">
                        <label for="">Nhập lại mật khẩu</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="selectbox">
                        <select name="" id="select_option">
                        </select>
                    </div>
                    <button type="submit">Đăng kí</button>
                    <div class="login">
                        <p>Đã có tài khoản <a href="<c:url value="/view/login.jsp"/>">đăng nhập</a></p>
                    </div>
                    <div class="homepage">
                        <a href="../index.jsp">Trang chủ</a>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- LINK JS -->
    <script src="../assets/js/Register/register.js"></script>
    <script>
        register('#form-register');
    </script>
</body>

</html>