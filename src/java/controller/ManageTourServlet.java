/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import models.Destination;
import dal.DestinationDAO;
import dal.ImageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.List;

//Import thư viện DAO và DTO
import models.Tour;
import dal.TourDAO;
import models.TourItem;
import dal.TourItemDAO;
import dal.TripDAO;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import models.Book;
import models.Image;
import models.ListBooked;
import models.Trip;
import models.User_Account;

/**
 *
 * @author thuyk
 */
@WebServlet(name = "Tour", urlPatterns = {"/tour"})
public class ManageTourServlet extends HttpServlet {

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
        // Để có thể truyền dữ liệu lên Data để ghi dạng tiếng việt thì thêm 3 dòng 42 43 44 
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = (String) request.getAttribute("action");

        switch (action) {
            //---------------XU LY VOI TOUR (CRUD)---------------
            case "homePage": {
                //Lấy danh sách tour
                getHomePage(request, response);
                break;
            }
            case "list": {
                getList(request, response);
                break;
            }
            case "detailTour": {
                // Nơi đây xử lý lấy chi tiết 1 tour
                detailTourById(request, response);
                break;
            }
            //---------------XU LY VOI DESTINATION (CRUD)---------------
            case "destinationList": {
                //Lấy danh sách tour 
                getDestinationList(request, response);
                break;
            }
            //---------------CÁC VIEW KHÁC---------------
            case "about": {
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            }
            case "contact": {
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            }
            //---------------XU LY VOI BOOKED LIST (CRUD)---------------
            case "booking":
                viewFormBooking(request, response);
                break;
            case "bookedList":
                bookedList(request, response);
                break;
            case "book":
                book(request, response);
                break;
            default: {
                request.getRequestDispatcher("/WEB-INF/view/error/error.jsp").forward(request, response);
                break;
            }
        }
    }

    //1.[READ] - Đọc danh sách tất cả Tour (Hash function)
    protected void getHomePage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            HttpSession session = request.getSession();

            //Khai báo biến
            TourDAO tourDAO = new TourDAO();
            //Thực hiện lấy danh sách
            Map<Integer, Tour> Maplist = tourDAO.getList();
            Map<Integer, Tour> MaplistRecent = tourDAO.getList();

            System.out.println("HOMEPAGE TEST");

            //Lưu danh sách vào Attribute
            request.setAttribute("listTour", Maplist);
            request.setAttribute("listTourRecent", MaplistRecent);
            System.out.println("Check suggestionList is valid: " + Config.isValidList);
            if (!Config.isValidList) {
                System.out.println("Create SearchList");
                String tourListJson = new Gson().toJson(Maplist);
                session.setAttribute("searchList", tourListJson);
                Config.setIsValidList(true);
            }
