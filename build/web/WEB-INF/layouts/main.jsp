<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="<c:url value="/assets/imgs/five-icon.png"/>" type="image/x-icon" sizes="30x30">
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" rel="stylesheet" type="text/css">         
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.carousel.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/slider/owl.theme.default.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/HomePageCSS/homepage_new.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/styles.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/assets/css/ListTour/header_footer.css"/>" rel="stylesheet" type="text/css">

        <title>Nha Trang Nature Elite</title>
    </head>
    
    <body>
        <!----------------------------------------
                    HEADER PAGE HEAR!!!
        ----------------------------------------->
        <jsp:include page="/WEB-INF/view/tour/header.jsp" />
        
        <!----------------------------------------
                    BODY PAGE HEAR!!!
        ----------------------------------------->
                    
        <jsp:include page="/WEB-INF/view/${controller}/${action}.jsp" />
        <%--<jsp:include page="/WEB-INF/view/account/login.jsp" />--%>
        
        <!----------------------------------------
                    FOOTER PAGE HEAR!!!
        ----------------------------------------->
       <jsp:include page="/WEB-INF/view/tour/footer.jsp" />


       <!--JS Slider -->
        <script src=<c:url value="assets/js/homePageJS/slider/jquery.min.js"/>></script>
        <script src=<c:url value="assets/js/homePageJS/slider/owl.carousel.js"/>></script>
        <script src=<c:url value="assets/js/homePageJS/slider/slider.js"/>></script>
        <script src=<c:url value="assets/js/homePageJS/main.js"/>></script>
    </body>
</html>