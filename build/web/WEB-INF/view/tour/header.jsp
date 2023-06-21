<%-- 
    Document   : header
    Created on : Jun 11, 2023, 4:29:31 PM
    Author     : Nguyen Huy Khai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.gson.Gson" %>
<!DOCTYPE html>
<html
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" rel="stylesheet" type="text/css">         
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.carousel.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.theme.default.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/styles.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/header_footer.css"/>" rel="stylesheet" type="text/css">


        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/homePageJS/slider/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/slider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/main.js"/>" type="text/javascript"></script>

        <title>Nha Trang Nature Elite</title>
    </head>

    <body>
        <!-- Start: Header -->
        <div id="header">
            <div class="container h-100">
                <div class="header-container">
                    <!-- Start: Logo And Search -->
                    <div class="header-logo">
                        <a href="<c:url value="/tour/homePage.do"/>">
                            <img style="width: 150px; padding-right: 20px;" src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*q7lns9*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE1ODg4Ni40NC4xLjE2ODYxNTg5MTYuMC4wLjA."/>
                        </a>
                    </div>
                    <form action="<c:url value="/tour/detailTour.do"/>" id="formSubmit" style="width: 100%">
                        <div class="header-search">
                            <div class="header-search-inputs">
                                <span class="fad fa-search header-search-icon"></span>
                                <input onChange="handleSearchInput()" type="text" placeholder="Tìm kiếm" id="searchInput" class="header-search-input">
                                <ul id="suggestionsList"></ul>
                            </div>
                            <div class="header-search-submit">
                                <button type="submit" class="header-search-submit-btn">
                                    <span class="fas fa-search header-search-submit-icon"></span>
                                </button>
                            </div>
                    </form>
                    <!--<div class="header-search-suggest">-->
                    <div class="header-search-suggest">
                        <h5 class="search-suggest-heading">TÌM KIẾM GẦN ĐÂY</h5>
                        <ul class="search-suggest-list">
                            <li class="search-suggest-item">
                                <div class="search-suggest-thumbnail">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour1.jpg?alt=media&token=0d2561fd-d2fb-4b37-9ea7-77aa2fec3ea6&_gl=1*m2nlv3*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNDc2Mi4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                </div>
                                <div class="search-suggest-content">
                                    <p class="search-suggest-title">Vinpearl Land</p>
                                    <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                </div>
                            </li>
                            <li class="search-suggest-item">
                                <div class="search-suggest-thumbnail">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour4.jpg?alt=media&token=4458f3f5-20d5-4691-9149-f11ef5883f59&_gl=1*1d42w0z*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTA3MS4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                </div>
                                <div class="search-suggest-content">
                                    <p class="search-suggest-title">Đảo Bình Hưng</p>
                                    <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                </div>
                            </li>
                            <li class="search-suggest-item">
                                <div class="search-suggest-thumbnail">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour9.jpg?alt=media&token=0d732622-9c3e-437a-88fc-9da066c5d44d&_gl=1*1xxmd6f*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTI0OS4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                </div>
                                <div class="search-suggest-content">
                                    <p class="search-suggest-title">Hang Rái - Vĩnh Hy</p>
                                    <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                </div>
                            </li>
                            <li class="search-suggest-item">
                                <div class="search-suggest-thumbnail">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour8.jpg?alt=media&token=fcd2565a-3aa9-4e5b-9808-54de4d11332d&_gl=1*n3l9jo*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTMxNC4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                </div>
                                <div class="search-suggest-content">
                                    <p class="search-suggest-title">Hòn Mun</p>
                                    <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                </div>
                            </li>
                            <li class="search-suggest-item">
                                <div class="search-suggest-thumbnail">
                                    <img src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour10.jpg?alt=media&token=b0d7db9f-a069-40ab-b07d-f702a4d3bfa9&_gl=1*1mcbyqs*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjEwNDczMi44LjEuMTY4NjEwNTM0Ny4wLjAuMA.." alt="" class="search-suggest-thumbnail-img">
                                </div>
                                <div class="search-suggest-content">
                                    <p class="search-suggest-title">Đảo Điệp Sơn</p>
                                    <small>Số chỗ còn: <strong style="color: red;">X</strong></small>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- End: Logo And Search -->

                <!-- Start: Nav PC -->
                <div class="header-nav">
                    <ul class="header-nav-list">
                        <li class="header-nav-item"><a class="header-nav-link" href="#">Giới thiệu</a></li>
                        <li class="header-nav-item"><a class="header-nav-link" href="<c:url value="/tour/listTour.do"/>">Tour</a></li>
                        <li class="header-nav-item"><a class="header-nav-link" href="#">Liên hệ</a></li>
                        <li class="header-nav-item"><a class="header-nav-link" href="<c:url value="/account/login.do"/>">Đăng nhập</a></li>
                    </ul>
                </div>
                <!-- End: Nav PC -->
            </div>
        </div>
    </div>
    <!-- End: Header -->
    <script>
        //FUNCTION THÊM VÀO LIST SUGGESTION
        const list = [];
        var tourListJson = ${searchList};
        let i = 0;
        for (var item in tourListJson) {
            list.push({
                id: tourListJson[item].id,
                name: tourListJson[item].name
            })
            i++;
        }

        // FUNCTION LƯU DỮ LIỆU VÀO SUGGESTION
        var searchInput = document.getElementById('searchInput');
        var suggestionsList = document.getElementById('suggestionsList');
        var formSubmit = document.getElementById('formSubmit');

        // LƯU DỮ LIỆU VÀO MẢNG SUGGESION
        var suggestionsData = [];
        list.map(item => {
            suggestionsData.push(item.name);
        })

        // FUNCTION DISPLAY POPUP GỢI Ý
        function displaySuggestions(suggestions) {
            suggestionsList.innerHTML = '';
            suggestions.forEach(function (suggestion) {
                var li = document.createElement('li');
                li.textContent = suggestion;
                li.addEventListener('click', function () {
                    searchInput.value = suggestion;
                    createInputWithValue(searchInput.value);
                    suggestionsList.innerHTML = '';
                });
                suggestionsList.appendChild(li);
            });
        }

        // FUNCTION HANDLE KHI INPUT ONCHANGE
        function handleSearchInput() {
            var searchValue = searchInput.value.toLowerCase();
            console.log(searchValue);
            var matchedSuggestions = suggestionsData.filter(function (suggestion) {
                return suggestion.toLowerCase().includes(searchValue);
            });
            if (searchValue.trim() === '') {
                suggestionsList.innerHTML = ''; // Remove <li> elements when search input is empty
            } else {
                displaySuggestions(matchedSuggestions);
            }
        }

        //LẮNG NGHE SỰ KIỆN INPUT
        searchInput.addEventListener('input', handleSearchInput);
        
        //HANDLE TẠO THẺ INPUT
        function createInputWithValue(input) {
            var tourId;
            console.log(input);
            list.map(item => {
                if (item.name.toLowerCase() == input.toLowerCase()) {
                    console.log("ID: ", item.id, " Name: ", item.name);
                    tourId = item.id;
                }
            })
            // Create the input element
            var input = document.createElement('input');
            input.type = 'hidden';
            input.value = tourId;
            input.name = 'tourID'
            
            // Append the input element to a container or the document body
            var formSubmit = document.getElementById('formSubmit'); // Replace 'container' with the ID of your container element
            formSubmit.appendChild(input);
          }
    </script>
</body>
</html>
