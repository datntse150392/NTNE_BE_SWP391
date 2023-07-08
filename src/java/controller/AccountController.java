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
import models.User_Account;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Form;
import models.Constants;
import models.UserGoogle;
import utils.SecurityUtils;

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
            case "login1":
                login1(request, response);
                break;
            case "login_handler":
                login_handler(request, response);
                break;
            case "login_google":
                loginGoogleHandler(request, response);
                break;
            case "userprofile":
                displayUserProfile(request, response);
                break;
            case "changePassword":
                changePassword(request, response);
                break;
            case "changePasswordHandler":
                changePasswordHandler(request, response);
                break;
            case "logOut":
                logOut(request, response);
                break;
            case "register":
                register(request, response);
                break;
            case "registerHandler":
                registerHandler(request, response);
                break;
        }

    }

    protected void login_handler(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Lấy username password từ trog login.jsp
        String email = request.getParameter("email");
        String password = SecurityUtils.hashMd5(request.getParameter("password"));
        
        //Gọi session để lưu user vào session       
        HttpSession session = request.getSession();

        //Gọi đối tượng AccountDAO va Admin_AccountDAO để sài phương thức
        //get_UserName_PassWord để lấy đối tượng user va admin
        AccountDAO userAcc = new AccountDAO();
        Admin_Account adminAcc = new Admin_Account();

        //get_UserName_PassWord để lấy đối tượng user va admin
        User_Account person = userAcc.get_UserName_PassWord(email, password);
        User_Account admin = adminAcc.get_UserName_PassWord(email, password);
        //UserGoogle usGG = 

        //Nếu p1 khác null thì lưu p1 vào session
        if (person != null) {
            if (person.isIsActive()) {
                //Gọi cookie để lưu username va password vào cookie 
                Cookie u = new Cookie("email", email);
                Cookie p = new Cookie("password", request.getParameter("password"));
                
                //set thoi gian cua cookie
                u.setMaxAge(60);
                p.setMaxAge(60);

                //Lưu cookie u và p lên trình duyệt
                response.addCookie(u);
                response.addCookie(p);

                session.setAttribute("person", person);
                request.setAttribute("controller", "account");
                request.setAttribute("action", "userprofile");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                //response.sendRedirect(request.getContextPath() + "/Home.jsp");
            } else {
                request.setAttribute("MSG_ERROR", "This account has been blocked!");
                request.setAttribute("controller", "account");
                request.setAttribute("action", "login1");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            }
        } else if (admin != null) {
            //Gọi cookie để lưu username va password vào cookie 
            Cookie u = new Cookie("email", email);
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
            request.setAttribute("controller", "account");
            request.setAttribute("action", "login1");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        }

    }

    protected void loginGoogleHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            String code = request.getParameter("code");
            String accessToken = getToken(code);
            UserGoogle user = getUserInfo(accessToken);
            String email = user.getEmail();
            AccountDAO accDAO = new AccountDAO();
            boolean check = accDAO.getAccountByEmail(email);
            HttpSession session = request.getSession();
            if (check) {
                User_Account person = accDAO.getAccountInfoByEmail(email);
                if (person.isIsActive()) {
                    session.setAttribute("person", person);
                    request.setAttribute("controller", "account");
                    request.setAttribute("action", "userprofile");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                } else{
                    request.setAttribute("MSG_ERROR", "This account has been blocked!");
                    request.setAttribute("controller", "account");
                    request.setAttribute("action", "login1");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                }
            } else {
                accDAO.insertAccount(user.getName(), user.getEmail(), "******", "", "", "US", 0, true, user.getPicture());
                User_Account person = accDAO.getAccountInfoByEmail(email);
                session.setAttribute("person", person);
                request.setAttribute("controller", "account");
                request.setAttribute("action", "userprofile");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            }
            Cookie e = new Cookie("email", email);
            e.setMaxAge(60);
            response.addCookie(e);
        } catch (IOException e) {

        }
    }

    protected void login1(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Ta sẽ get cookie từ request 
        //Vì là trên server có thể có nhiều cookies nên khi lấy dữ liệu
        //Ta phải lấy 1 mảng các cookies
        Cookie Cookies[] = request.getCookies();

        //Ta tìm từng cookies và so sánh chúng 
        //để tìm cái ta cần
        for (Cookie Cooky : Cookies) {
            if (Cooky.getName().equals("email")) {
                request.setAttribute("email", Cooky.getValue());
            }
            if (Cooky.getName().equals("password")) {
                request.setAttribute("password", Cooky.getValue());
            }
        }

//        request.getRequestDispatcher("/WEB-INF/view/account/login1.jsp").forward(request, response);
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);

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
        System.out.println("user: " + googlePojo.toString());
        return googlePojo;
    }

    protected void displayUserProfile(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            User_Account user = (User_Account) session.getAttribute("person");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (IOException | ServletException e) {

        }
    }

    protected void changePassword(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            User_Account user = (User_Account) session.getAttribute("person");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (IOException | ServletException e) {
        }
    }

    protected void changePasswordHandler(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            User_Account user = (User_Account) session.getAttribute("person");
            AccountDAO accDAO = new AccountDAO();
            if (user != null) {
                request.setAttribute("controller", "account");
                request.setAttribute("action", "changePassword");
                String oldPassword = SecurityUtils.hashMd5(request.getParameter("oldPassword"));
                boolean checkOldPsw = accDAO.checkOldPassword(user.getId(), oldPassword);
                if (checkOldPsw) {
                    String newPassword = SecurityUtils.hashMd5(request.getParameter("newPassword"));
                    String newPasswordRetype = SecurityUtils.hashMd5(request.getParameter("newPasswordRetype"));
                    if (newPassword.equals(newPasswordRetype) && !newPassword.equals(oldPassword)) {
                        boolean checkNewPsw = accDAO.updateAccountPassword(user.getId(), newPassword);
                        if (checkNewPsw) {
                            request.setAttribute("MSG_SUCCESS", "Change password successfully!");
                            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                        } else {
                            request.setAttribute("MSG_ERROR", "Oops! Something went wrong! Try again!");
                            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                        }
                    } else {
                        request.setAttribute("MSG_ERROR", "Oops! Something went wrong! Try again!");
                        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                    }
                } else {
                    request.setAttribute("MSG_ERROR", "Oops! Something went wrong! Try again!");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                }
            }
        } catch (IOException | ServletException e) {
        }
    }

    protected void logOut(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession(true);
            if (session != null) {
                session.invalidate();
            }
            Cookie[] cookies = request.getCookies();
            if (cookies.length != 0) {
                for (Cookie cooky : cookies) {
                    if (cooky.getName().equals("email")) {
                        cooky.setMaxAge(0);
                        response.addCookie(cooky);
                    }
                }
            }
            request.setAttribute("controller", "account");
            request.setAttribute("action", "login1");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (IOException | ServletException ex) {
        }
    }

    protected void register(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            User_Account acc = (User_Account) session.getAttribute("person");
            if (acc == null) {
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            } else {
                if (acc.getRole().equals("US")) {
                    request.setAttribute("controller", "account");
                    request.setAttribute("action", "register");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                } else {
                    request.getRequestDispatcher("").forward(request, response);
                }
            }
        } catch (IOException | ServletException ex) {

        }
    }

    protected void registerHandler(HttpServletRequest request, HttpServletResponse response) {
        try {
            String email = request.getParameter("email");

            AccountDAO dao = new AccountDAO();
            User_Account account = dao.getAccountInfoByEmail(email);
            if (account != null) {
                request.setAttribute("MSG_ERROR", "Email này đã được sử dụng bởi tài khoản khác. Vui lòng nhập lại email mới!");
                request.setAttribute("email", email);
                request.setAttribute("controller", "account");
                request.setAttribute("action", "register");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            } else {
                String name = request.getParameter("fullname");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String password = SecurityUtils.hashMd5(request.getParameter("password"));
                String re_password = SecurityUtils.hashMd5(request.getParameter("re_password"));
                if (password.equals(re_password)) {
                    boolean check = dao.insertAccount(name, email, password, phone, address, "US", 0, true, "https://firebasestorage.googleapis.com/v0/b/nha-trang-nature-elite.appspot.com/o/Images%20For%20Logo%20-%20Sliders%20-%20Other%2F%C4%90%C4%83ng%20nh%E1%BA%ADp%2Fuserimage.jpg?alt=media&token=6144393d-547a-4827-8356-e04867f1139e");
                    if (check) {
                        request.setAttribute("controller", "account");
                        request.setAttribute("action", "login1");
                        request.setAttribute("MSG_SUCCESS", "You have successfully registered an account!");
                        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                    }
                } else {
                    request.setAttribute("controller", "account");
                    request.setAttribute("action", "register");
                    request.setAttribute("MSG_ERROR", "Oops! Something went wrong! Try again!");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                }
            }
        } catch (IOException | ServletException e) {

        }
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
