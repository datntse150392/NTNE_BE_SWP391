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
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css"> 


        <title>Nha Trang Nature Elite</title>
    </head>

    <body>
        <section class="mainBooking">
            <div class="checkout">
                <div class="booking">
                    <form method="post" id="handleSubmitForm" action="<c:url value="/tour/book.do"/>">
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
                                        <span class="pink-color">*</span>
                                        <input
                                            required=""
                                            class="formControl"
                                            placeholder="Vui lòng nhập tên của bạn."
                                            type="text"
                                            id="Name"
                                            maxlength="50"
                                            name="Name"
                                            value="${sessionScope.person.name}"
                                            lang="vi"/>
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                    <div class="formGroup">
                                        <label for="Address"> Địa chỉ </label>
                                        <span class="pink-color">*</span>
                                        <input
                                            required=""
                                            class="formControl"
                                            placeholder="Vui lòng nhập địa chỉ của bạn."
                                            type="text"
                                            id="Name"
                                            maxlength="50"
                                            name="Address"
                                            value=""
                                            lang="vi"/>
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                </div>

                                <div class="formRow2">
                                    <div class="itemRow2">
                                        <label for="Email">Email</label>
                                        <span class="pink-color">*</span>
                                        <input
                                            required=""
                                            class="formControl"
                                            placeholder="example@gmail.com"
                                            type="email"
                                            id="Email"
                                            name="Email"
                                            value="${sessionScope.person.email}"/>
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                    <div class="itemRow2">
                                        <label for="PhoneNumber">Số điện thoại</label>
                                        <span class="pink-color">*</span>
                                        <input
                                            required=""
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
                                            <ul class="list-group list-group-horizontal">
                                                <button id="btnMinus1" class="btn mt-0 btnMinus list-group-item" type="button" >
                                                    -
                                                </button>
                                                <input class="list-group-item formControl people-count"
                                                       id="adults"
                                                       value="1"
                                                       type="number"
                                                       name="AdultAmount"
                                                       />
                                                <button id="btnPlus1" class="btn mt-0 btnPlus list-group-item" type="button" >
                                                    +
                                                </button>
                                            </ul>
                                        </div>

                                        <div class="formGroup3Right">
                                            <label for="ChildAmount"
                                                   >Số Trẻ em
                                                <span class="pink-color">*</span>
                                            </label>
                                            <ul class="list-group list-group-horizontal">
                                                <button id="btnMinus2" class="btn mt-0 btnMinus list-group-item" type="button">
                                                    -
                                                </button>
                                                <input class="list-group-item formControl people-count"
                                                       id="childs"
                                                       value="0"
                                                       type="number"
                                                       span="0"
                                                       name="ChildAmount"
                                                       />
                                                <button id="btnPlus2" class="btn mt-0 btnPlus list-group-item" type="button">
                                                    +
                                                </button>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="formRight">
                                        <label for="StartDate"
                                               >Tour theo ngày hiện có
                                            <span class="pink-color">*</span>
                                        </label>
                                        <select name="tripDate" id="tripDate" class="formControl">
                                            <c:forEach var="trip" items="${tripDate}" varStatus= "loop">
                                                <c:if test="${tripDate.get(loop.index).isAvailability()== true}">
                                                    <option value="${trip.getDepart_time()}">
                                                        <fmt:formatDate value="${trip.getDepart_time()}" pattern="dd/MM/yyyy"/>
                                                    </option>
                                                </c:if>                 
                                            </c:forEach>
                                        </select>
                                        <c:forEach var="trip" items="${tripDate}" varStatus= "loop">
                                            <c:if test="${tripDate.get(loop.index).isAvailability()== true}">
                                                <input type="hidden" id="${trip.getDepart_time()}" value="${trip}"/>                                             
                                            </c:if>                 
                                        </c:forEach>
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
                                            <option value="3">VNPay</option> 
                                        </select>
                                    </div>
                                </div>
                                <input type="hidden" name="PaymentType" value="1"/>
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
                                            <i class="fad fa-info-circle"></i>
                                            Chuyến đi:
                                        </p>
                                        <p class="price-value" id="adults-price">
                                            <span><strong>${tripInfo.getName()}</strong></span>
                                        </p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-male"></i>
                                            Người lớn:
                                        </p>
                                        <p class="price-value" id="adults-price">
                                            <strong><span id="displayPriceAdult"><fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,###"/></span> VNĐ</strong>
                                        </p>
                                    </div>
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-child"></i>
                                            Trẻ em:
                                        </p>
                                        <p class="price-value" id="childs-price">
                                            <strong><span id="displayPriceChild"><fmt:formatNumber value="${tripInfo.getPriceChild()}" pattern="###,###" /></span> VNĐ</strong>
                                        </p>
                                    </div>

                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-users"></i> Số ghế:
                                        </p>
                                        <p class="price-value" id="amount">
                                            <strong>
                                            <span id="adults-count" style="font-size: medium" class="adults-count">
                                                <c:if test="${quantity.getQuantity() > 0}">${quantity.getQuantity()} </c:if> 
                                                <c:if test="${quantity.getQuantity() <= 0}">Hết </c:if>
                                                    chỗ trống
                                            </span>
                                            </strong>                                           
                                        </p>    
                                    </div>

                                        <!--SỐ LƯỢNG TRẺ EM && NGƯỜI LỚN-->
                                        <!--<div class="price-group">
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
                                        </div>-->
                                        <!--SỐ LƯỢNG TRẺ EM && NGƯỜI LỚN-->

                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-dollar-sign"></i> Tổng thanh toán:
                                        </p>
                                        <p class="price-value" id="total-price">
                                            <strong><span id="totalPrice"><fmt:formatNumber value="${tripInfo.getPriceAdult()}" pattern="###,###" /></span> VNĐ</strong>
                                        </p>
                                    </div>

                                    <c:if test="${alert != null}">  <input type="hidden" value="${alert}" id="alertID"/></c:if>  
                                    <input type="hidden" value="${tripInfo.getPriceChild()}" id="priceChild" name="priceChild"/>
                                    <input type="hidden" value="${tripInfo.getPriceAdult()}" id="priceAdult" name="priceAdult"/>
                                    <input type="hidden" value="${tripInfo.getId()}" id="tripID" name="tripID"/>
                                    <input type="hidden" value="${tourID}" name="tourID"/>
                                    <input type="hidden" id="tripQuantity" value="${quantity.getQuantity()}"/>
                                    <input type="hidden" id="score" value="${sessionScope.person.accumulatedScore}"/>
                                    <input type="hidden" id="applyScore" name="applyScore" value=""/>
                                    
                                    <div class="price-group">
                                        <p class="price-name">
                                            <i class="fas fa-percent"></i></i> Điểm thưởng
                                        </p>
                                        <p class="price-value" id="total-price">
                                            <strong><span id="totalPrice">${sessionScope.person.accumulatedScore}</span></strong>
                                        </p>
                                    </div>
                                        
                                    <ul class="list-group list-group-horizontal">
                                        <input class="list-group-item formControl people-count"
                                               id="displayScore"
                                               value="0"
                                               type="number"
                                               span="0"
                                               name="accumulatedScore"
                                               />
                                        <button id="btnScore" class="btn mt-0 text-center btnScore list-group-item" type="button">
                                            <strong><span id="displayButtonScore">Áp dụng</span></strong>
                                        </button>
                                    </ul>
                                    
                                    <button class="btnPink btnCheckout" type="submit" onclick="getSelectedValue()">
                                        Đặt Tour
                                    </button>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>

                              
        <script>
            const displayScore = document.getElementById("displayScore");
            const displayButtonScore = document.getElementById("displayButtonScore");
            const btnScore = document.getElementById("btnScore");
            const applyScore = document.getElementById("applyScore");
            const score = document.getElementById("score");
            let isApplyScore = false;
            const btnPlus1 = document.getElementById("btnPlus1");
            const btnMinus1 = document.getElementById("btnMinus1");
            const numberAdult = document.getElementById("adults");
            const displayPriceAdult = document.getElementById("displayPriceAdult");
            let priceAdult = document.getElementById("priceAdult");
            var tempAdult = 1;

            let totalAdult = 0;
            let totalChild = 0;
            const btnPlus2 = document.getElementById("btnPlus2");
            const btnMinus2 = document.getElementById("btnMinus2");
            const numberChild = document.getElementById("childs");
            const displayPriceChild = document.getElementById("displayPriceChild");
            let priceChild = document.getElementById("priceChild");
            var tempChild = 0;

            var tripQuantity = document.getElementById("tripQuantity").value;
            const totalPrice = document.getElementById("totalPrice");
            const caution = document.getElementById("alertID");
            const tripID = document.getElementById("tripID");

            btnPlus1.addEventListener("click", function () {
                if (tripQuantity == 0) {
                    alert("Tour đã hết chỗ trống");
                } else {
                    if (parseInt(tempAdult + tempChild) < tripQuantity) {
                        increaseNumber();
                    } else {
                        alert("Số lượng hành khách không vượt quá " + tripQuantity);

                    }
                }
            });


            btnMinus1.addEventListener("click", function () {
                decreaseNumber();
            });

            function increaseNumber() {
                let currentValue = parseInt(numberAdult.value);

                numberAdult.value = currentValue + 1;
                tempAdult = parseInt(numberAdult.value);
                //Hiển thị số lượng người lớn
                //Tính toán số tiền người lớn
                const number = priceAdult.value;
                totalAdult = parseInt((currentValue + 1) * number);
                //Hiển thị tổng giá
                displayPriceAdult.textContent = totalAdult.toLocaleString("vi-VN").replace("₫", "VNĐ");
                tolalPriceTour(totalChild, totalAdult);
            }

            function decreaseNumber() {
                let currentValue = parseInt(numberAdult.value);
                if (currentValue > 1) {
                    numberAdult.value = currentValue - 1;
                    tempAdult = parseInt(numberAdult.value);

                    //Hiển thị số lượng người lớn
                    //Tính toán số tiền người lớn
                    const number = priceAdult.value;
                    totalAdult = parseInt((currentValue - 1) * number);
                    //Hiển thị tổng giá
                    displayPriceAdult.textContent = totalAdult.toLocaleString("vi-VN").replace("₫", "VNĐ");;
                    tolalPriceTour(totalChild, totalAdult);
                }
            }


            btnPlus2.addEventListener("click", function () {
                if (tripQuantity == 0) {
                    alert("Tour đã hết chỗ trống");
                } else {
                    if (parseInt(tempAdult + tempChild) < tripQuantity) {
                        increaseNumber2();
                    } else {
                        alert("Số lượng hành khách không vượt quá " + tripQuantity);
                    }
                }
            });


            btnMinus2.addEventListener("click", function () {
                decreaseNumber2();
            });

            function increaseNumber2() {
                let currentValue = parseInt(numberChild.value);
                numberChild.value = currentValue + 1;
                tempChild = parseInt(numberChild.value);
                console.log(tempChild);
                //Hiển thị số lượng trẻ em
                //Tính toán số tiền trẻ em
                const number = priceChild.value;
                totalChild = parseInt((currentValue + 1) * number);
                //Hiển thị tổng giá
                displayPriceChild.textContent = totalChild.toLocaleString("vi-VN").replace("₫", "VNĐ");;
                tolalPriceTour(totalChild, totalAdult);
            }

            function decreaseNumber2() {
                let currentValue = parseInt(numberChild.value);
                tempChild = currentValue;
                if (currentValue > 0) {
                    numberChild.value = currentValue - 1;
                    tempChild = parseInt(numberChild.value);
                    //Hiển thị số lượng trẻ em
                    //Tính toán số tiền trẻ em
                    const number = priceChild.value;
                    totalChild = parseInt((currentValue - 1) * number);
                    //Hiển thị tổng giá
                    if (totalChild == 0) {
                        temp = parseInt(currentValue * number);
                        displayPriceChild.textContent = temp.toLocaleString("vi-VN").replace("₫", "VNĐ");
                    } else {
                        displayPriceChild.textContent = totalChild.toLocaleString("vi-VN").replace("₫", "VNĐ");;
                    }
                    tolalPriceTour(totalChild, totalAdult);
                }
            }

            function tolalPriceTour(priceChild, priceAdult) {
                if(priceAdult == 0){
                    priceAdult = parseInt(document.getElementById("priceAdult").value);
                }
                console.log(isApplyScore);
                //XỬ LÝ TỔNG GIÁ CÓ ÁP DỤNG ĐIỂM THƯỞNG HAY KHÔNG
                if (isApplyScore){ //TRƯỜNG HỢP CÓ ÁP DỤNG
                    console.log("Giá trẻ em: ", priceChild);
                    console.log("Giá trẻ người lớn: ", priceAdult);
                    console.log("Giá: ", parseInt(displayScore.value*1000));
                    console.log("Giảm giá thực: ", parseInt(applyScore.value*1000));
                    if(parseInt(applyScore.value*1000) < priceChild + priceAdult){
                        //TÍNH TỔNG TIỀN PHẢI TRẢ
                        let total =  priceChild + priceAdult - parseInt(applyScore.value*1000);
                        totalPrice.textContent = total.toLocaleString("vi-VN").replace("₫", "VNĐ");
                    } else {
                        //TÍNH TỔNG TIỀN PHẢI TRẢ
                        let total = 0;
                        totalPrice.textContent = total.toLocaleString("vi-VN").replace("₫", "VNĐ");
                        displayScore.value = (priceChild + priceAdult)/1000;
                        applyScore.value = (priceChild + priceAdult)/1000;
                    }
                } else { // TRƯỜNG HỢP KHÔNG ÁP DỤNG
                    const total = priceChild + priceAdult;
                    totalPrice.textContent = total.toLocaleString("vi-VN").replace("₫", "VNĐ");
                }
            }

            //FUNCTION XỬ LÝ ĐỔI SỐ SLOT VÀ GIÁ THEO SELECT NGÀY CỦA TRIP
            const tripDate = document.getElementById("tripDate");
            tripDate.onchange = (e) => {
                console.log("Xử lý đổi số slot tour và giá");
                const adultsCount = document.getElementById("adults-count");
                const priceTripChange = document.getElementById(e.target.value).value;

                const keyValuePairs = priceTripChange.match(/\w+=(?:[^,}]+)/g);
                console.log(tripID);
                const tripObject = {};

                keyValuePairs.forEach(pair => {
                    const [key, value] = pair.split('=');
                    tripObject[key.trim()] = value.trim();
                });
                console.log("TripObject: ", tripObject);
                priceAdult.value = tripObject.priceAdult;
                priceChild.value = tripObject.priceChild;
                tripID.value = tripObject.id;

                tripQuantity = tripObject.quantity - tripObject.current_quantity;

                let numberAdultChange = parseInt(numberAdult.value);
                let numberChildChange = parseInt(numberChild.value);

                //Xử lý nếu numberChild = 0 ? numberChild = 1*PriceChild sẽ bằng Price mặc định

                //Xử lý nếu tổng số lượng slot cusBook > slot hiện có của Trip thì gán lại mặc định
                if (numberAdultChange + numberChildChange > tripQuantity) {
                    numberChildChange = 1;
                    numberAdultChange = 1;
                    tempAdult = 1;
                    tempChild = 0;
                    numberChild.value = 0;
                    numberAdult.value = 1;
                }
                //Hiển thị ra màn hình
                //Giá trẻ em
                totalChild = parseInt(numberChildChange * priceChild.value);
                totalAdult = parseInt(numberAdultChange * priceAdult.value);
                if (totalChild == 0){
                    const total = 1 * priceChild.value;
                    displayPriceChild.textContent = total.toLocaleString("vi-VN").replace("₫", "VNĐ");
                } else {
                    displayPriceChild.textContent = totalChild.toLocaleString("vi-VN").replace("₫", "VNĐ");
                }
                //Giá người lớn
                displayPriceAdult.textContent = totalAdult.toLocaleString("vi-VN").replace("₫", "VNĐ");
                tolalPriceTour(totalChild, totalAdult);
                //Số chỗ của trip
                if (tripQuantity == 0){
                    adultsCount.textContent ="Hết chỗ trống";
                } else {
                    adultsCount.textContent = tripQuantity + " chỗ trống";
                }

                console.log("Số slot hiện có: ", tripQuantity);
                console.log("Số người lớn hiện tại: ", numberAdultChange);
                console.log("Giá người lớn: ", priceAdult.value);
                console.log("Số trẻ em hiện tại: ", numberChildChange);
                console.log("Giá trẻ em: ", priceChild.value);
            }

            if (caution !== null) {
                console.log('im here');
                alert(caution.value);
            }

            const handleSubmitForm = document.getElementById("handleSubmitForm");

            handleSubmitForm.addEventListener('submit', (e) => {
                e.preventDefault();
                if (tripQuantity == 0) {
                    alert("Tour đã hết chỗ trống");
                } else {
                    handleSubmitForm.submit();
                }
            });
            
            //XỬ LÝ THÊM ĐIỂM VOUCHER VÀO PAYMENT
            btnScore.addEventListener("click", function () {
                handleApplyScore();
            });
            
            function handleApplyScore() {
                isApplyScore = !isApplyScore;
                if (isApplyScore){
                    if(score.value == ""){
                        alert("Bạn không có điểm thưởng!!!");
                        applyScore.value = 0;
                        displayScore.value = 0;
                        isApplyScore = false;
                    } else {
                        if(parseInt(displayScore.value) < 0){
                        alert("Nhập điểm thưởng không hợp lệ!!!");
                        applyScore.value = 0;
                        displayScore.value = 0;
                        isApplyScore = false;
                     } else if (parseInt(displayScore.value) > parseInt(score.value)){
                        alert("Điểm thưởng bạn không đủ!!!");
                        applyScore.value = 0;
                        displayScore.value = 0;
                        isApplyScore = false;
                     } else {
                         if(parseInt(displayScore.value) == 0){
                            applyScore.value = 0;
                            isApplyScore = false;
                         } else {
                            applyScore.value = parseInt(displayScore.value);
                            displayButtonScore.textContent = "Hủy áp dụng";
                            alert("Đã áp dụng điểm thưởng trong booking của bạn");
                         }
                     }  
                    }           
                } else {
                    applyScore.value = 0;
                    displayScore.value = 0;
                    displayButtonScore.textContent = "Áp dụng";
                    alert("Đã hủy áp dụng điểm thưởng");
                }
                tolalPriceTour(totalChild, totalAdult);
            }
             //END XỬ LÝ THÊM ĐIỂM VOUCHER
        </script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
