<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
    <body
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
       <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "102516469574099");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v17.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
       
    </body>
</html>