/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.AccountDAO;
import dal.Admin_Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.User;
import models.User_Account;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Form;
import models.Constants;
import models.UserGoogle;

/**
 *
 * @author baoit
 */
@WebServlet(name = "AccountController", urlPatterns = {"/account"})
public class AccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "login_handler":
                login_handler(request, response);
                break;
            case "login_google":
                //Lấy code của user để gửi lên google
                String code = request.getParameter("code");
                
                //Dùng code của google để retrieve autho key
                String accessCode = getToken(code);
                System.out.println("----------------------TEST-----------------");
                System.out.println(code);
                System.out.println(accessCode);
                //Lấy được user dựa trên autho key 
                UserGoogle ug = getUserInfo(accessCode);
                System.out.println(ug);
                break;
        }

    }

    protected void login_handler(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Lấy username password từ trog login.jsp
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //Gọi session để lưu user vào session       
        HttpSession session = request.getSession();

        //Gọi đối tượng AccountDAO va Admin_AccountDAO để sài phương thức
        //get_UserName_PassWord để lấy đối tượng user va admin
        AccountDAO userAcc = new AccountDAO();
        Admin_Account adminAcc = new Admin_Account();

        //get_UserName_PassWord để lấy đối tượng user va admin
        User_Account person = userAcc.get_UserName_PassWord(username, password);
        User_Account admin = adminAcc.get_UserName_PassWord(username, password);

        //Nếu p1 khác null thì lưu p1 vào session
        if (person != null) {
            //Gọi cookie để lưu username va password vào cookie 
            Cookie u = new Cookie("username", username);
            Cookie p = new Cookie("password", password);

            //set thoi gian cua cookie
            u.setMaxAge(60);
            p.setMaxAge(60);

            //Lưu cookie u và p lên trình duyệt
            response.addCookie(u);
            response.addCookie(p);

            session.setAttribute("person", person);
            response.sendRedirect(request.getContextPath() + "/Home.jsp");
        } else if (admin != null) {
            //Gọi cookie để lưu username va password vào cookie 
            Cookie u = new Cookie("username", username);
            Cookie p = new Cookie("password", password);

            //set thoi gian cua cookie
            u.setMaxAge(60);
            p.setMaxAge(60);

            //Lưu cookie u và p lên trình duyệt
            response.addCookie(u);
            response.addCookie(p);

            session.setAttribute("admin", admin);
            response.sendRedirect(request.getContextPath() + "/Home.jsp");
        } else {
            request.setAttribute("message", "Incorrect username or password");
           
//           response.sendRedirect(request.getContextPath() + "/login.jsp");
            request.getRequestDispatcher("/WEB-INF/view/account/Login.jsp").forward(request, response);
        }

    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Ta sẽ get cookie từ request 
        //Vì là trên server có thể có nhiều cookies nên khi lấy dữ liệu
        //Ta phải lấy 1 mảng các cookies
        Cookie Cookies[] = request.getCookies();

        //Ta tìm từng cookies và so sánh chúng 
        //để tìm cái ta cần
        for (Cookie Cooky : Cookies) {
            if (Cooky.getName().equals("username")) {
                request.setAttribute("username", Cooky.getValue());
            }
            if (Cooky.getName().equals("password")) {
                request.setAttribute("password", Cooky.getValue());
            }
        }
        request.getRequestDispatcher("/WEB-INF/view/account/Login.jsp").forward(request, response);
    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call authapi to get token
        // Sử dụng request để truyền lên google server lấy autho key
        // 
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        
        //API trả về Json nên phải đổi sang kiểu JSON
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        
        //Đổi json thành string
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static UserGoogle getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        //Kêu google trả về user ta yêu cầu
        String response = Request.Get(link).execute().returnContent().asString();
        //Đổi Json của google thành kiểu UserGoogle
        UserGoogle googlePojo = new Gson().fromJson(response, UserGoogle.class);

        return googlePojo;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
