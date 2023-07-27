<%-- 
    Document   : register
    Created on : Jun 27, 2023, 10:16:31 PM
    Author     : ADMIN
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <title>JSP Page</title>
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/Register/styles.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/Register/register.css"/>" type="text/css" rel="stylesheet">



    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="wrapper">
            <div class="contain" id="contain">
                <div class="form-contain log-in-contain">
                    <form action="registerHandler.do" method="post" id="register">
                        <h1>ĐĂNG KÝ</h1>
                        <input id="fullname" type="text" name="fullname" placeholder="Họ và tên" value="" required=""> 
                        <input id="email" type="email" name="email" placeholder="Email" value="" required=""> 

                        <div class="icon-container" style="width: 100%">
                            <a href="#" id="password1">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                            <input type="password" id="password" name="password" minlength="1" placeholder="Mật khẩu" required="" class="changetype1">
                        </div>

                        <div class="icon-container" style="width: 100%">
                            <a href="#" id="re_password1">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                            <input type="password" id="repassword" name="re_password" minlength="1" placeholder="Nhập lại mật khẩu" required="" class="changetype2">
                        </div>

                        <input type="text" id="address" name="address" placeholder="Địa chỉ">
                        <input type="tel" id="phone" required name="phone" minlength="10" maxlength="10" placeholder="Số điện thoại" pattern="[0-9]{10}">
                        <div class="g-recaptcha" data-sitekey="6LdayTwnAAAAAGMhzEUKWRqyxrhyoCYnb82W1Q9f"></div>
                        
                        <p style="color: red; font-weight: bold" id="error"></p>
                        <p style="font-weight: bold">Đã có tài khoản? <a href="<c:url value="/account/login1.do"/>" style="color: tomato; font-weight: bold">Đăng nhập</a> ngay</p>
                        <c:if test="${MSG_ERROR != null}">
                            <p style="color: red; text-align: justify; font-weight: bold">${MSG_ERROR}</p>
                        </c:if>
                        <br>
                        <button type="submit" onClick="handle_submit()">Đăng kí</button>    
                    </form>
                </div>
                <div class="overlay-contain">
                    <div class="overlay">
                        <div class="overlay-panel overlay-right">
                            <div class="img" style="background-image: url(https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fimg-1.jpg?alt=media&token=f1ef0d1c-59bc-450e-a59d-fae98466aced);"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="../assets/js/Register/register_1.js"></script>                    
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script type="text/javascript">
            var status = document.getElementById("status").value;
                if(status === "success"){
                    swal("Thông báo", "Đăng ký thành công", "success");
                }
        </script>
        <script>
                window.onload = function(){
                    let isValid = false;
                    const form = document.getElementById("register");
                    const error = document.getElementById("error");

                    form.addEventListener("submit", function(event) {
                        event.preventDefault();
                        const respone = grecaptcha.getResponse();
                        if(respone){
                            form.submit();
                        } else {
                            error.innerHTML = "Please check the recaptcha";
                        }
                    });
                };
        </script>
    </body>
    
</html>
