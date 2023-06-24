<%-- 
    Document   : booking
    Created on : Jun 5, 2023, 7:50:32 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Booking Tour - Nha Trang Nature Elite</title>
        <link href="<c:url value="/assets/css/Booking/styles.css"/>" type="text/css" rel="stylesheet"/>

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
        <section class="main">
            <div class="checkout">
                <div class="container">
                    <h2 class="chekout-name">
                        Tên dịch vụ
                        <a href="<c:url value="/view/detailTour .jsp"/>" class="pink-color">
                            ${tripInfo.getName()}
                        </a>
                    </h2>
                    <form method="post" action="<c:url value="/view/history.jsp"/>">
                        <input type="hidden" id="PriceId" name="PriceId" value="15" />
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="box">
                                    <h3 class="checkout-title">Thông tin của bạn</h3>
                                    <p>
                                        Vui lòng điền đầy đủ thông tin vào trường bắt buộc (
                                        <span class="pink-color">*</span>
                                        )
                                    </p>
                                    <div class="text-danger validation-summary-valid">
                                        <ul>
                                            <li style="display: none"></li>
                                        </ul>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <label for="Name"> Tên đầy đủ </label>
                                            <input
                                                class="form-control"
                                                type="text"
                                                name="Name"
                                                value="${sessionScope.person.name}"
                                                />
                                            <span class="text-danger field-validation-valid"></span>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="Email">Email</label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                name="Email"
                                                value="${sessionScope.person.name}"
                                                />
                                            <span class="text-danger field-validation-valid"></span>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="PhoneNumber">Số điện thoại</label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                name="PhoneNumber"
                                                value="${sessionScope.person.phone}"
                                                />
                                            <span class="text-danger field-validation-valid"></span>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-6 col-md-3">
                                            <label for="AdultAmount">
                                                Số người lớn
                                                <span class="pink-color">*</span>
                                            </label>
                                            <div
                                                class="input-group bootrap-touchspin boot strap-touchspin-injected"
                                                >
                                                <span class="input-group-btn input-group-prepend">
                                                    <button
                                                        class="btn btn-normal bootstrap-touchspin-down"
                                                        type="button"
                                                        >
                                                        -
                                                    </button>
                                                </span>
                                                <input
                                                    class="form-control people-count"
                                                    id="adults"
                                                    value="1"
                                                    type="number"
                                                    name="AdultAmount"
                                                    />
                                                <span class="input-group-btn input-group-append">
                                                    <button
                                                        class="btn btn-normal bootstrap-touchspin-up"
                                                        type="button"
                                                        >
                                                        +
                                                    </button>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="form-group col-6 col-md-3">
                                            <label for="ChildAmount"
                                                   >Số Trẻ em
                                                <span class="pink-color">*</span>
                                            </label>
                                            <div
                                                class="input-group bootrap-touchspin boot strap-touchspin-injected"
                                                >
                                                <span class="input-group-btn input-group-prepend">
                                                    <button
                                                        class="btn btn-normal bootstrap-touchspin-down"
                                                        type="button"
                                                        >
                                                        -
                                                    </button>
                                                </span>
                                                <input
                                                    class="form-control people-count"
                                                    id="childs"
                                                    value="0"
                                                    type="number"
                                                    span="0"
                                                    name="ChildAmount"
                                                    />
                                                <span class="input-group-btn input-group-append">
                                                    <button
                                                        class="btn btn-normal bootstrap-touchspin-up"
                                                        type="button"
                                                        >
                                                        +
                                                    </button>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="form-group-col col-12 col-md-6">
                                            <label for="StartDate"
                                                   >Ngày đi
                                                <span class="pink-color">*</span>
                                            </label>
                                            <input
                                                class="form-control"
                                                id="date-go"
                                                type="text"
                                                name="StartDate"
                                                value="${tripInfo.getDepart_time()}"
                                                />
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group-col">
                                            <label>Thanh toán bằng</label>
                                            <select
                                                class="form-control"
                                                id="payment_type"
                                                name="PaymentType"
                                                >
                                                <option value="Cash" selected="">
                                                    Thanh toán tiền mặt
                                                </option>
                                                <option value="DomesticBank">
                                                    Chuyển khoản ngân hàng
                                                </option>
                                                <!-- <option value="InternationalCard">
                                                  Visa/Master Card
                                                </option> -->
                                                <!-- <option value="VTCPay">VTC Pay</option> -->
                                                <!-- <option value="MoMo">
                                                  MoMo (Cần liên kết ví với ngân hàng)
                                                </option> -->
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div style="width: 100%" class="form-group-col">
                                            <label for="AdditionField"
                                                   >Yêu cầu thêm (không bắt buộc)</label
                                            >
                                            <textarea
                                                class="form-control"
                                                rows="6"
                                                id="AdditionField"
                                                maxlength="500"
                                                name="AdditionField"
                                                ></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="box">
                                    <h3 class="checkout-title">Thanh toán</h3>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-male"></i>
                                            Người lớn: <fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,### VNĐ" />
                                        </p>
                                        <p class="price-value" id="adults-price"></p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-child"></i> Trẻ em: <fmt:formatNumber value="${tripInfo.getPriceChild()}" pattern="###,### VNĐ" />
                                        </p>
                                        <p class="price-value" id="childs-price"></p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-users"></i> Số lượng:
                                        </p>
                                        <p class="price-value" id="amount">
                                            <span style="font-size: 12px" class="adults-count"
                                                  >1 người lớn</span
                                            >
                                            <span style="font-size: 12px" class="childs-count"
                                                  >0 trẻ em</span
                                            >
                                        </p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-hand-holding-usd"></i> Phí giao dịch:
                                        </p>
                                        <p class="price-value" id="transaction-price">0 đ</p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-dollar-sign"></i> Tổng thanh toán:
                                        </p>
                                        <p class="price-value" id="total-price">650.000 đ</p>
                                    </div>
                                    <button class="btn btnPink btn-radius btn-checkout">
                                        Đặt Tour
                                    </button>
                                    <input
                                        type="hidden"
                                        value=""
                                        id="total-price-value"
                                        name="TotalPriceValue"
                                        />
                                    <hr />
                                    <div class="btn-content text-center">
                                        <p>
                                            <i class="fas fa-phone pink-color"></i> Hỗ trợ Tư Vấn +
                                            Đặt Tour:
                                        </p>
                                        <a class="btn btn-radius btnPink btn-booking mb10" href="#"
                                           >0903.xxx.xxx</a
                                        >
                                        <a class="btn btn-radius btnPink btn-booking mb10" href="#"
                                           >0903.xxx.xxx</a
                                        >
                                        <p>
                                            <i class="fas fa-info-circle pink-color"></i>
                                            <a target="_blank" href="#" class="paymentMethod"
                                               >Thanh toán bằng chuyển khoản ngân hàng tại đây</a
                                            >
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>