<%-- 
    Document   : history
    Created on : Jun 5, 2023, 8:06:44 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>History Booking Tour - Nha Trang Nature Elite</title>
               

        <!-- Link FontAwesome CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
        <meta property="og:locale" content="vi_VN" />
        <link href="<c:url value="/assets/css/History/styles.css"/>" type="text/css" rel="stylesheet" />
        <link href="<c:url value="/assets/css/HomePageCSS/bootstrap1.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/plugins.css"/>" rel="stylesheet" type="text/css">
         
    </head>

    <body>
        <div class="container">
            <div class="row py-4 flex-md-row flex-column-reverse" style="margin-top: 7rem;">
                <div class="col-md-8 col-12 left">
                    <section>
                        <div class="contact-info p-4 mb-4">
                            <div class="heading">
                                <h5 class="fw-bold tieude">THÔNG TIN LIÊN LẠC</h5>
                            </div>

                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <span class="label text-secondary p-0">Họ tên</span>
                                    <p class="info">${bill.getCusName()}</p>
                                </div>

                                <div class="col-md-6 col-12">
                                    <span class="label text-secondary p-0">Email</span>
                                    <p class="info">${bill.getCusMail()}</p>
                                </div>

                                <div class="col-md-6 col-12">
                                    <span class="label text-secondary p-0">Địa chỉ</span>
                                    <p class="info">${bill.getCusAddress()}</p>
                                </div>

                                <div class="col-md-3 col-6">
                                    <span class="label text-secondary p-0">Di động</span>
                                    <p class="info">${bill.getCusPhone()}</p>
                                </div>

                                <div class="col-md-3 col-6">
                                    <span class="label text-secondary p-0">Số khách</span>
                                    <p class="info">${bill.getNumberAdult()} người lớn / ${bill.getNumberChild()} trẻ em</p>
                                </div>

                                <div class="col-12">
                                    <span class="label text-secondary p-0">Ghi chú</span>
                                    <p class="info">
                                        <c:if test="${bill.getRequirement() != null}">
                                            ${bill.getRequirement()}
                                        </c:if>
                                        <c:if test="${bill.getRequirement() == null}">
                                            Booking từ Nha Trang Nature Elite
                                        </c:if>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="booking-detail p-4 mb-4">
                            <div class="heading">
                                <h5 class="fw-bold tieude">CHI TIẾT BOOKING</h5>
                            </div>

                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Số booking</div>
                                <div class="col-md-9 col-12 text">
                                    <span class="textPrimary fw-bold">${bill.getBookID()}</span>
                                    (Quý khách vui lòng nhớ số booking để thuận tiện cho các giao
                                    dịch sau này)
                                </div>
                            </div>

                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Trị giá booking</div>
                                <div class="col-md-9 col-12 text"><fmt:formatNumber value="${bill.getTotalPrice()}" pattern="###,### VNĐ" /></div>
                            </div>

                            <c:if test="${bill.getPaymentMethod().equals('VNPAY')}">
                                <div class="row item">
                                    <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Số tiền đã thanh toán</div>
                                    <div class="col-md-9 col-12 text"><fmt:formatNumber value="${bill.getTotalPrice()}" pattern="###,### VNĐ" /></div>
                                </div>

                                <div class="row item">
                                    <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Số tiền còn lại</div>
                                    <div class="col-md-9 col-12 text"><fmt:formatNumber value="0" pattern="###,### VNĐ" /></div>
                                </div>
                            </c:if>
                            <c:if test="${!bill.getPaymentMethod().equals('VNPAY')}">
                                <div class="row item">
                                    <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Số tiền đã thanh toán</div>
                                    <div class="col-md-9 col-12 text"><fmt:formatNumber value="0" pattern="###,### VNĐ" /></div>
                                </div>

                                <div class="row item">
                                    <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Số tiền còn lại</div>
                                    <div class="col-md-9 col-12 text"><fmt:formatNumber value="${bill.getTotalPrice()}" pattern="###,### VNĐ" /></div>
                                </div>
                            </c:if>


                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Ngày đăng ký</div>
                                <div class="col-md-9 col-12 text">${bill.getDateBook()}</div>
                            </div>

                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Hình thức thanh toán</div>
                                <div class="col-md-9 col-12 text">
                                    ${bill.getPaymentMethod()}<br />
                                </div>
                            </div>

                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Tình trạng</div>
                                <div class="col-md-9 col-12 text">
                                    ${bill.getReason()}
                                </div>
                            </div>

                            <div class="row item">
                                <div class="col-md-3 col-12 label text-secondary ps-2 text-left">Thời hạn thanh toán</div>
                                <div class="col-md-9 col-12 text">
                                    <span class="textPrimary fw-bold">${bill.getExpireDate()}</span>
                                    (Theo giờ Việt Nam. Booking sẽ tự động hủy nếu quá thời hạn
                                    thanh toán trên)
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-md-4 col-12 right">
                    <div class="group-checkout">
                        <div class="heading">
                            <h5 class="fw-bold tieude">PHIẾU XÁC NHẬN BOOKING</h5>
                        </div>

                        <div class="product">
                            <div class="product-image">
                                <a href="#">
                                    <img
                                        src="${bill.getThumbnail()}"
                                        class="img-fluid"
                                        alt="image"
                                        />
                                </a>
                            </div>

                            <div class="product-content">
                                <p class="title">${bill.getTripName()}</p>
                                <span>
                                    Số booking:
                                    <span class="textPrimary fw-bold">${bill.getBookID()}</span>
                                </span>
                            </div>
                        </div>

                        <div class="detail">
                            <div class="row item">
                                <div class="col-4 fw-bold titleLeft">Mã tour</div>
                                <div class="col-8 text-end">${bill.getTripCode()}</div>
                            </div>
                            <div class="row item">
                                <div class="col-4 fw-bold titleLeft">Ngày đi</div>
                                <div class="col-8 text-end">${bill.getDepart_time()}</div>
                            </div>

                            <div class="row item">
                                <div class="col-4 fw-bold titleLeft">Địa điểm</div>
                                <div class="col-8 text-end">${bill.getTripLocation()}</div>
                            </div>
                        </div>

                        <div class="qr-code">
                            <div class="image">
                                <div class="wrapper">
                                    <img
                                        src="https://chart.googleapis.com/chart?chs=300x300&amp;cht=qr&amp;chl=https://travel.com.vn/du-lich/track-booking-no-230513895577/tra-cuu-booking.aspx?utm_source=BookingSearch%26utm_medium=referral%26utm_campaign=qrcode&amp;choe=UTF-8"
                                        />
                                </div>
                            </div>

                            <div>
                                <p>
                                    Để xem thông tin chương trình tour mới nhất Quý khách có thể
                                    dùng điện thoại để quét mã QR bên cạnh để truy cập vào
                                    website.
                                </p>
                                <p>
                                    Để cài phần mềm quét mã QR Code quý khách có thể tìm trong kho
                                    ứng dụng của điện thoại với từ khóa sau: QRCode Scanner,
                                    QRCode Reader,..
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Import JS Slider -->
<script src="<c:url value="/assets/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/assets/js/bootstrap.min.js"/>" type="text/javascript"></script>
</body>
</html>