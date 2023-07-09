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
                                            required="true"
                                            />
                                        <span class="text-danger field-validation-valid"></span>
                                    </div>
                                </div>

                                <div class="formRow2">
                                    <div class="itemRow2">
                                        <label for="Email">Email</label>
                                        <input
                                            type="email"
                                            class="formControl"
                                            name="Email"
                                            value="${sessionScope.person.email}"
                                            required="true"
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
                                            required="true"
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
                                            <option value="2">
                                                Chuyển khoản ngân hàng
                                            </option>
                                            <option value="3">VNPay</option> 
                                            <!-- <option value="InternationalCard">
                                                                            Visa/Master Card
                                                                          </option> -->

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
                                                    <i class="fas fa-users"></i> Số ghế:
                                                </p>
                                                <p class="price-value" id="amount">
                                                    <span id="adults-count" style="font-size: medium" class="adults-count">
                                                        <c:if test="${quantity.getQuantity() - currentQuantity.getCurrent_quantity() > 0}">${quantity.getQuantity() - currentQuantity.getCurrent_quantity()} chỗ trống</c:if> 
                                                        <c:if test="${quantity.getQuantity() - currentQuantity.getCurrent_quantity() <= 0}">Hết chỗ trống</c:if>
                                                        
                                                    </span>                                           
                                                </p>    
                                            </div>
                                    
                                        <!--SỐ LƯỢNG TRẺ EM && NGƯỜI LỚN-->
<!--                                    <div class="price-group">
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

                                    <c:if test="${alert != null}">  <input type="hidden" value="${alert}" id="alertID"/></c:if>  
                                    <input type="hidden" value="${tripInfo.getPriceChild()}" id="priceChild" name="priceChild"/>
                                    <input type="hidden" value="${tripInfo.getPriceAdult()}" id="priceAdult" name="priceAdult"/>
                                    <input type="hidden" value="${tourID}" name="tourID"/>
                                    <input type="hidden" id="tripQuantity" value="${quantity.getQuantity() - currentQuantity.getCurrent_quantity()}"/>
                                    <input type="hidden" value="${tripInfo.getId()}" id="tripID" name="tripID"/>
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
                if (parseInt(tempAdult + tempChild) < tripQuantity) {
                    increaseNumber();
                } else {
                    alert("Số lượng hành khách không vượt quá " + tripQuantity);
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
                displayPriceAdult.textContent = totalAdult;
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
                    displayPriceAdult.textContent = totalAdult;
                    tolalPriceTour(totalChild, totalAdult);
                }
            }


            btnPlus2.addEventListener("click", function () {
                if (parseInt(tempAdult + tempChild) < tripQuantity) {
                    increaseNumber2();
                } else {
                    alert("Số lượng hành khách không vượt quá " + tripQuantity);

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
                displayPriceChild.textContent = totalChild;
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
                        displayPriceChild.textContent = temp;
                    } else {
                        displayPriceChild.textContent = totalChild;
                    }
                    tolalPriceTour(totalChild, totalAdult);
                }
            }

            function tolalPriceTour(priceChild, priceAdult) {
                totalPrice.textContent = priceChild + priceAdult;
            }

            //FUNCTION XỬ LÝ ĐỔI SỐ SLOT VÀ GIÁ THEO SELECT NGÀY CỦA TRIP
            const tripDate = document.getElementById("tripDate");
            tripDate.onchange = (e) => {
                console.log("Xử lý đổi số slot tour và giá");
                const adultsCount = document.getElementById("adults-count");
                const priceTripChange = document.getElementById(e.target.value).value;
                console.log("Trip From DOM: " + priceTripChange);
                const keyValuePairs = priceTripChange.match(/\w+=(?:[^,}]+)/g);
                console.log(tripID);
                const tripObject = {};

                keyValuePairs.forEach(pair => {
                    const [key, value] = pair.split('=');
                    tripObject[key.trim()] = value.trim();
                });
                priceAdult.value = tripObject.priceAdult;
                priceChild.value = tripObject.priceChild;
                tripID.value = tripObject.id;
                console.log("1. Trip Object : ", tripObject);
                console.log("1. Trip current_quantity : ", tripObject.current_quantity);
                
                console.log("1. Số lượng ghế: ", tripQuantity);
                console.log("1. Value của trip ID: ", tripID.value);
                tripQuantity = tripObject.quantity - tripObject.current_quantity;
                console.log("2. Số lượng ghế: ", tripQuantity);
                let numberAdultChange = parseInt(numberAdult.value);
                let numberChildChange = parseInt(numberChild.value);

                //Xử lý nếu numberChild = 0 ? numberChild = 1*PriceChild sẽ bằng Price mặc định
                if (numberChildChange == 0) {
                    numberChildChange = 1;
                }

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
                displayPriceChild.textContent = totalChild;
                //Giá người lớn
                displayPriceAdult.textContent = totalAdult;
                tolalPriceTour(totalChild, totalAdult);
                //Số chỗ của trip
                adultsCount.textContent = tripQuantity + " chỗ trống";

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
        </script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
