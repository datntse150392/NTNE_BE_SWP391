<%-- 
    Document   : GoToList
    Created on : Jun 13, 2023, 6:55:07 PM
    Author     : baoit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="home/booked_list.do">
            <input type="hidden" name="index" value="1"/>
            <button type="sumit">Go To List</button>
        </form>
</body>
</html>