//
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (SQLException ex) {
            System.out.println("----------------EXCEPTION----------------");
            log("HomePage_SQLException: " + ex.getMessage());
        }
    }

    /*------------------------------------------------------------------------------
                            CAC FUNCTION XU LY TOUR (CRUD)
    ------------------------------------------------------------------------------*/
    //1.[READ] - Đọc danh sách tất cả Tour (Hash function)
    protected void getList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        System.out.println("----------------GETLIST----------------");
        //Tạo và lấy biến
        Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        List<Trip> tripList = null;
        TripDAO tripDAO = new TripDAO();
        String search = request.getParameter("search");
        if (search == null) {
            search = "";
        }
        String sort = (String) request.getParameter("sort_option");
        String indexPage = request.getParameter("index");
        if (sort == null) {
            sort = "normal";
        }
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        String date = request.getParameter("date");
        //ĐIỀU KIỆN NGÀY KHỞI HÀNH VÀ KHÔNG CÓ NGÀY KHỞI HÀNH
        if (date == null) {
            date = "";
        }
        if (date.equals("")) {
            //Sort theo giá tiền
            if (sort.equals("asc")) {
                tripList = tripDAO.sortPriceAcending(search, index);
            } else if (sort.equals("desc")) {
                tripList = tripDAO.sortPriceDescending(search, index);
            } else if (sort.equals("normal")) {
                tripList = tripDAO.pagingStuff(search, index);
            }
            //Đếm tổng số trang cần có
            int count = tripDAO.countWithCondition(search);
            count = count / 6;
            if (count % 2 != 0) {
                count++;
            }
            request.setAttribute("date", date);
            request.setAttribute("listTrip", tripList);
            request.setAttribute("count", count);
            request.setAttribute("sort_option", sort);
            request.setAttribute("search", search);
            request.setAttribute("index", indexPage);
        } else {
            //Sort theo giá tiền có NGÀY KHỞI HÀNH
            if (sort.equals("asc")) {
                tripList = tripDAO.sortPriceAcendingDepart(date, search, index);
            } else if (sort.equals("desc")) {
                tripList = tripDAO.sortPriceDescendingDepart(date, search, index);
            } else if (sort.equals("normal")) {
                tripList = tripDAO.pagingStuffDepart(date, search, index);
            }
            //Đếm tổng số trang cần có
            int count = tripDAO.countWithConditionDepart(date, search);
            count = count / 6;
            if (count % 2 != 0) {
                count++;
            }
            request.setAttribute("date", date);
            request.setAttribute("listTrip", tripList);
            request.setAttribute("count", count);
            request.setAttribute("sort_option", sort);
            request.setAttribute("search", search);
            request.setAttribute("index", indexPage);
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    //2.[READ] - Đọc thông tin chi tiết 1 Tour by ID
    protected void detailTourById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");

            System.out.println("----------------GET DETAIL TOUR----------------");
            int tourID = Integer.parseInt(request.getParameter("tourID"));
            int tripID = Integer.parseInt(request.getParameter("tripID"));
            TourItemDAO itemDAO = new TourItemDAO();
            ImageDAO imageDAO = new ImageDAO();
            TripDAO tripDAO = new TripDAO();
            if (tripID != 0) {
                Trip trip = tripDAO.getTrip_by_TripID_TourID(tourID, tripID);
                request.setAttribute("trip", trip);
            } else if (tripID == 0) {
                Trip trip = tripDAO.getTrip_by_TourID(tourID).get(0);
                request.setAttribute("trip", trip);
            }
            List<Trip> tripList = tripDAO.getTrip_by_TourID(tourID);
            Map<Integer, Image> Imagelist = imageDAO.getImage_by_TourItemID(tourID);
            List<TourItem> itemList = itemDAO.getListItem_by_TourItemID(tourID);

            request.setAttribute("tripList", tripList);
            request.setAttribute("imageList", Imagelist);
            request.setAttribute("itemList", itemList);
            request.setAttribute("tourID", tourID);
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (SQLException ex) {
            System.out.println("----------------EXCEPTION----------------");
            log("TourItem_SQLException: " + ex.getMessage());
        }
    }

    /*------------------------------------------------------------------------------
                        CAC FUNCTION XU LY DESTINATION (CRUD)
    ------------------------------------------------------------------------------*/
    //1.[READ] - Đọc danh sách tất cả Destination (Hash function)
    protected void getDestinationList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            DestinationDAO pf = new DestinationDAO();
            System.out.println("----------------GET DESTINATION LIST----------------");
            Map<Integer, Destination> Maplist = pf.getList();
            for (Map.Entry<Integer, Destination> x : Maplist.entrySet()) {
                System.out.println(x.getKey());
                System.out.println(x.getValue().getName());
            }
            request.setAttribute("destinationList", Maplist);
            System.out.println("----------------DESTINATION LIST----------------");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (SQLException ex) {
            System.out.println("----------------EXCEPTION----------------");
            log("ListTourController_SQLException: " + ex.getMessage());
        }
    }

    /*------------------------------------------------------------------------------
                        CAC FUNCTION XU LY BOOKED LIST (CRUD)
    ------------------------------------------------------------------------------*/
    //1.[READ] - Đọc danh sách tất cả Booking
    protected void bookedList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Lấy tour từ tourDAO
        HttpSession session = request.getSession();
        User_Account user = (User_Account) session.getAttribute("person");

        String sort_option = request.getParameter("sort_option");
        String indexPage = request.getParameter("index");
        String state = request.getParameter("state");
        int index = Integer.parseInt(indexPage);
        int count = 0;
        //Lấy đối tượng tour
        TourDAO tourDAO = new TourDAO();
        List<ListBooked> list = null;

        if (sort_option == null || sort_option.isEmpty()) {
            if (state.equals("All")) {
                list = tourDAO.select_All(user.getId(), index);
            }
            if (state.equals("Available")) {
                list = tourDAO.select_Available(user.getId(), index);
            }
            if (state.equals("NotAvailable")) {
                list = tourDAO.select_Not_Available(user.getId(), index);
            }
        } else if (sort_option.equalsIgnoreCase("month")) {
            if (state.equals("All")) {
                list = tourDAO.sortPriceMonth_All(user.getId(), index);
            }
            if (state.equals("Available")) {
                list = tourDAO.sortPriceMonth_Available(user.getId(), index);
            }
            if (state.equals("NotAvailable")) {
                list = tourDAO.sortPriceMonth_NotAvailable(user.getId(), index);
            }
        } else if (sort_option.equalsIgnoreCase("day")) {
            if (state.equals("All")) {
                list = tourDAO.sortPriceDay_All(user.getId(), index);
            }
            if (state.equals("Available")) {
                list = tourDAO.sortPriceDay_Available(user.getId(), index);
            }
            if (state.equals("NotAvailable")) {
                list = tourDAO.sortPriceDay_NotAvailable(user.getId(), index);
            }
        }
        //Đếm tổng số trang cần có
        if (state.equals("All")) {
            count = tourDAO.count_All(user.getId());
            count = count / 3;
            if (count % 3 != 0) {
                count++;
            }
        }
        if (state.equals("Available")) {
            count = tourDAO.count_Available(user.getId());
            count = count / 3;
            if (count % 3 != 0) {
                count++;
            }
        }
        if (state.equals("NotAvailable")) {
            count = tourDAO.count_NotAvailable(user.getId());
            System.out.println("Số đếm của Not Available trước if: " + count);
            count = count / 3;

            if (count % 3 != 0) {
                count++;
            }
            System.out.println("Số đếm của Not Available sau if: " + count);
        }

        if (list != null) {
            request.setAttribute("state", state);
            request.setAttribute("count", count);
            request.setAttribute("sort_option", sort_option);
            request.setAttribute("index", index);
            request.setAttribute("list", list);
            System.out.println(list);
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } else {
            request.setAttribute("error", "Something Wrong");
            request.getRequestDispatcher("/WEB-INF/view/error/error.jsp").forward(request, response);
        }
    }

    //2.[READ] - LẤY THÔNG TIN TRIP DISPLAY LÊN FORM BOOKING
    protected void viewFormBooking(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        List<Trip> list = new ArrayList<Trip>();

        System.out.println("----------------VIEW FORM BOOKING----------------");
        int tourID = Integer.parseInt(request.getParameter("tourID"));
        int tripID = Integer.parseInt(request.getParameter("tripID"));
        TripDAO tripDAO = new TripDAO();

        Trip trip = tripDAO.getTrip_by_TripID_TourID(tourID, tripID);
        list = tripDAO.getTrip_by_TourID(tourID);
        Trip tripQuantity = tripDAO.getTripQuantity_by_TripID(tripID);
        Trip tripCurrentQuantity = tripDAO.getTripCurrentQuantity_by_TripID(tripID);

        for (Trip trip1 : list) {
            Trip setCurrent_quantity = tripDAO.getTripCurrentQuantity_by_TripID(trip1.getId());
            trip1.setCurrent_quantity(setCurrent_quantity.getCurrent_quantity());
        }

        request.setAttribute("currentQuantity", tripCurrentQuantity);
        request.setAttribute("tourID", tourID);
        request.setAttribute("quantity", tripQuantity);
        request.setAttribute("tripDate", list);
        request.setAttribute("tripInfo", trip);
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    //3. [CREATE] - TẠO BOOKING
    protected void book(HttpServletRequest request, HttpServletResponse response) throws ServletException, UnsupportedEncodingException, IOException {
        TripDAO tripdao = new TripDAO();
        //Khởi tạo các giá trị cần có cho việc book
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String phone = request.getParameter("PhoneNumber");
        String adult = request.getParameter("AdultAmount"); //number
        String child = request.getParameter("ChildAmount"); //number
        String payment = request.getParameter("PaymentType");
        String date = request.getParameter("tripDate");
        String additionfield = request.getParameter("AdditionField");
        String AdultPrice = request.getParameter("priceAdult");
        String ChildPrice = request.getParameter("priceChild");
        String tour = request.getParameter("tourID");
        boolean status = false;
        String paymentMethod = null;
        //Chuyển kiểu dữ liệu
        HttpSession session = request.getSession();
        User_Account user = (User_Account) session.getAttribute("person");
        int adultAmount = Integer.parseInt(adult);
        int childAmount = Integer.parseInt(child);
        int paymentID = Integer.parseInt(payment);
        int tripID = 0;
        int tourID = Integer.parseInt(tour);
        double totalPrice = Double.parseDouble(AdultPrice) * adultAmount + childAmount * Double.parseDouble(ChildPrice); // tổng giá trẻ em và người lớn

        Book book;
        List<Trip> list;
        list = tripdao.getTrip_by_TourID(tourID);
        //Tìm tripID
        for (Trip trip1 : list) {
            if (trip1.getDepart_time().toString().equals(date)) {
                tripID = trip1.getId();
            }
        }
        list = tripdao.getTrip_by_TourID(tourID);
        Trip currentQuantity = tripdao.getTripCurrentQuantity_by_TripID(tripID);
        Trip tripQuantity = tripdao.getTripQuantity_by_TripID(tripID);

        //Tạo booking nhưng chưa trừ số lượng ghế và status = "Chưa thanh toán"
        if (paymentID == 1) {
            if ((currentQuantity.getCurrent_quantity() + adultAmount + childAmount) <= tripQuantity.getQuantity()) {
                if (user == null) {
                    System.out.println("Im inside the function");
                    book = new Book(totalPrice, additionfield, name, email, phone, status, paymentID, adultAmount, childAmount, tripID, "");
                    System.out.println(book);
                    tripdao.book_TripForGuest(book);
                } else {
                    book = new Book(totalPrice, additionfield, name, email, phone, status, paymentID, user.getId(), adultAmount, childAmount, tripID, user.getAddress(), "");
                    System.out.println(book);
                    tripdao.book_Trip(book);
                }
            } else {
                System.out.println("I'm outside the function");
                Trip tripInfo = tripdao.getTrip_by_TripID_TourID(tourID, tripID);

                request.setAttribute("currentQuantity", currentQuantity);
                request.setAttribute("quantity", tripQuantity);
                request.setAttribute("tripDate", list);
                request.setAttribute("tripInfo", tripInfo);
                request.setAttribute("tourID", tourID);
                request.setAttribute("alert", "Số chỗ vượt quá số lượng");
                request.setAttribute("action", "booking");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            }
        }

        if (paymentID == 3) {
            System.out.println("THANH TOÁN VNPAY");
            book = tripdao.getTopBooked();
            String vnp_Version = "2.1.0";
            String vnp_Command = "pay";
            String vnp_OrderInfo = "Thanh toan Booking so " + book.getBookID();
            String orderType = "billpayment";
            String vnp_TxnRef = "BOOKING" + book.getBookID();
            String vnp_IpAddr = ConfigVnPay.getIpAddress(request);
            String vnp_TmnCode = ConfigVnPay.vnp_TmnCode;

            long amount = Math.round(totalPrice * 100);
            Map vnp_Params = new HashMap<>();
            vnp_Params.put("vnp_Version", vnp_Version);
            vnp_Params.put("vnp_Command", vnp_Command);
            vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
            vnp_Params.put("vnp_Amount", String.valueOf(amount));
            vnp_Params.put("vnp_CurrCode", "VND");
            String bank_code = "NCB"; //Tài khoản ngân hàng test NCB
            if (bank_code != null && !bank_code.isEmpty()) {
                vnp_Params.put("vnp_BankCode", bank_code);
            }
            vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
            vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
            vnp_Params.put("vnp_OrderType", orderType);

            String locate = "vn"; //Thanh toán ở location Việt Nam
            if (locate != null && !locate.isEmpty()) {
                vnp_Params.put("vnp_Locale", locate);
            } else {
                vnp_Params.put("vnp_Locale", "vn");
            }
            vnp_Params.put("vnp_ReturnUrl", ConfigVnPay.vnp_Returnurl);
            vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
            Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));

            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            String vnp_CreateDate = formatter.format(cld.getTime());

            vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

            //Build data to hash and querystring
            List fieldNames = new ArrayList(vnp_Params.keySet());
            Collections.sort(fieldNames);
            StringBuilder hashData = new StringBuilder();
            StringBuilder query = new StringBuilder();
            Iterator itr = fieldNames.iterator();

            while (itr.hasNext()) {
                String fieldName = (String) itr.next();
                String fieldValue = (String) vnp_Params.get(fieldName);
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    //Build hash data
                    hashData.append(fieldName);
                    hashData.append('=');
                    hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    //Build query
                    query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                    query.append('=');
                    query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    if (itr.hasNext()) {
                        query.append('&');
                        hashData.append('&');
                    }
                }
            }
            String queryUrl = query.toString();

            //Tạo vnp_SecureHash và tạo URL chuyển hướng phiên bản mới 2.1.0
            String vnp_SecureHash = ConfigVnPay.hmacSHA512(ConfigVnPay.vnp_HashSecret, hashData.toString());
            queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;

            String paymentUrl = ConfigVnPay.vnp_PayUrl + "?" + queryUrl;
            com.google.gson.JsonObject job = new JsonObject();
            job.addProperty("code", "00");
            job.addProperty("message", "success");
            job.addProperty("data", paymentUrl);
            response.sendRedirect(paymentUrl);
        }
    }

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
