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
<fmt:setLocale value="vi_VN" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Booking Tour - Nha Trang Nature Elite</title>
        
        <!--Import CSS-->
        <link href="<c:url value="/assets/css/Booking/styles.css"/>" rel="stylesheet" type="text/css">

        <!-- Link Font -->
        <link
            as="style"
            onload='this.onload = null;this.rel = "stylesheet"'
            href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&amp;display=swap"
            rel="stylesheet"
            type="text/css"
            />

        <!-- Link Icons FontAwesome CDN -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            />
        <meta property="og:locale" content="vi_VN" />
    </head>

    <body>
        <section class="main">
            <div class="checkout">
                <div class="booking">
                    <h2><a href="#" class="chekoutName pink-color"> ${tripInfo.getName()} </a></h2>
                    <form method="post" action="<c:url value="/tour/book.do"/>">
                        <input type="hidden" id="PriceId" name="PriceId" value="15" />
                        <div class="wrapper">
                            <div class="boxLeft">
                                <h3 class="checkoutTitle">Thông tin của bạn</h3>
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
                                <div class="formRow">
                                    <div class="formGroup">
                                        <label for="Name"> Tên đầy đủ </label>
                                        <input
                                            class="formControl"
                                            type="text"
                                            name="Name"
                                            value="${sessionScope.person.name}"
                                            />
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                </div>

                                <div class="formRow2">
                                    <div class="itemRow2">
                                        <label for="Email">Email</label>
                                        <input
                                            type="text"
                                            class="formControl"
                                            name="Email"
                                            value="${sessionScope.person.email}"
                                            />
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                    <div class="itemRow2">
                                        <label for="PhoneNumber">Số điện thoại</label>
                                        <input
                                                type="tel"
                                                class="form-control"
                                                name="PhoneNumber"
                                                value="${sessionScope.person.phone}"
                                                placeholder="0903.xxx.xxx"
                                                pattern="[0-9]{10}"
                                                maxlength="10"
                                            />
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                </div>

                                <div class="formRow3">
                                    <div class="formLeft">
                                        <div class="formGroup3Left">
                                            <label for="AdultAmount">
                                                Số người lớn
                                                <span class="pink-color">*</span>
                                            </label>
                                            <div
                                                class="input-group"
                                                >
                                                <span class="input-group-btn input-group-prepend">
                                                    <button
                                                        class="btnMinus"
                                                        type="button"
                                                        >
                                                        -
                                                    </button>
                                                </span>
                                                <input
                                                    class="formControl people-count"
                                                    id="adults"
                                                    value="1"
                                                    type="number"
                                                    name="AdultAmount"
                                                    />
                                                <span class="input-group-btn input-group-append">
                                                    <button
                                                        class="btnPlus"
                                                        type="button"
                                                        >
                                                        +
                                                    </button>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="formGroup3Right">
                                            <label for="ChildAmount"
                                                   >Số Trẻ em
                                                <span class="pink-color">*</span>
                                            </label>
                                            <div
                                                class="input-group bootrap-touchspin boot strap-touchspin-injected"
                                                >
                                                <span class="input-group-btn input-group-prepend">
                                                    <button
                                                        class="btnMinus"
                                                        type="button"
                                                        >
                                                        -
                                                    </button>
                                                </span>
                                                <input
                                                    class="formControl people-count"
                                                    id="childs"
                                                    value="0"
                                                    type="number"
                                                    span="0"
                                                    name="ChildAmount"
                                                    />
                                                <span class="input-group-btn input-group-append">
                                                    <button
                                                        class="btnPlus"
                                                        type="button"
                                                        >
                                                        +
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="formRight">
                                        <label for="StartDate"
                                               >Ngày đi
                                            <span class="pink-color">*</span>
                                        </label>
                                        <select name="StartDate" class="formControl">
                                                <c:forEach var="date" items="${tripDate}">
                                                <option value="${date.getDepart_time()}"><fmt:formatDate value="${date.getDepart_time()}" pattern="dd/MM/yyyy"/></option>
                                                </c:forEach>
                                        </select>
<!--                                        <input
                                            class="formControl"
                                            id="date-go"
                                            type="text"
                                            name="StartDate"
                                            value="24/06/2023"
                                            />-->
                                    </div>
                                </div>

                                <div class="formRow4">
                                    <div class="itemRow4">
                                        <label>Thanh toán bằng</label>
                                        <select
                                            class="formControl"
                                            id="payment_type"
                                            name="PaymentType"
                                            >
                                            <option value="1" selected="">
                                                Thanh toán tiền mặt
                                            </option>
                                            <option value="2">
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

                                <div class="formRow5">
                                    <div class="itemRow5">
                                        <div style="width: 100%" class="">
                                            <label for="AdditionField"
                                                   >Yêu cầu thêm (không bắt buộc)</label
                                            >
                                            <textarea
                                                class="formControl formTextArea"
                                                rows="6"
                                                id="AdditionField"
                                                maxlength="500"
                                                name="AdditionField"
                                                ></textarea>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="boxRight">
                                <div class="wrapperRight">
                                    <h3 class="checkoutTitle">Thông tin tour</h3>
                                    <div class="image-group">
                                        <img class="image" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FLogo%20-%20Banner%20-%20Cover%20Image%2Fbackground.png?alt=media&token=1b455e43-a143-47d2-a864-0a71c76d08a8&_gl=1*1yc29x1*_ga*ODIxNzI4MDkuMTY4NDA3OTMxMQ..*_ga_CW55HF8NVT*MTY4NjI0OTE3OC4xNS4xLjE2ODYyNDkyMDUuMC4wLjA." alt=""/>
                                    </div>
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
                                        <p class="price-value" id="total-price"><fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,### VNĐ" /></p></p>
                                    </div>
                                    
                                        <input type="hidden" value="${tripInfo.getPriceChild()}" name="priceChild"/>
                                        <input type="hidden" value="${tripInfo.getPriceAdult()}" name="priceAdult"/>
                                        <input type="hidden" value="${tripInfo.getId()}" name="tripID"/>
                                    <button class="btnPink btnCheckout" type="submit">
                                        Đặt Tour
                                    </button>

                                    <div class="btnContent text-center">
                                        <p class="contentP">
                                            <i class="fas fa-phone pink-color"></i> Hỗ trợ Tư Vấn + Đặt
                                            Tour:
                                        </p>
                                        <div class="wrapperPhone">
                                            <a class="btnPhone btnPink" href="#">
                                                0903.xxx.xxx
                                            </a>
                                            <a class="btnPhone btnPink" href="#">
                                                0903.xxx.xxx
                                            </a>
                                        </div>
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
