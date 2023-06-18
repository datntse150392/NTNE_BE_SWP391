<%-- 
    Document   : contact
    Created on : Jun 5, 2023, 7:27:08 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="<c:url value="/assets/css/Contact/styles.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/css/bootstrap.css"/>" rel="stylesheet" type="text/css"/>

        <title>Nha Trang Nature Elite</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
        <link
            as="style"
            onload='this.onload = null;this.rel = "stylesheet"'
            href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&amp;display=swap"
            rel="stylesheet"
            type="text/css"
            />
        <noscript>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&display=swap"
            />
        </noscript>
        <!-- Link FontAwesome CDN -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            />
        <meta property="og:locale" content="vi_VN" />
    </head>
    <body>
        <!-- Headline Image -->
        <div class="category-header"><h1 class="category-title">Liên hệ</h1></div>
        <section class="main">
            <div class="contacts">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <p class="text-center">Bạn có bất cứ thắc mắc nào về chất lượng tour hoặc dịch vụ</p>
                            <p class="text-center">
                                <a
                                    href="#"
                                    class="btn btn-radius btn-pink btn-booking">
                                    Gọi 0918.xxx.xxx
                                </a>
                                <a
                                    href="#"
                                    class="btn btn-radius btn-pink btn-booking">
                                    Gọi 0918.xxx.xxx
                                </a>
                            </p>

                            <p class="text-center">
                                Hoặc bạn hãy liên hệ ngay để bộ phận chăm sóc khách hàng tư vấn
                                ngay cho bạn.
                            </p>

                            <form method="post" action="/lien-he" novalidate="novalidate">
                                <div
                                    class="text-danger validation-summary-valid"
                                    data-valmsg-summary="true">
                                    <ul>
                                        <li style="display: none"></li>
                                    </ul>
                                </div>
                                <div class="form-group">
                                    <label for="Name">Tên đầy đủ<span class="pink-color">*</span></label>
                                    <input
                                        class="form-control"
                                        type="text"
                                        data-val="true"
                                        data-val-length="Tối đa 50 ký tự."
                                        data-val-length-max="50"
                                        data-val-required="Vui lòng nhập tên của bạn."
                                        id="Name"
                                        maxlength="50"
                                        name="Name"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Name"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Email">Tên Email</label>
                                    <input
                                        class="form-control"
                                        type="email"
                                        data-val="true"
                                        data-val-email="Vui lòng nhập đúng định dạng Email."
                                        id="Email"
                                        name="Email"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Email"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="PhoneNumber">Số điện thoại<span class="pink-color">*</span></label>
                                    <input
                                        class="form-control"
                                        type="text"
                                        data-val="true"
                                        data-val-length="Tối đa 12 ký tự"
                                        data-val-length-max="12"
                                        data-val-required="Vui lòng nhập số điện thoại."
                                        id="PhoneNumber"
                                        maxlength="12"
                                        name="PhoneNumber"
                                        value=""/>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="PhoneNumber"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Content">Nội dung<span class="pink-color">*</span></label>
                                    <textarea
                                        class="form-control"
                                        rows="6"
                                        data-val="true"
                                        data-val-length="Tối đa 500 ký tự"
                                        data-val-length-max="500"
                                        data-val-regex="Không được sử dụng các thẻ HTML"
                                        data-val-regex-pattern="[^<>&amp;]*"
                                        data-val-required="Vui lòng nhập nội dung."
                                        id="Content"
                                        maxlength="500"
                                        name="Content">
                                        Đăng ký báo giá tour: Tour Đi Bộ Dưới Đáy Biển
                                    </textarea>
                                    <span
                                        class="text-danger field-validation-valid"
                                        data-valmsg-for="Content"
                                        data-valmsg-replace="true">
                                    </span>
                                </div>
                                <div class="form-group"></div>
                                <button type="submit" class="btn btn-pink btn-submit">
                                    Gửi đi</button>
                                <input
                                    name="__RequestVerificationToken"
                                    type="hidden"
                                    value="CfDJ8I43ARlGmuROunLuYPjCfFZHDaFs3HKg26IzbzMWjQcHS70ttEoUV6S5ARf8151AmK76Eynqgj2Mp4BgB7E6OAsX0iFmJIQ6BTxu3BD0AGAiJDEJXX7NqHb1631Kf8b8nT1dAbuTv1DVTCbX5KhLKyI"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>