<%-- 
    Document   : login1
    Created on : Jun 24, 2023, 11:34:14 PM
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
        <link rel="shortcut icon" href="./assets/imgs/five-icon.png" type="image/x-icon" sizes="30x30">
        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <title>JSP Page</title>

        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/Login/login.css"/>" type="text/css" rel="stylesheet">
        

    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="wrapper">
            <div class="contain" id="contain">
                <div class="form-contain log-in-contain">
                    <form action="login_handler.do" method="post" id="login">
                        <h1>ĐĂNG NHẬP</h1>
                        <input id="email" type="email" name="email" placeholder="Email" value="${email}" required=""> 
                        <div class="icon-container" style="width: 100%">
                            <a href="#" id="password1">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                            <input type="password" id="password" name="password" minlength="1" placeholder="Mật khẩu" required="" value="${password}" class="changetype1">
                        </div>
                        
                        <p style="font-weight: bold">
                            <a href="<c:url value="/account/forgotPassword.do"/>">Quên mật khẩu?</a>
                        </p>
                        <div class="g-recaptcha" data-sitekey="6LdayTwnAAAAAGMhzEUKWRqyxrhyoCYnb82W1Q9f"></div>
                        
                        <p style="color: red; font-weight: bold" id="error"></p>
                        <p style="color: red; font-weight: bold" id="error">${MSG_ERROR}</p>
                        <button type="submit" onClick="handle_submit()" id="login">Đăng Nhập</button>
                        <span>Hoặc</span>
                        <div class="add-on">
                            <div class="btn-google" readonly="readonly">
                                <a href="https://accounts.google.com/o/oauth2/auth?client_id=224681386135-ieoer1kr21a56bnm2mh1pav2ionb4qr3.apps.googleusercontent.com&redirect_uri=http://localhost:8080/account/login_google.do&response_type=code&scope=email%20profile&access_type=offline">
                                    <i class="fa-brands fa-google"></i> 
                                    Tiếp tục với Google
                                </a>
                            </div>
                        </div>
                        <span style="font-weight: bold">Chưa có tài khoản? <a href="<c:url value="/account/register.do"/>" style="color: tomato; font-weight: bolder">Đăng ký</a> ngay</span>
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
            if(status === "failed"){
                swal("Thông báo", "Email hoặc mật khẩu không đúng", "error");
            }
            //else {
                //var login = document.getElementById("login");
                //function handle_submit(){
                   //event.preventDefault();
                    //swal("Thông báo", "Đăng nhập thành công", "success").then(() => { login.submit(); });
                //};
            //}
        </script>
        <script>
            window.onload = function(){
                let isValid = false;
                const form = document.getElementById("login");
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
