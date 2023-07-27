<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="./assets/imgs/five-icon.png" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/TourListCSS/style.css"/>" type="text/css" rel="stylesheet">
        <link href="<c:url value="/assets/css/TourListCSS/plugins.css"/>" type="text/css" rel="stylesheet">
        
        <title>Tour One-day Nha Trang</title>
    </head>
    <body>
        <!-- End: Header -->
        <!-- ======================= Start Page Title ===================== -->
        <div class="page-title image-title" style="background-image:url(https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Fbg-cate.jpg?alt=media&token=ac753111-cf28-4ec6-beae-da92b0b6c05d&_gl=1*1x16595*_ga*MTEyNjY4OTYyMi4xNjgzNzM0MDMx*_ga_CW55HF8NVT*MTY4NjQwNTU2My4xNi4xLjE2ODY0MDU1NzIuMC4wLjA.);">
            <div class="container">
                <div class="page-title-wrap">
                    <h2>TOUR DU LỊCH NHA TRANG 1 NGÀY</h2>
                </div>
            </div>
        </div>
        <!-- ======================= End Page Title ===================== -->
        <section class="gray-bg">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<c:url value="/tour/homePage.do"/>">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Tour 1 ngày</li>
                    </ol>
                </nav>
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <div class="tr-single-box">
                            <div class="tr-single-header">
                                <h4>Filter</h4>
                                <span class="pull-right clickables" data-toggle="collapse" data-target="#filter"><i class="ti-align-left"></i></span>
                            </div>
                            <div id="filter" class="collapese in">
                                <!-- Input Box Search -->
                                <div class="tr-single-body">
                                    
                                </div>
                       
                                
                                <!-- Animinities -->
                                <div class="tr-inner-single-box">
                                    <div class="tr-single-header">
                                        <h4>Mức giá</h4>

                                    </div>
                                    <div class="tr-single-body">
                                        <ul class="side-list-check">
                                            <li>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="a1">
                                                    <label for="a1"></label>
                                                </span>
                                                > 1,500,000 VND
                                            </li>
                                            <li>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="b2">
                                                    <label for="b2"></label>
                                                </span>
                                                1,000,000 VND - 1,499,000 VND
                                            </li>
                                            <li>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="c3">
                                                    <label for="c3"></label>
                                                </span>
                                                700,000 VND - 999,000 VND
                                            </li>
                                            <li>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="d4">
                                                    <label for="d4"></label>
                                                </span>
                                                500,000 VND - 699,000 VND
                                            </li>
                                            <li>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="e5">
                                                    <label for="e5"></label>
                                                </span>
                                                < 500,000 VND
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 col-sm-12">

                        <div class="row mrg-0">
                            <div class="tr-single-box short-box">
                                <div class="col-sm-3 hidden-xs align-self-center" style="padding-top: 5px">
                                    <h4>Sắp xếp</h4>
                                </div>

                                <div class="col-sm-9 text-right">

                                    <form action="<c:url value="/tour/list.do"/>" method="get" style="margin-top: -16px">
                                        <input type="hidden" name="search" value="${search}"/>
                                        <input type="hidden" name="date" id="date" value="${date}"/>
                                        <input type="hidden" name="sort_option" id="sort_option" value="${sort_option}"/>
                                        <input type="hidden" name="a1" value="${a1}"/>
                                        <input type="hidden" name="b2" value="${b2}"/>
                                        <input type="hidden" name="c3" value="${c3}"/>
                                        <input type="hidden" name="d4" value="${d4}"/>
                                        <input type="hidden" name="e5" value="${e5}"/>
                                        <div class="btn-group mr-lg-2">
                                            <button id="displayDate" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Sắp xếp theo ngày
                                            </button>
                                            <div class="dropdown-menu pull-right animated flipInX">
                                                <a onClick="handleSelectDate('Tất cả các ngày')">Tất cả các ngày</a>
                                                <input type="date" onChange="handleSelectDateTime()" value="${date}" id="dateInput" >
                                            </div>
                                        </div>
                                            
                                        <div class="btn-group mr-lg-2">
                                            <button id="displaySortOption" value="" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Sắp xếp theo giá 
                                            </button>
                                            <button type="button" class="dropdown-menu pull-right animated flipInX">
                                                <!--Sort tăng dần-->
                                                <a onClick="{handleSelect('Giá tăng dần','asc')}">Giá tăng dần</a>
                                                <!--Sort giảm dần-->
                                                <a onClick="{handleSelect('Giá giảm dần','desc')}">Giá giảm dần</a>
                                                <!--Sort mặc định-->
                                                <a onClick="{handleSelect('Mặc định','normal')}">Mặc định</a>
                                            </button>
                                        </div>

                                        <div class="btn-group">
                                            <button type="submit" class="btn btn-default tooltips">
                                                <i class="fas fa-filter" style=" font-size: 20px; color: #333; padding-top:10px "></i>
                                            </button>
                                        </div>
                                    </form>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- /Row -->

                        <!-- Row -->
                        <div class="row">
                            <c:if test="${listTrip != null}">
                                <c:forEach var="tour" items="${listTrip}" varStatus="counter">
                                    <!-- Single Tour List -->
                                    <div class="col-lg-12 col-md-12">
                                        <article class="tour-box list-style">
                                            <div class="row">

                                                <div class="col-md-5 col-sm-5">
                                                    <div class="tour-box-image">
                                                        
                                                        <a href="<c:url value="/tour/detailTour.do?tourID=${tour.getTour_id()}&tripID=${tour.getId()}"/>">
                                                            <img src="${tour.getThumbnail()}" class="img-responsive tour-box-img" alt="">
                                                        </a>
                                                        
                                                        <div class="entry-bookmark">                                   
                                                            <a href="#"><i class="ti-bookmark"></i></a>
                                                        </div>
                                                        
                                                        <button class="book-btn" type="submit" value="" style="color: white">Đặt ngay</button>

                                                    </div>
                                                        
                                                </div>

                                                <div class="col-md-7 col-sm-7">	
                                                    <div class="inner-box">
                                                        <div class="box-inner-ellipsis">
                                                            <div style="margin: 0px; padding: 0px; border: 0px;">
                                                                <h3 class="entry-title">
                                                                    <a href="<c:url value="/tour/detailTour.do?tourID=${tour.getTour_id()}&tripID=${tour.getId()}"/>">${tour.getName()}</a>
                                                                </h3>
                                                                <div class="entry-content">
                                                                    <p>Địa điểm: ${tour.getLocation()}</p>
                                                                    <span class="price"><strong class="theme-cl"><fmt:formatNumber value="${tour.getPriceAdult()}" pattern="###,### VNĐ" /></strong> /người lớn</span>
                                                                    <span class="price"><strong class="theme-cl"><fmt:formatNumber value="${tour.getPriceChild()}" pattern="###,### VNĐ" /></strong> /trẻ em</span>                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </article>
                                    </div>
                                </c:forEach>
                            </c:if>
                            <!-- /Row -->
                            <div class="row paginationWrapper">
                                <ul class="pagination">
                                    <c:if test="${index != 1}">
                                        <li class="page-item">
                                            <a class="page-link"
                                               href="<c:url value="/tour/list.do?index=${index - 1}&sort_option=${sort_option}&search=${search}"/>"    
                                               aria-label="Previous">
                                                <span class="ti-arrow-left"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:forEach begin="1" end="${count}" var="i">
                                        <li class="page-item active">
                                            <a class="page-link"
                                               href="<c:url value="/tour/list.do?index=${i}&sort_option=${sort_option}&search=${search}"/>">${i}</a>
                                        </li>                  
                                    </c:forEach>
                                    <c:if test="${index < count}">
                                        <li class="page-item">
                                            <a class="page-link"
                                               href="<c:url value="/tour/list.do?index=${index + 1}&sort_option=${sort_option}&search=${search}"/>"
                                               aria-label="Next">
                                                <span class="ti-arrow-right"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>

                        </div>

                    </div>
                </div>
        </section>
        <script>
            var button = document.getElementById("displaySortOption");
            var button2 = document.getElementById("displayDate");
            var dateInput = document.getElementById("dateInput");
            var sort_option = document.getElementById("sort_option");
            var date = document.getElementById("date");
            var items = document.getElementsByClassName('tour-box-image');
            const handleSelect = (text,code) => {
                console.log("FUNCTION");
                console.log(text);
                button.innerHTML = text;
                sort_option.value = code;
            };
            const handleSelectDateTime = () => {
                button2.innerHTML = dateInput.value;
                date.value = dateInput.value;
            };
            const handleSelectDate = (text) => {
                button2.innerHTML = text;
                date.value = "";
            };
            for (var i = 5; i < items.length; i++) {
                var item = items[i];
                var thumbnail = item.querySelector('.tour-box-img');
                var button3 = item.querySelector('.book-btn');

                item.addEventListener('mouseenter', function() {
                    thumbnail.style.filter = 'blur(5px)';
                    button3.style.display = 'block';
                });

                item.addEventListener('mouseleave', function() {
                    thumbnail.style.filter = 'none';
                    button3.style.display = 'none';
                });
            }
            //Inject value of Muc gia to form
            var a1 = document.getElementById("a1");
            var b2 = document.getElementById("b2");
            var c3 = document.getElementById("c3");
            var d4 = document.getElementById("d4");
            var e5 = document.getElementById("e5");

            const inputA1 = document.querySelector('input[name="a1"]');
            const inputB2 = document.querySelector('input[name="b2"]');
            const inputC3 = document.querySelector('input[name="c3"]');
            const inputD4 = document.querySelector('input[name="d4"]');
            const inputE5 = document.querySelector('input[name="e5"]');

            a1.onclick = function () {
                if (a1.checked) {
                    inputA1.value = 1;
                }
                if (!b2.checked) {
                    inputB2.value = null;
                }
                if (!c3.checked) {
                    inputC3.value = null;
                }
                if (!d4.checked) {
                    inputD4.value = null;
                }
                if (!e5.checked) {
                    inputE5.value = null;
                }
                if (!a1.checked) {
                    inputA1.value = null;
                }
            };

            b2.onclick = function () {
                if (b2.checked) {
                    inputB2.value = 2;
                }
                if (!c3.checked) {
                    inputC3.value = null;
                }
                if (!d4.checked) {
                    inputD4.value = null;
                }
                if (!e5.checked) {
                    inputE5.value = null;
                }
                if (!a1.checked) {
                    inputA1.value = null;
                }
                if (!b2.checked) {
                    inputB2.value = null;
                }
            };

            c3.onclick = function () {
                if (c3.checked) {
                    inputC3.value = 3;
                }
                if (!d4.checked) {
                    inputD4.value = null;
                }
                if (!e5.checked) {
                    inputE5.value = null;
                }
                if (!a1.checked) {
                    inputA1.value = null;
                }
                if (!b2.checked) {
                    inputB2.value = null;
                }
                if (!c3.checked) {
                    inputC3.value = null;
                }
            };

            d4.onclick = function () {
                if (d4.checked) {
                    inputD4.value = 4;
                }
                if (!b2.checked) {
                    inputB2.value = null;
                }
                if (!c3.checked) {
                    inputC3.value = null;
                }
                if (!a1.checked) {
                    inputA1.value = null;
                }
                if (!e5.checked) {
                    inputE5.value = null;
                }
                if (!d4.checked) {
                    inputD4.value = null;
                }
            };

            e5.onclick = function () {
                if (e5.checked) {
                    inputE5.value = 5;
                }
                if (!a1.checked) {
                    inputA1.value = null;
                }
                if (!b2.checked) {
                    inputB2.value = null;
                }
                if (!c3.checked) {
                    inputC3.value = null;
                }
                if (!d4.checked) {
                    inputD4.value = null;
                }
                if (!e5.checked) {
                    inputE5.value = null;
                }
            };
        </script>
        <!--Import JS Slider -->
        <script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/homePageJS/slider/slider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/js/main.js"/>" type="text/javascript"></script>
    </body>
</html>