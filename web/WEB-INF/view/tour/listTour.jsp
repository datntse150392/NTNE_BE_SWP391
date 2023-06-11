<%-- 
    Document   : listTour
    Created on : Jun 5, 2023, 1:44:27 AM
    Author     : thuyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<fmt:setLocale value="vi_VN"/>
<html lang="en">
    <body>
        <div class="meta-description">
            <div class="container">
                <div class="meta-container">
                    <p>Những Tour du lịch Nha Trang 1 ngày [Cập Nhật 2023] bên dưới chính là câu trả lời cho những ai đang phân vân: Nếu chỉ được ở lại Nha Trang 1 ngày thì mình sẽ đi đâu để có thể ngắm được một phần cảnh đẹp nơi đây. Đội ngũ công ty lữ hành quốc tế Nha Trang Nature Elite luôn sẵn sàng hỗ trợ tư vấn cho quý khách để quý khách có thể chọn được Tour ưng ý cho gia đình mình dưới hình thức ghép đoàn hoặc đi riêng.</p>

                </div>
            </div>
        </div>
        <section>
            <div class="category-service">
                <div class="container">
                    <div class="row tour-list">
                        <c:if test="${list != null}">
                            <c:forEach var="tour" items="${list}" varStatus="counter">
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rest">
                                    <div class="tour-item">
                                        <figure class="thumb">
                                            <a href="#" class="lazy-container">
                                                <img class="lazy" src=${tour.getValue().getThumbnail()}>
                                            </a>
                                            <span class="sale">hot</span>
                                        </figure>
                                        <div class="content">
                                            <a href="#"><h2 class="tour-name">${tour.getValue().getName()}</h2></a>
                                            <div class="place">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <span class="text">Điểm đến: ${tour.getValue().getLocation()}</span>
                                            </div>
                                            <div class="price">
                                                <p class="old-price"><del>${tour.getValue().getPriceAdult() - 100000} VND</del></p>
                                                <p class="new-price">${tour.getValue().getPriceAdult()} VND <span>/người lớn</span></p>
                                                <p class="new-price">${tour.getValue().getPriceChild()} VND <span>/trẻ em</span></p>
                                            </div>
                                            <div class="other">
                                                <p class="timer">Khởi hành hằng ngày</p>
                                                <p class="rating"><i class="fas fa-star"></i>Số sao<span class="counter">(Tổng số đánh giá)</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>

                    <div class="pages">
                        <nav class="pager-container">
                            <ul class="pagination justify-content-center">
                                <li class="page-item active"><span>1</span></li>
                                <li class="page-item"><a href="#">2</a></li>
                                <li class="page-item"><a href="#" rel="next"><i class="fas fa-angle-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>
        </section>
    </body>
</html>