<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
    <body>
        <!----------------------------------------
                    HEADER PAGE HEAR!!!
        ----------------------------------------->
        <jsp:include page="/WEB-INF/view/tour/header.jsp" />
        
        <!----------------------------------------
                    BODY PAGE HEAR!!!
        ----------------------------------------->
                    
        <jsp:include page="/WEB-INF/view/${controller}/${action}.jsp" />
        
        <!----------------------------------------
                    FOOTER PAGE HEAR!!!
        ----------------------------------------->
       <jsp:include page="/WEB-INF/view/tour/footer.jsp" />
       
    </body>
</html>