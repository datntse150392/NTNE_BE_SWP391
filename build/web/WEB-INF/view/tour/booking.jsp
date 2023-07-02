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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/header_footer.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/Booking/styles.css"/>" rel="stylesheet" type="text/css">


        <title>Nha Trang Nature Elite</title>
    </head>

    <body>
        <section class="mainBooking">
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
                                            class="formControl"
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
                                                        id="btnMinus1"
                                                        class="btnMinus"
                                                        type="button"
                                                        >
                                                        -
                                                    </button>
                                                </span>
                                                <input
                                                    class="formControl peopleCount1"
                                                    id="adults"
                                                    value="1"
                                                    type="number"
                                                    name="AdultAmount"
                                                    />
                                                <span class="input-group-btn input-group-append">
                                                    <button
                                                        id="btnPlus1"
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
                                                        id="btnMinus2"
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
                                                        id="btnPlus2"
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
                                               >Tour theo ngày hiện có
                                            <span class="pink-color">*</span>
                                        </label>
                                        <select name="tripID" class="formControl">
                                            <c:forEach var="trip" items="${tripDate}" varStatus= "loop">
                                               
                                                <c:if test="${tripDate.get(loop.index).isAvailability()== true}">
                                                     <option value="${trip.getId()}"><fmt:formatDate value="${trip.getDepart_time()}" pattern="dd/MM/yyyy"/></option>
                                                </c:if>                 
                                            </c:forEach>
                                        </select>
                               <!--<input
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
                                        <img class="image" src="${tripInfo.getThumbnail()}" alt=""/>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-male"></i>
                                            Người lớn: <span id="displayPriceAdult"><fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,###"/></span> VNĐ
                                        </p>
                                        <p class="price-value" id="adults-price"></p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-child"></i> Trẻ em: <span id="displayPriceChild"><fmt:formatNumber value="${tripInfo.getPriceChild()}" pattern="###,###" /></span> VNĐ
                                        </p>
                                        <p class="price-value" id="childs-price"></p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-users"></i> Số lượng:
                                        </p>
                                        <p class="price-value" id="amount">
                                            <span id="adults-count" style="font-size: medium" class="adults-count"
                                                  >1 người lớn</span
                                            >
                                            <span id="childs-count" style="font-size: medium" class="childs-count"
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
                                        <p class="price-value" id="total-price">
                                            <span id="totalPrice"><fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,###" /></span> VNĐ</p>
                                    </div>

                                        <input type="hidden" value="${tripInfo.getPriceChild()}" id="priceChild" name="priceChild"/>
                                        <input type="hidden" value="${tripInfo.getPriceAdult()}" id="priceAdult" name="priceAdult"/>
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
        <script>
            const btnPlus1 = document.getElementById("btnPlus1");
            const btnMinus1 = document.getElementById("btnMinus1");
            const numberAdult = document.getElementById("adults");
            const spanAdult = document.getElementById("adults-count");
            const displayPriceAdult = document.getElementById("displayPriceAdult");
            const priceAdult = document.getElementById("priceAdult");
            let totalAdult = 0;
            let totalChild = 0;
            
            const btnPlus2 = document.getElementById("btnPlus2");
            const btnMinus2 = document.getElementById("btnMinus2");
            const numberChild = document.getElementById("childs");
            const spanChild = document.getElementById("childs-count");
            const displayPriceChild = document.getElementById("displayPriceChild");
            const priceChild = document.getElementById("priceChild");
            
            const totalPrice = document.getElementById("totalPrice");
            console.log(totalPrice);
           
            btnPlus1.addEventListener("click", function() {
              increaseNumber();
            });

            btnMinus1.addEventListener("click", function() {
              decreaseNumber();
            });

            function increaseNumber() {
              let currentValue = parseInt(numberAdult.value);
              numberAdult.value = currentValue + 1;
              //Hiển thị số lượng người lớn
              spanAdult.textContent =  currentValue+1 + " người lớn";
              //Tính toán số tiền người lớn
              const number = priceAdult.value;
              totalAdult = parseInt((currentValue+1)*number);
              //Hiển thị tổng giá
              displayPriceAdult.textContent = totalAdult ;
              tolalPriceTour(totalChild, totalAdult);
            }

            function decreaseNumber() {
              let currentValue = parseInt(numberAdult.value);
              if (currentValue > 1) {
                numberAdult.value = currentValue - 1;
                //Hiển thị số lượng người lớn
                spanAdult.textContent =  currentValue-1 + " người lớn";
                //Tính toán số tiền người lớn
                const number = priceAdult.value;
                totalAdult = parseInt((currentValue-1)*number);
                //Hiển thị tổng giá
                displayPriceAdult.textContent = totalAdult ;
                tolalPriceTour(totalChild, totalAdult);
              }
            }
            
            btnPlus2.addEventListener("click", function() {
              increaseNumber2();
            });

            btnMinus2.addEventListener("click", function() {
              decreaseNumber2();
            });

            function increaseNumber2() {
              let currentValue = parseInt(numberChild.value);
              numberChild.value = currentValue + 1;
              //Hiển thị số lượng trẻ em
              spanChild.textContent = currentValue+1 + " trẻ em";
              //Tính toán số tiền trẻ em
              const number = priceChild.value;
              totalChild = parseInt((currentValue+1)*number);
              //Hiển thị tổng giá
              displayPriceChild.textContent = totalChild ;
              tolalPriceTour(totalChild, totalAdult);
            }

            function decreaseNumber2() {
              let currentValue = parseInt(numberChild.value);
              if (currentValue > 0) {
                numberChild.value = currentValue - 1;
                //Hiển thị số lượng trẻ em
                spanChild.textContent = currentValue-1 + " trẻ em";
                //Tính toán số tiền trẻ em
                const number = priceChild.value;
                totalChild = parseInt((currentValue-1)*number);
                //Hiển thị tổng giá
                displayPriceChild.textContent = totalChild ;
                tolalPriceTour(totalChild, totalAdult);
              }
            }
            
            function tolalPriceTour(priceChild, priceAdult){
                totalPrice.textContent = priceChild+priceAdult ;
            }
        </script>
    </body>
</html>
