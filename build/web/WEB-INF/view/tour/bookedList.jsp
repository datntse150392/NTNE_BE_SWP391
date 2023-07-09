<%-- 
    Document   : list.jsp
    Created on : Jun 13, 2023, 6:28:49 PM
    Author     : baoit
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link href="<c:url value="/assets/css/BookedList/tourlist.css"/>" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css">

        <script src="https://kit.fontawesome.com/ef011c00e2.js" crossorigin="anonymous" type="text/javascript"></script>
        <title>Thông tin cá nhân</title>
    </head>
    <body>
        <section>
            <div class="container-lg" style="padding-top: 9rem;">
                <div class="row gap-4 justify-content-center mx-0" style="margin-top: 20px">
                    <div class="col-12 col-md-4 pt-2 ps-4 left-box" style=" max-height: 374px; border-radius: 20px; border: 1px solid #33333338;">
                        <div class="container-fluid">
                            <div class="row pb-4 align-items-center border-bottom">
                                <div class="col-3 m-0 p-0">
                                    <a href="#">
                                        <img class="img-fluid rounded-circle" src="${sessionScope.person.getLinkImg()}"/>
                                    </a>
                                </div>
                                <div class="col-9 align-items-center">
                                    <p class="fs-3 fw-semibold mb-0">${sessionScope.person.name}</p>
                                    <p class="fs-4 fw-light mb-0">${sessionScope.person.email}</p>
                                </div>
                            </div>
                            <nav class="row pt-4 align-items-center">
                                <div class="row">
                                    <div class="row ms-0 fw-semibold" style="font-size: 16px; color: #2d4271; font-weight: 700 !important;">Tài khoản</div>
                                    <div class="row px-5" style="margin: 0px -15px;">
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/userprofile.do"/>" style="font-size: 14px; color: #000000;">Thông tin cá nhân</a>
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/changePassword.do"/>" style="font-size: 14px; color: #000000;">Đổi mật khẩu</a>
                                        <a class="py-2 link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover user-option" href="<c:url value="/account/logOut.do"/>" style="font-size: 14px; color: #000000;">Đăng xuất</a>
                                    </div>
                                </div>
                                <div class="row py-2" style="font-size: 16px; font-weight: 700 !important;">
                                    <a style="color: #2d4271;" class="fw-semibold text-decoration-none" href="<c:url value="/tour/bookedList.do?index=1"/>">Đơn đặt chỗ</a>
                                </div>
                              
                            </nav>
                        </div>
                    </div>

                    <div class="col-12 col-md-7">
                        <div class="wrapper-right" style="border: 1px solid #33333338;">
                            <div class="heading-right">
                                <ul class="provide-info">
                                    <li class="provide-info-showdown"><a href="<c:url value="/tour/bookedList.do?index=1&state=All"/>">Tất cả</a></li>
                                    <li class="provide-info-showdown"><a href="<c:url value="/tour/bookedList.do?index=1&state=NotAvailable"/>">Chờ xác nhận</a></li>
                                    <li class="provide-info-showdown"><a href="<c:url value="/tour/bookedList.do?index=1&state=Available"/>">Đã đặt</a></li>
                                </ul>
                            </div>
                        </div>
                        <form action="#" class="row px-4">
                            <input type="text"
                                   class="search-bar"
                                   placeholder="Tìm kiếm theo tên tour"
                                   value=""
                                   style="padding-left: 30px; border: 1px solid #33333338;"
                                   />
                            <i class="fa-solid fa-magnifying-glass form-icon" style="max-width: fit-content; "></i>

                            <div class="dropdown btn-group" id="dropdown-wrapper" style="margin-left: 84%">
                                <!--<div class="d-flex jusstify-content-end">-->
                                <button type="button" data-bs-toggle="dropdown" id="dropdown-button-drop-0" aria-expanded="false" class="dropdown-toggle btn btn-secondary btn-sm" style="border-radius: 6px; background-color: white; border: 2px #33333338 solid; font-weight: 500; color: #5a6a85;">  
                                    Sắp xếp
                                    <div class="dropdown-menu" id="dropdown-menu">
                                        <a href="<c:url value="/tour/bookedList.do?sort_option=day&index=${index}&state=${state}"/>" class="dropdown-item" id="dropdown-item_1">Theo ngày</a>
                                        <a href="<c:url value="/tour/bookedList.do?sort_option=month&index=${index}&state=${state}"/>" class="dropdown-item" id="dropdown-item_2">Theo tháng</a>
                                    </div>
                                </button>
                            </div>

                            <!--</div>-->

                        </form>

                        <c:forEach var="product" items="${list}" varStatus="counter">
                            <div class="tab-content">
                                <div class="tabPane">                          
                                    <div class="item-Order">                                
                                        <p class="text-muted date-time"><fmt:formatDate value="${product.getDeparttime()}" pattern="dd/MM/yyyy"/></p>
                                        <div class="tab-content-card" style="border: 1px solid #33333338;">
                                            <div class="row justify-content-center mx-0 align-items-center">
                                                <div class="col-3 m-0 p-0">
                                                    <div style="padding: 10px; width: 110%">
                                                        <a class="" href="<c:url value="/tour/returnPay.do?bookID=${product.getBookingID()}"/>">
                                                            <img class="tab-left-col-img" src="${product.getThumbnail()}" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-9 tab-right-col">
                                                    <h5 class="tab-content-card-image">
                                                        <a href="<c:url value="/tour/returnPay.do?bookID=${product.getBookingID()}"/>" class="text-decoration-none tour-name">
                                                            ${product.name}
                                                        </a>
                                                    </h5>
                                                    <div class="tab-right-col-wrapper">
                                                        <div class="col-7 tab-right-dropdown">
                                                            <div class="tab-right-dropdown-elements">
                                                                <div class="tab-right-elements">

                                                                    <p class="content-id p-0 m-0">
                                                                        <span class="text-muted">Mã booking: ${product.getBookingID()}</span>
                                                                        <br>
                                                                        <span class="text-muted">Mã Tour:
                                                                            ${product.getCode()}
                                                                        </span>
                                                                    </p>
                                                                    <p class="card-text">
                                                                        <small class="text-muted">Số khách hàng: ${product.getQuantityChild() + product.getQuantityAdult()} người</small>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-5 card-text-end">
                                                            <h4 class="font-weight-bold">
                                                                <c:choose>
                                                                    <c:when test = "${product.isStatus() == true}">
                                                                        <span class="text-success">Thanh toán</span>
                                                                    </c:when>

                                                                    <c:when test = "${product.isStatus() == false}">
                                                                        <span class="text-danger">Chưa thanh toán</span>
                                                                    </c:when>
                                                                </c:choose>                                                           
                                                            </h4>
                                                            <p style="color: black;" class="total-price font-weight-normal"><fmt:formatNumber value="${product.getTotalPrice()}" type="currency"/></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach> 
                        <div class="pagination">
                            <c:forEach begin="1" end="${count}" var="i"> 
                                <a href="<c:url value="/tour/bookedList.do?index=${i}&sort_option=${sort_option}&state=${state}"/>" onclick="handleClick(event)" class="link">${i}</a>
                            </c:forEach>
                        </div>
                    </div>



                </div>

            </div>
        </section>
        <script>
            var SearchBar = document.querySelector('.search-bar');

            var listOfTitle = document.querySelectorAll('.tour-name');
            var listOfContent = document.querySelectorAll('.tab-content');
            var array_title = Array.from(listOfTitle);
            console.log(array_title);



            function checkElementMatch(searchValue, element) {
                if (element.innerText.includes(searchValue.toUpperCase())) {
                    return true;
                } else {
                    return false;
                }

            }

            SearchBar.oninput = function (e) {
                var searchValue = e.target.value;
                for (let i = 0; i < array_title.length; i++) {
                    var item = array_title[i];
                    var content_block = listOfContent[i];
                    if (checkElementMatch(searchValue, item)) {
                        content_block.style.display = 'block';
                    } else {
                        content_block.style.display = 'none';
                    }
                }
            };

            //Thay đổi màu link a
            const user_options = document.getElementsByClassName("user-option");
