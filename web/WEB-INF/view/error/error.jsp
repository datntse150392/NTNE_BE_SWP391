<%-- 
    Document   : error
    Created on : Feb 27, 2023, 7:03:52 AM
    Author     : nguyenthanhdat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Link CSS !-->
        <link rel="stylesheet" href="<c:url value="/CSS_MAIN/contentLayout/error_layout/style.css" />" type="text/css"/>
       
        <title>Error Page</title>
    </head>
    <body>
    <body>
        <div id="svgContainer" style="text-align: center">
            <img style="width: 800px; height: 800px" src="<c:url value="https://static.vecteezy.com/system/resources/previews/003/393/235/original/error-404-with-the-cute-floppy-disk-mascot-free-vector.jpg" />" alt="alt"/>
        </div>
        <script src="<c:url value="/Layout/main_layout/error_layout/js/error.js"/>"></script>
    </body>
</html>
