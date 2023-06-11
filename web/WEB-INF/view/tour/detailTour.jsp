<%-- 
    Document   : detailTour
    Created on : Jun 5, 2023, 1:23:32 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!--<link rel="stylesheet" href="../assets/css/DetailTour/styles.css" />-->
        <link rel="stylesheet" href=<c:url value="assets/css/DetailTour/styles.css"/>>

        <!-- Font  -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Chi tiết TOUR</title>
    </head>

    <body>
        <div class="warpped">
<!--            <header>
                <div class="logo">
                    <a href="../index.jsp">
                        <img
                            src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2Flogo.png?alt=media&token=2b706eb6-a8dd-488b-a807-bd03f3c56ad4&_gl=1*16vwv8i*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NTU1MTgwMS4yMy4xLjE2ODU1NTM1NDkuMC4wLjA."
                            alt="Trang chủ NhaTrangNatureElite"
                            width="220"
                            height="62"
                            />
                    </a>
                </div>
                 <div class="search-bar">
                      <form method="get" action="">
                          <input type="text" name="" class="form-control" placeholder="Tìm kiếm bất cứ thứ gì bạn muốn..." id="">
                          <i class="fas fa-search"></i>
                      </form>
                  </div> 

                <nav class="nav-menu">
                    <ul class="main-menu">
                        <li class="menu-item"><a href="#">Giới thiệu</a></li>
                        <li class="menu-item"><a href="#">Tour</a></li>
                        <li class="menu-item"><a href="#">Blogs</a></li>
                        <li class="menu-item"><a href="#">Liên hệ</a></li>
                    </ul>
                </nav>

                <div class="action">
                    <button class="login-btn">
                        <a href="#">Đăng nhập</a>
                    </button>
                </div>
            </header>-->
            <div class="container">
                <div class="header"></div>
                <div class="content">
                    <h1 class="header-title" style="font-size: 40px; color: red">VINPEARL NHA TRANG</h1>
                    <span
                        >"Đặt ngay tour du lịch để khám phá những điểm đến tuyệt vời và tạo
                        ra những kỷ niệm không thể quên."</span
                    >
                    <div class="layout">
                        <!-- Layout 1 -->
                        <div class="layout-item">
                            <video
                                class="layout-video"
                                src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/VINPEARL%20NHA%20TRANG%2FClip%20su%20kien%20Vinpeal%20Nha%20Trang%20-%20final%2045s.mp4?alt=media&token=b8c753a5-4640-4e0c-8b3e-0052798049c4&_gl=1*14gbuo5*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NjE4NTY5Ni40NS4xLjE2ODYxODU3MTUuMC4wLjA."
                                controls
                                ></video>
                        </div>

                        <!-- Layout 2 -->
                        <div class="layout-item">
                            <img
                                src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/VINPEARL%20NHA%20TRANG%2Fban-do-khu-vui-choi-vinpearl-nha-trang-1.jpg?alt=media&token=7439c39f-9bf4-4131-8d62-990021e7dabb&_gl=1*1ut87bu*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NTU1MTgwMS4yMy4xLjE2ODU1NTY2NjcuMC4wLjA."
                                alt=""
                                class="layout-image"
                                />
                        </div>

                        <!-- Layout 3 -->
                        <div class="layout-item">
                            <img
                                src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/VINPEARL%20NHA%20TRANG%2Fban-do-khu-vui-choi-vinpearl-nha-trang-3.jpg?alt=media&token=25357ecb-10b0-4888-9d25-c62be70006ba&_gl=1*n2z5dk*_ga*MTU1OTk0NzM3OC4xNjgzNTA1MDE2*_ga_CW55HF8NVT*MTY4NTU1MTgwMS4yMy4xLjE2ODU1NTY2OTEuMC4wLjA."
                                alt=""
                                class="layout-image"
                                />
                        </div>

                        <!-- Layout 4 -->
                        <div class="layout-item">
                            <img
                                src="https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60
                                alt="" class="layout-image" />
                        </div>

                        <!-- Layout 5 -->
                        <div class="layout-item">
                            <img
                                src="https://images.unsplash.com/photo-1597811209390-e674b6a68775?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHZpbnBlYXJsfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
                                alt=""
                                class="layout-image"
                                />
                        </div>
                    </div>
                    <div class="time-line">
                        <h2>Lịch trình di chuyển</h2>
                    </div>
                    <ul class="destination">
                        <li class="destination-item">
                            <p class="duration">
                                <strong>8:00 - 08:30</strong>
                            </p>
                            <p class="detail">
                                Xe và hướng dẫn viên đón khách tại điểm hẹn ở khách sạn. Đoàn di
                                chuyển ra khu quần thể
                                <strong style="color: red">Vinpearl</strong>
                                và bắt đầu chuyến tham quan của mình.
                            </p>
                        </li>
                        <li class="destination-item">
                            <p class="duration">
                                <strong>08:30 - 11:30</strong>
                            </p>
                            <p class="detail">
                                Phá đảo
                                <strong style="color: red">VinWonders Nha Trang</strong> - công
                                viên giải trí của những kỷ lục. Tại đây khách du lịch sẽ được
                                tham quan những địa điểm đặc sắc và được trải nghiệm những trò
                                chơi cảm giác mạnh thú vị:
                                <br />
                                + Check-in đẹp "ảo diệu" ở
                                <strong style="color: red"
                                        >The World Garden (Đồi Vạn Hoa)</strong
                                >
                                <br />
                                + Kết bạn cùng động vật tại
                                <strong style="color: red">Vườn Quý Vương </strong>
                                <br />
                                + Tận hưởng cảm giác sảng khoái, thú vị, đầy mạo hiệm tại
                                <strong style="color: red"
                                        >Khu trò chơi cảm giác mạnh ngoài trời </strong
                                >. Tại đây quý khách có thể được lựa chọn trải nghiệm nhiều trò
                                chơi như: Tháp rơi tự do, Đu quay cảm giác mạnh, Tàu lượn cao
                                tốc.
                            </p>
                        </li>
                        <li class="destination-item">
                            <p class="duration">
                                <strong>11:30 - 14:00</strong>
                            </p>
                            <p class="detail">
                                Khám phá trung tâm giải trí và
                                <strong style="color: red">khu ẩm thực Imperial Club </strong> .
                                Ở đây, bạn không chỉ được tận hưởng những món ăn Trung Hoa được
                                chế biến cầu kỳ bởi các đầu bếp trứ danh, trong không gian kiến
                                trúc hoàng gia tráng lệ, mà còn được thưởng thức những món hải
                                sản thơm ngon, tròn vị biển và lắng nghe bản hòa tấu êm dịu của
                                đại dương rì rào bên tai.
                            </p>
                        </li>
                        <li class="destination-item">
                            <p class="duration">
                                <strong>14:00 - 16:00 </strong>
                            </p>
                            <p class="detail">
                                Thử thách lặn tại bãi lặn
                                <strong style="color: red">Vinpearl Diving Club</strong>. Đây là
                                địa điểm lý tưởng để bạn khám phá vẻ đẹp bất tận của đại dương
                                và tham gia vào các trò thể thao dưới nước như: lặn biển ngắm
                                những rạn san hô đầy màu sắc, chèo thuyền kayak, quay phim, chụp
                                ảnh dưới đại dương…
                            </p>
                        </li>
                        <li class="destination-item">
                            <p class="duration">
                                <strong>16:00 - 18:00</strong>
                            </p>
                            <p class="detail">
                                Thư giãn tại <strong style="color: red">Wave Bar </strong> - nơi
                                ngắm hoàng hôn đẹp nhất của Vịnh biển Nha Trang. Đến đây, bạn
                                vừa có thể tận hưởng những làn gió mát lạnh của biển khơi, vừa
                                thưởng thức ly cocktail ngon miệng đẹp mắt và bắt trọn khoảnh
                                khắc quả cầu lửa chìm dần xuống biển, quả thực là mội trải
                                nghiệm không thể nào tuyệt vời hơn.
                            </p>
                        </li>
                        <li class="destination-item">
                            <p class="duration">
                                <strong>18:00</strong>
                            </p>
                            <p class="detail">
                                Xe điện chở khách về khách sạn thu dọn đồ đạc và rời Vinpearl.
                                HDV chào tạm biệt quý khách và trả về điểm hẹn.
                            </p>
                        </li>
                    </ul>


                    <!-- Start Box Booking  -->
                    <div class="booking-tour">
                        <div class="container">
                            <h1>Các gói <b class="title">Tour</b></h1>
                            <p>
                                Vui lòng chọn một trong các gói giá (nhấp vào
                                <strong>“Chọn”</strong> để xem đầy đủ gói).
                            </p>
                            <div class="tourpackage-body">
                                <div class="tourpackage-body-detail">
                                    <h3 class="tourpackage-body-detail-title">VINPEARL NHA TRANG [ Gói cơ bản ] 750.000 VNĐ</h3>
                                    <form action="#">
                                        <!-- form handle button book tourpackages -->
                                        <button class="btn-booking-tour"">
                                            <i class="fa-solid fa-o"></i> CHỌN
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="tourpackage-body">
                                <div class="tourpackage-body-detail">
                                    <h3 class="tourpackage-body-detail-title">VINPEARL NHA TRANG [ Gói VIP ] 850.000 VNĐ</h3>
                                    <form action="#">
                                        <!-- form handle button book tourpackages -->
                                        <button class="btn-booking-tour">
                                            <i class="fa-solid fa-o"></i> CHỌN
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End Box Booking-->

                    <!-- START MAP BOX -->
                    <div class="map-tour">
                        <div class="map-header">
                            <h1 class="map-title">Thông tin địa điểm</h1>
                        </div>
                        <div class="map-content">
                            <div class="map-location">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8942.069828394564!2d109.23393489419314!3d12.219054958045032!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3170677575316031%3A0xd2b5f697e03e7b37!2sVinpearl%20nha%20trang!5e0!3m2!1svi!2s!4v1685178779540!5m2!1svi!2s"
                                    ></iframe>
                            </div>
                        </div>
                    </div>
                    <!-- END MAP BOX -->
                </div>
                <!-- Start Booking Tour -->
                <!--                <div class="box-hotline">
                                    <div class="box-content">
                                        <span class="price-origin">800.000đ</span>
                                        <h1 class="price-discount">700.000đ /người lớn</h1>
                                        <h1 class="price">500.000đ /trẻ em</h1>
                                        <span class="note">
                                            Giá trên là giá Tour trọn gói, không bao gồm chi phí cá nhân phát
                                            sinh như (ăn, chơi riêng).
                                        </span>
                                    </div>
                                    <div class="btn">
                                        <button class="contact_btn">Liên hệ tư vấn</button>
                                        <button class="book_btn">
                                            <a style="text-decoration: none; color: black" href="<c:url value="/view/booking.jsp"/>" alt="Booking Tour">Đặt Tour</a>
                                        </button>
                                    </div>
                                </div>-->
                <!-- End Booking Tour -->
            </div>

            <!-- Start Feedback Box -->
            <div class="box-feedback">
                <h3 class="feedback-title">
                    2 Khách trên Nha Trang Nature Elite chia sẻ về trải nghiệm của mình:
                </h3>

                <!-- Start FB content -->
                <div class="feedback-content">
                    <div class="feedback-content-avt">
                        <img
                            src="https://www.vinamilk.com.vn/sua-bot-nguoi-lon-vinamilk/wp-content/themes/suabotnguoilon/tpl/assets/img/profile/avt-default.jpg"
                            alt=""
                            width="50px"
                            />
                    </div>
                    <div class="feedback-content-detail">
                        <div class="feedback-content-detail-top">
                            <h3>Nguyễn Thành Đạt</h3>
                            <p>27/05/2023</p>
                        </div>
                        <div class="feedback-content-detail-bottom">
                            <p>
                                Hướng dẫn viên chuyên nghiệp, nhiệt tình hướng dẫn và hỗ trợ
                                thông tin trong và ngoài tour. Điểm trừ là sắp xếp khách hơi lộn
                                xộn, thay đổi hdv liên tục nhưng có thể thông cảm do quá đông.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="feedback-content">
                    <div class="feedback-content-avt">
                        <img
                            src="https://www.vinamilk.com.vn/sua-bot-nguoi-lon-vinamilk/wp-content/themes/suabotnguoilon/tpl/assets/img/profile/avt-default.jpg"
                            alt=""
                            width="50px"
                            />
                    </div>
                    <div class="feedback-content-detail">
                        <div class="feedback-content-detail-top">
                            <h3>Trí Bùi</h3>
                            <p>26/05/2023</p>
                        </div>
                        <div class="feedback-content-detail-bottom">
                            <p>
                                Tour đi vui, đảo Hòn tằm đẹp, nhưng thời gian ngắn ở điểm này,
                                cần thêm thời gian để khám phá. Bửa trưa cho vé Vip 3 đảo khá
                                đơn giản, không để lại nhiều ấn tượng. Tạm ổn trong tầm giá.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- End FB content -->
            </div>
            <!-- End Feedback Box -->
        </div>
            <script src=<c:url value="assets/js/DetailTour/detailTour.js"/>></script>
    </body>
</html>