//            console.log(user_options);
            for (let i = 0; i < user_options.length; i++) {
                user_options[i].addEventListener("mouseover", function (e) {
//                    console.log("targeted event: ", e.target);
                    e.target.style.color = "#23527c";
                });

                user_options[i].addEventListener("mouseout", function (e) {
//                    console.log("targeted event: ", e.target);
                    e.target.style.color = "#000000";
                });
            }

            function handleClick(event) {
                const links = document.querySelectorAll('.link');

                // Remove "active" class from all links
                links.forEach(link => link.classList.remove('active'));

                // Add "active" class to the clicked link
                event.target.classList.add('active');
            }

            //Điều chỉnh bật tắt attribute show cho dropdown
            var dropdown_wrapper = document.getElementById("dropdown-wrapper");
            var dropdown_button_drop_0 = document.getElementById("dropdown-button-drop-0");
            var dropdown_menu = document.getElementById("dropdown-menu");
            var dropdown_item_1 = document.getElementById("dropdown-item_1");
            var dropdown_item_2 = document.getElementById("dropdown-item_2");
            console.log(dropdown_menu);
            function toggleElement() {
                if (dropdown_menu.classList.contains("show")) {
                    dropdown_wrapper.classList.remove("show");
                    dropdown_button_drop_0.classList.remove("show");
                    dropdown_menu.classList.remove("show");
                } else {
                    dropdown_button_drop_0.classList.add("show");
                    dropdown_menu.classList.add("show");
                    dropdown_wrapper.classList.add("show");
                }
            }

            dropdown_button_drop_0.addEventListener("click", toggleElement);

        </script>


        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
    </body>
</html>
