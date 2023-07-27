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
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Import CSS-->
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">     
        <link href="<c:url value="/assets/css/header_footer.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">


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
                    <form action="<c:url value="/tour/list.do"/>" id="formSubmit" style="width: 100%">
                        <div class="header-search">
                            <div class="header-search-inputs">
                                <input onChange="handleSearchInput()" type="text" value="${search}" placeholder="Tìm kiếm" id="searchInput" name="search" autocomplete="off" class="header-search-input">
                                <ul id="suggestionsList"></ul>
                            </div>
                            <div class="header-search-submit">
                                <button type="submit" class="header-search-submit-btn">
                                    <span class="fas fa-search header-search-submit-icon"></span>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- End: Logo And Search -->

                    <!-- Start: Nav PC -->
                    <div class="header-nav px-5">
                        <ul class="header-nav-list">
                            <li class="header-nav-item">
                                <a class="header-nav-link" href="<c:url value="/tour/findBooked.do"/>">
                                    <p class="mb-0">Tìm Booking</p>
                                </a>
                            </li>
                            <li class="header-nav-item">
                                <a class="header-nav-link" href="<c:url value="/tour/about.do"/>">
                                    <p class="mb-0">Giới thiệu</p>
                                </a>
                            </li>
                            <li class="header-nav-item">
                                <a class="header-nav-link" href="<c:url value="/tour/list.do"/>">
                                    <p class="mb-0">Tour</p>
                                </a>
                            </li>
                            <li class="header-nav-item">
                                <a class="header-nav-link" href="<c:url value="/tour/contact.do"/>">
                                    <p class="mb-0">Liên hệ</p>
                                </a>
                            </li>
                            <c:if test="${person == null}">
                                <li class="header-nav-item">
                                    <a class="header-nav-link" href="<c:url value="/account/login1.do"/>">
                                        <p class="mb-0">Đăng nhập</p>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${person != null}">
                                <div class="dropdown">
                                    <img class=" img-thumbnail rounded-circle rounded-sm border-dark" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="${sessionScope.person.getLinkImg()}" />
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="<c:url value="/account/userprofile.do"/>">Tài khoản</a>
                                        <a class="dropdown-item" href="<c:url value="/account/logOut.do"/>">Đăng xuất</a>
                                    </div>
                                </div>
                            </c:if>
                        </ul>
                    </div>
                    <!-- End: Nav PC -->
                </div>
            </div>
        </div>
        <!-- End: Header -->
        <script>
            //        var exists = false;

            //FUNCTION THÊM VÀO LIST SUGGESTION
            const list = [];
            var tourListJson = ${searchList};
            if (tourListJson) {
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
                //        function createInputWithValue(input) {
                //            if(exists) {
                //               var tourID = document.querySelector("#tourID");
                //               tourID.remove();
                //               exists = false;
                //            }
                //            var tourId;
                //            console.log(input);
                //            list.map(item => {
                //                if (item.name.toLowerCase() == input.toLowerCase()) {
                //                    console.log("ID: ", item.id, " Name: ", item.name);
                //                    tourId = item.id;
                //                }
                //            })
                //            // Create the input element
                //            var input = document.createElement('input');
                //            input.type = 'hidden';
                //            input.value = tourId;
                //            input.name = 'tourID';
                //            input.id = 'tourID';
                //            
                //            var formSubmit = document.getElementById('formSubmit');
                //                formSubmit.appendChild(input);
                //                exists = true;
                //            }
            }
        </script>
    </body>
</html>
