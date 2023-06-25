<%-- 
    Document   : history
    Created on : Jun 5, 2023, 8:06:44 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>History Booking Tour - Nha Trang Nature Elite</title>
    <link rel="stylesheet" href="../assets/css/History/styles.css" />

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    <link
      as="style"
      onload='this.onload=null;this.rel="stylesheet"'
      href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&amp;display=swap"
      rel="stylesheet"
      type="text/css"
    />
    <noscript>
      <link
        rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700|Roboto+Slab:400,700&amp;subset=vietnamese&display=swap"
      />
    </noscript>
    <!-- Link FontAwesome CDN -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
    <meta property="og:locale" content="vi_VN" />
  </head>

  <body>
    <div class="container">
      <div class="row py-4 flex-md-row flex-column-reverse">
        <div class="col-md-8 col-12 left">
          <section>
            <div class="contact-info p-4 mb-4">
              <div class="heading">
                <h5 class="fw-bold tieude">THÔNG TIN LIÊN LẠC</h5>
              </div>

              <div class="row">
                <div class="col-12 col-md-6">
                  <span class="label">Họ tên</span>
                  <p class="info">NGUYỄN HUY KHẢI</p>
                </div>

                <div class="col-md-6 col-12">
                  <span class="label">Email</span>
                  <p class="info">nguyenhuykhai@gmail.com</p>
                </div>

                <div class="col-md-6 col-12">
                  <span class="label">Địa chỉ</span>
                  <p class="info">TP.HCM</p>
                </div>

                <div class="col-md-3 col-6">
                  <span class="label">Di động</span>
                  <p class="info">0903802888</p>
                </div>

                <div class="col-md-3 col-6">
                  <span class="label">Điện thoại</span>
                  <p class="info">0903802888</p>
                </div>

                <div class="col-md-3 col-12 d-none">
                  <span class="label">Số khách</span>
                  <p class="info">1 Người lớn</p>
                </div>

                <div class="col-12">
                  <span class="label">Ghi chú</span>
                  <p class="info">Booking từ NhaTrangNatureElite</p>
                </div>
              </div>
            </div>

            <div class="booking-detail p-4 mb-4">
              <div class="heading">
                <h5 class="fw-bold tieude">CHI TIẾT BOOKING</h5>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Số booking</div>
                <div class="col-md-9 col-12 text">
                  <span class="textPrimary fw-bold">1</span>
                  (Quý khách vui lòng nhớ số booking để thuận tiện cho các giao
                  dịch sau này)
                </div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Trị giá booking</div>
                <div class="col-md-9 col-12 text">1,190,000₫</div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Số tiền đã thanh toán</div>
                <div class="col-md-9 col-12 text">0₫</div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Số tiền còn lại</div>
                <div class="col-md-9 col-12 text">1,190,000₫</div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Ngày đăng ký</div>
                <div class="col-md-9 col-12 text">13/05/2023 21:39:21</div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Hình thức thanh toán</div>
                <div class="col-md-9 col-12 text">
                  Chuyển khoản ngân hàng<br />
                </div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Tình trạng</div>
                <div class="col-md-9 col-12 text">
                  Đang trong quá trình thanh toán
                </div>
              </div>

              <div class="row item">
                <div class="col-md-3 col-12 label">Thời hạn thanh toán</div>
                <div class="col-md-9 col-12 text">
                  <span class="textPrimary fw-bold">xx/xx/2023 00:00:00</span>
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
                    src="https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2FTrang%20ch%E1%BB%A7%2FTour%20list%2Ftour1.jpg?alt=media&token=0d2561fd-d2fb-4b37-9ea7-77aa2fec3ea6&_gl=1*18i0ymo*_ga*ODIxNzI4MDkuMTY4NDA3OTMxMQ..*_ga_CW55HF8NVT*MTY4NTg3NjY3NC4xMC4xLjE2ODU4NzcwMTYuMC4wLjA."
                    class="img-fluid"
                    alt="image"
                  />
                </a>
              </div>

              <div class="product-content">
                <p class="title">VINPEARL NHA TRANG</p>
                <span>
                  Số booking:
                  <span class="textPrimary fw-bold">1</span>
                </span>
              </div>
            </div>

            <div class="detail">
              <div class="row item">
                <div class="col-4 fw-bold titleLeft">Mã tour</div>
                <div class="col-8 text-end">NTNE</div>
              </div>
              <div class="row item">
                <div class="col-4 fw-bold titleLeft">Ngày đi</div>
                <div class="col-8 text-end">xx/xx/2023</div>
              </div>

              <div class="row item">
                <div class="col-4 fw-bold titleLeft">Ngày về</div>
                <div class="col-8 text-end">xx/xx/2023</div>
              </div>

              <div class="row item">
                <div class="col-4 fw-bold titleLeft">Khởi hành</div>
                <div class="col-8 text-end">Nha Trang</div>
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

      <div class="d-none d-lg-block">
        <div class="passenger-list p-4 mb-4">
          <div class="heading">
            <h5 class="fw-bold tieude">DANH SÁCH HÀNH KHÁCH</h5>
          </div>

          <table class="table booking-table">
            <thead>
              <tr class="fw-bold">
                <td>Họ tên</td>
                <td class="d-none">Giảm giá?</td>
                <td>Ngày sinh</td>
                <td>Giới tính</td>
                <td>Địa chỉ</td>
                <td>Độ tuổi</td>
                <td>Phòng đơn</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>NGUYỄN HUY KHẢI</td>
                <td class="d-none">Giảm giá?</td>
                <td>17/10/1999</td>
                <td>Nam</td>
                <td></td>
                <td>Người lớn</td>
                <td>Có</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="11" class="text-end">
                  <span>Tổng cộng:</span>
                  <span class="price textPrimary fw-bold">1,190,000₫</span>
                </td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <!-- <div class="d-none d-lg-block">
        <div class="passenger-list p-4 mb-4">
          <div class="heading">
            <h5 class="fw-bold">DANH SÁCH PHIẾU THU</h5>
          </div>

          <div id="divLoadShowBookingReceipt">
            <table class="table booking-table">
              <thead>
                <tr class="fw-bold">
                  <td>Số phiếu thu</td>
                  <td>Ngày nộp tiền</td>
                  <td>Người nộp tiền</td>
                  <td>Điện thoại</td>
                  <td>Địa chỉ</td>
                  <td>Trị giá</td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>MB12345</td>
                  <td>31/05/2023</td>
                  <td>NGUYỄN HUY KHẢI</td>
                  <td>0903.802.222</td>
                  <td>Hồ Chí Minh</td>
                  <td>3.000.000đ</td>
                </tr>
              </tbody>
            </table>
          </div> -->
        </div>
      </div>
    </div>
  </body>
</html>