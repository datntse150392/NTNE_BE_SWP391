<%-- 
    Document   : contact
    Created on : Jun 5, 2023, 7:27:08 AM
    Author     : thuyk
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css"> 
        <link href="<c:url value="/assets/css/Contact/styles.css"/>" rel="stylesheet" type="text/css"/>
        
        

        <title>Nha Trang Nature Elite</title>
        
        
        <!-- Link FontAwesome CDN -->
        
        
    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <!-- Headline Image -->
        <div class="category-header mt-5"><h1 class="category-title">Liên hệ</h1></div>
        <section class="main" style="margin-top: 2%;">
            <div class="contacts">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <p class="text-center">Bạn có bất cứ thắc mắc nào về chất lượng tour hoặc dịch vụ</p>

                            <p class="text-center">
                                Hoặc bạn hãy liên hệ ngay để bộ phận chăm sóc khách hàng tư vấn
                                ngay cho bạn.
                            </p>

                            <form method="post" action="sendEmailHandler.do" id="contact">
                                <div class="form-group">
                                    <label for="Name">Họ và tên<span class="pink-color">*</span></label>
                                    <input
                                        required=""
                                        class="form-control"
                                        placeholder="Vui lòng nhập tên của bạn."
                                        type="text"
                                        id="Name"
                                        maxlength="50"
                                        name="name"
                                        value=""
                                        lang="vi"/>
                                </div>

                                <div class="form-group">
                                    <label for="Email">Email<span class="pink-color">*</span></label>
                                    <input
                                        required=""
                                        class="form-control"
                                        placeholder="example@gmail.com"
                                        type="email"
                                        id="Email"
                                        name="email"
                                        value=""/>
                                </div>

                                <div class="form-group">
                                    <label for="PhoneNumber">Số điện thoại<span class="pink-color">*</span></label>
                                    <input
                                        required=""
                                        class="form-control"
                                        placeholder="0xx.xxx.xxxx"
                                        type="tel"
                                        id="PhoneNumber"
                                        
                                        name="PhoneNumber"
                                        pattern="[0-9]{10}"
                                        maxlength="10"
                                        required="true"
                                        value=""/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="Subject">Subject<span class="pink-color">*</span></label>
                                    <input
                                        required=""
                                        class="form-control"
                                        placeholder=""
                                        type="text"
                                        id="Subject"
                                        maxlength="50"
                                        name="subject"
                                        value=""
                                        lang="vi"/>
                                </div>

                                <div class="form-group">
                                    <label for="Content">Nội dung<span class="pink-color">*</span></label>
                                    <textarea
                                        class="form-control"
                                        placeholder="Vui lòng nhập nội dung."
                                        rows="6"
                                        cols="100"
                                        id="Content"
                                        maxlength="500"
                                        name="Content"
                                        lang="vi"
                                        >
                                    </textarea>
                                </div>
                                <button type="submit" class="btn btn-pink btn-submit" style="font-size: 1.5rem !important;">
                                    Gửi đi
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script type="text/javascript">
            var status = document.getElementById("status").value;
                if(status === "success"){
                    swal("Thông báo", "Gửi thành công. Vui lòng chờ đợi quá trình xử lý của chúng tôi. Xin cảm ơn!", "success");
                }
        </script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>