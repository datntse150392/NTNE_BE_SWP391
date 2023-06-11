<%-- 
    Document   : login
    Created on : Jun 5, 2023, 1:29:42 AM
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
    <link rel="stylesheet" href="../assets/css/Login/styles.css">
    <!-- 
    - google font link
  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Manrope:wght@200&family=Markazi+Text:wght@500&family=Rokkitt:wght@100&display=swap"
        rel="stylesheet">
    <title>Đăng nhập tài khoản</title>
</head>

<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="#" method="post" id="form-login">
                    <h2>Đăng nhập</h2>
                    <div class="inputbox">
                        <input type="text" name="username" value="" rules="required">
                        <label for="">Tên đăng nhập</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="inputbox">
                        <input type="password" name="password" value="" rules="required|min:6">
                        <label for="">Mật khẩu</label>
                        <span class="form-message"></span>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox" required>Ghi nhớ mật khẩu</label>
                    </div>
                    <button type="submit">Đăng nhập</button>
                    <div class="register">
                        <p>Không có tài khoản <a href="<c:url value="/view/register.jsp"/>">đăng kí ngay</a></p>
                    </div>
                    <div class="homepage">
                        <a href="../index.jsp">Trang chủ</a>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script src="../assets/js/Login/login.js"></script>
    <script>
        login('#form-login');
    </script>
</body>

</html>
