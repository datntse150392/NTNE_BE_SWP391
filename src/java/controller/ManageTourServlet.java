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
import dal.AccountDAO;
import dal.BookDAO;
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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpSession;
import models.Bill;
import models.Book;
import models.Image;
import models.ListBooked;
import models.Trip;
import models.User_Account;
import utils.SecurityUtils;

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
            case "sendEmail":
                sendEmail(request, response);
                break;
            case "sendEmailHandler":
                sendEmailHandler(request, response);
                break;
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
            case "findBooked":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            //---------------XU LY PAYMENT---------------
            case "returnPay":
                returnPay(request, response);
                break;
            case "returnVNPay":
                returnVNPay(request, response);
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
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();
        //Khai báo biến
        TourDAO tourDAO = new TourDAO();
        //Thực hiện lấy danh sách
        Map<Integer, Tour> Maplist = tourDAO.getList();
        Map<Integer, Tour> MaplistRecent = tourDAO.getListRecent();
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
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
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
        List<String> SelectPrices = new ArrayList<>();
        TripDAO tripDAO = new TripDAO();
        String search = request.getParameter("search");
        String sort = (String) request.getParameter("sort_option");
        String indexPage = request.getParameter("index");
        String date = request.getParameter("date");

        if (indexPage == null) {
            indexPage = "1";
        }
        if (sort == null) {
            sort = "normal";
        }
        int index = Integer.parseInt(indexPage);
        try {
            String a1 = request.getParameter("a1");
            String b2 = request.getParameter("b2");
            String c3 = request.getParameter("c3");
            String d4 = request.getParameter("d4");
            String e5 = request.getParameter("e5");

            if (!a1.isEmpty()) {
                SelectPrices.add(" b.priceAdult > 1500000");
                request.setAttribute("a1", a1);
            }
            if (!b2.isEmpty()) {
                SelectPrices.add(" b.priceAdult between 1000000 and 1500000");
                request.setAttribute("b2", b2);
            }
            if (!c3.isEmpty()) {
                SelectPrices.add(" b.priceAdult between 700000 and 1000000");
                request.setAttribute("c3", c3);
            }
            if (!d4.isEmpty()) {
                SelectPrices.add(" b.priceAdult between 500000 and 700000");
                request.setAttribute("d4", d4);
            }
            if (!e5.isEmpty()) {
                SelectPrices.add(" 500000 < b.priceAdult");
                request.setAttribute("e5", e5);
            }

            if (!SelectPrices.isEmpty()) {
                if (date == null) {
                    date = "";
                }
                if (date.equals("")) {
                    if (sort.equals("normal")) {
                        tripList = tripDAO.FilterPrice(index, SelectPrices);
                    } else if (sort.equals("desc")) {
                        tripList = tripDAO.FilterPriceDESC(index, SelectPrices);
                    } else if (sort.equals("asc")) {
                        tripList = tripDAO.FilterPriceASC(index, SelectPrices);
                    }
                    //Đếm tổng số trang cần có
                    int count = tripDAO.countWithCondition(SelectPrices);
                    count = count / 6;
                    if (count % 2 != 0) {
                        count++;
                    }
                    request.setAttribute("date", date);
                    request.setAttribute("listTrip", tripList);
                    request.setAttribute("count", count);
                    request.setAttribute("sort_option", sort);
                    request.setAttribute("index", indexPage);
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                } else {
                    if (sort.equals("normal")) {
                        tripList = tripDAO.FilterPriceWithCondition(index, SelectPrices, date);
                    } else if (sort.equals("desc")) {
                        tripList = tripDAO.FilterPriceDESCWithCondition(index, SelectPrices, date);
                    } else if (sort.equals("asc")) {
                        tripList = tripDAO.FilterPriceASCWithCondition(index, SelectPrices, date);
                    }
                    //Đếm tổng số trang cần có
                    int count = tripDAO.countWithConditionDate(SelectPrices, date);
                    count = count / 6;
                    if (count % 2 != 0) {
                        count++;
                    }
                    request.setAttribute("date", date);
                    request.setAttribute("listTrip", tripList);
                    request.setAttribute("count", count);
                    request.setAttribute("sort_option", sort);
                    request.setAttribute("index", indexPage);
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                }
            }
        } catch (Exception e) {
            System.out.println(e + "");
        }

        if (search == null) {
            search = "";
        }

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
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        System.out.println("----------------GET DETAIL TOUR----------------");

        int tourID = Integer.parseInt(request.getParameter("tourID"));
        int tripID = Integer.parseInt(request.getParameter("tripID"));
        TourItemDAO itemDAO = new TourItemDAO();
        ImageDAO imageDAO = new ImageDAO();
        TripDAO tripDAO = new TripDAO();
        DestinationDAO desDAO = new DestinationDAO();
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
        request.setAttribute("tripID", tripID);
        request.setAttribute("lat", desDAO.getLat(tourID));
        request.setAttribute("lon", desDAO.getLon(tourID));
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    /*------------------------------------------------------------------------------
                        CAC FUNCTION XU LY DESTINATION (CRUD)
    ------------------------------------------------------------------------------*/
    //1.[READ] - Đọc danh sách tất cả Destination (Hash function)
    protected void getDestinationList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
            count = count / 6;
            if (count % 6 != 0) {
                count++;
            }
        }
        if (state.equals("Available")) {
            count = tourDAO.count_Available(user.getId());
            count = count / 6;
            if (count % 6 != 0) {
                count++;
            }
        }
        if (state.equals("NotAvailable")) {
            count = tourDAO.count_NotAvailable(user.getId());
            count = count / 6;

            if (count % 6 != 0) {
                count++;
            }
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
        //LẤY USER 
        HttpSession session = request.getSession();
        User_Account user = (User_Account) session.getAttribute("person");
        System.out.println(user);
        List<Trip> list = new ArrayList<Trip>();
        System.out.println("----------------VIEW FORM BOOKING----------------");
        int tourID = Integer.parseInt(request.getParameter("tourID"));
        int tripID = Integer.parseInt(request.getParameter("tripID"));
        TripDAO tripDAO = new TripDAO();

        Trip trip = tripDAO.getTrip_by_TripID_TourID(tourID, tripID);
        list = tripDAO.getTrip_by_TourID(tourID);
        Trip tripQuantity = tripDAO.getTripQuantity_by_TripID(tripID);
        AccountDAO accountDAO = new AccountDAO();
//        accountDAO.getAccumlatedScore();
        request.setAttribute("tourID", tourID);
        request.setAttribute("tripIDspec", tripID);
        request.setAttribute("quantity", tripQuantity);
        request.setAttribute("tripDate", list);
        request.setAttribute("tripInfo", trip);
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    //3. [CREATE] - TẠO BOOKING
    protected void book(HttpServletRequest request, HttpServletResponse response) throws ServletException, UnsupportedEncodingException, IOException {
        TripDAO dao = new TripDAO();
        BookDAO bookdao = new BookDAO();
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String address = request.getParameter("Address");
        String phone = request.getParameter("PhoneNumber");
        String adult = request.getParameter("AdultAmount"); //number
        String child = request.getParameter("ChildAmount"); //number
        String payment = request.getParameter("PaymentType");
        String additionfield = request.getParameter("AdditionField");
        String AdultPrice = request.getParameter("priceAdult");
        String ChildPrice = request.getParameter("priceChild");
        String trip = request.getParameter("tripID");
        String applyScore = request.getParameter("applyScore");
        boolean status = false;
        HttpSession session = request.getSession();
        User_Account user = (User_Account) session.getAttribute("person");
        int adultAmount = Integer.parseInt(adult);
        int childAmount = Integer.parseInt(child);
        int paymentID = Integer.parseInt(payment);
        int tripID = Integer.parseInt(trip);
        Date date = dao.getDateOfTrip(tripID);
        Book book;
        int numberScore = 0;
        if (applyScore != "") {
            numberScore = Integer.parseInt(applyScore);
        }
        //XỬ LÝ CẬP NHẬT ĐIỂM TÍCH LŨY CỦA ACCOUNT
        if (user != null) {
            System.out.println("USER: " + user);
            AccountDAO accountDAO = new AccountDAO();
            int number = user.getAccumulatedScore() - numberScore;
            user.setAccumulatedScore(number);
            boolean checked = accountDAO.updateAccountScore(user.getId(), number);
            if (checked) {
                System.out.println("Update User AccumulatedScore Successful");
            }
        }

        double totalPrice = Double.parseDouble(AdultPrice) * adultAmount + childAmount * Double.parseDouble(ChildPrice) - (numberScore * 1000);
        TripDAO tripdao = new TripDAO();

        //Xử lí date
        Date temp = new Date();
        Date currentDay = new Date(temp.getTime()); // Lấy ra ngày hôm nay
        //format ngày quá hạn
        //Nếu ngày quá hạn đến trước ngày mua thì status = 0
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateBook = dateFormat.format(currentDay);
        int bookID = Integer.parseInt(SecurityUtils.getRandomNumber(6));

        //Tạo booking nhưng chưa trừ số lượng ghế và status = "Chưa thanh toán"
        if (user == null) {
            book = new Book(bookID, totalPrice, additionfield, name, email, phone, dateBook, status, paymentID, adultAmount, childAmount, tripID, address, "Đang chờ thanh toán");
            System.out.println(book);
            tripdao.book_TripForGuest(book);
        } else {
            book = new Book(bookID, totalPrice, additionfield, name, email, phone, dateBook, status, paymentID, user.getId(), adultAmount, childAmount, tripID, address, "Đang chờ thanh toán");
            System.out.println(book);
            tripdao.book_Trip(book);
        }

        if (paymentID == 3) {
            System.out.println("THANH TOÁN VNPAY");
            book = bookdao.getBookByBookID(bookID);
            String vnp_Version = "2.1.0";
            String vnp_Command = "pay";
            String vnp_OrderInfo = "Thanh toan Booking so " + book.getBookID();
            String orderType = "billpayment";
            String vnp_TxnRef = "" + book.getBookID();
            String vnp_IpAddr = ConfigVnPay.getIpAddress(request);
            System.out.println(request);
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
            System.out.println(paymentUrl);
            Gson gson = new Gson();
//            response.getWriter().write(gson.toJson(job));

            response.sendRedirect(paymentUrl);
        } else {
            //Gọi phương thức display ra Bill bình thường
            returnPay(request, response);
        }
    }

//Xử lí send email
    protected void sendEmail(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (IOException | ServletException e) {

        }
    }

    protected void sendEmailHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("PhoneNumber");
        String subject = request.getParameter("subject");
        String content = request.getParameter("Content");

        System.out.println("-------Xử lí send email----------");

        final String username = "nhatrangnatureelite@gmail.com";//your email id
        final String password = "krgqhcpqhfpaspzr";// your password
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
            MimeBodyPart textPart = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            System.out.println("Nội dung báo cáo: " + content);
            String final_Text = "Name: " + name + "    " + "Email: " + email + "    " + "Phone Number: " + phone + "    " + "Subject: " + subject + "    " + "Message: " + content;
            textPart.setText(final_Text);
            message.setSubject(subject);
            multipart.addBodyPart(textPart);
            message.setContent(multipart, "text/plain; charset=UTF-8");
            message.setSubject("Contact Details");

            Transport.send(message);
        } catch (MessagingException e) {

        }
        request.setAttribute("controller", "tour");
        request.setAttribute("action", "contact");
        request.setAttribute("status", "success");
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    //2.[READ] - Display ra giao diện với các phương thức thanh toán tiền mặt
    //2.[READ] - Display ra giao diện với các phương thức thanh toán tiền mặt
    protected void returnPay(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String bookID = request.getParameter("bookID");
        int bookId = 0;
        TripDAO dao = new TripDAO();
        BookDAO bookDAO = new BookDAO();

        //2 trường hợp: Từ phía Payment đi vào xem Bill || Từ danh sách Booked đi vào xem Bill
        if (bookID != null) { //Trường hợp 1: Từ phía danh sách Booked List nhấn link vào xem
            bookId = Integer.parseInt(bookID);
            Bill bill = bookDAO.getBillByBookId(bookId);
            request.setAttribute("bill", bill);

        } else { //Trường hợp 2: Sau khi submit Book thì chuyển đến xem Bill
            Book book = dao.getTopBooked();
            Bill bill = bookDAO.getBillByBookId(book.getBookID());
            request.setAttribute("bill", bill);
            request.setAttribute("message", "Giao dịch thành công");
            request.setAttribute("code", "success");
            String email = "nguyenhuykhaipch94@gmail.com";
            int bookingCode = book.getBookID();
            AccountDAO accDAO = new AccountDAO();
            if (!accDAO.checkEmail(email)) {
                if (email != null || !email.equals("")) {
                    String to = email;// change accordingly
                    // Get the session object
                    Properties props = new Properties();
                    props.put("mail.smtp.host", "smtp.gmail.com");
                    props.put("mail.smtp.socketFactory.port", "465");
                    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                    props.put("mail.smtp.auth", "true");
                    props.put("mail.smtp.port", "465");
                    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("nhatrangnatureelite@gmail.com", "krgqhcpqhfpaspzr");
                        }
                    });
                    //compose message
                    try {
                        MimeMessage message = new MimeMessage(session);
                        message.setFrom(new InternetAddress(email));//change accordingly
                        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                        message.setSubject("Hello");
                        message.setText("Your booking code is: " + bookingCode);
                        //send message
                        Transport.send(message);
                        System.out.println("Message sent successfully");
                    } catch (MessagingException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        request.setAttribute("controller", "tour");
        request.setAttribute("action", "returnVNPay");
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    protected void returnVNPay(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String vnp_TransactionStatus = request.getParameter("vnp_TransactionStatus");
        String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");
        int vnp_TxnRef = Integer.parseInt(request.getParameter("vnp_TxnRef"));
        String vnp_TmnCode = request.getParameter("vnp_TmnCode");

        //CHECK THÔNG TIN CÓ ĐÚNG TỪ VNPAY TRẢ VỀ HAY KHÔNG?
        if (vnp_TmnCode.equals(ConfigVnPay.vnp_TmnCode)) {
            //Check trạng thái giao dịch trả về từ VNPAY
            if ("00".equals(vnp_ResponseCode)) {
                System.out.println("Giao dịch thành công");

                HttpSession mysession = request.getSession();
                User_Account user = (User_Account) mysession.getAttribute("person");

                //Cập nhật lại status trong Database và số lượng slot của Trip
                TripDAO dao = new TripDAO();
                BookDAO bookDAO = new BookDAO();
                System.out.println("----BẮT ĐẦU UPDATE----");
                boolean checked = dao.updateStatusBook(vnp_TxnRef);
                System.out.println("----KẾT THÚC UPDATE----");
                Bill bill = bookDAO.getBillByBookId(vnp_TxnRef);//Lấy thông tin Bill của khách hàng

                //XỬ LÝ CẬP NHẬT ĐIỂM TÍCH LŨY CỦA ACCOUNT
                if (user != null) {
                    System.out.println("USER: " + user);
                    AccountDAO accountDAO = new AccountDAO();
                    int number = (int) Math.floor(user.getAccumulatedScore() + (bill.getTotalPrice() * 0.02 / 1000));
                    boolean check = accountDAO.updateAccountScore(user.getId(), number);
                    if (check) {
                        user.setAccumulatedScore(number);
                        System.out.println("Update User AccumulatedScore when payment successfull");
                    }
                }

                request.setAttribute("bill", bill);
                request.setAttribute("message", "Giao dịch thành công");
                request.setAttribute("code", "success");

                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);

                String email = "nguyenhuykhaipch94@gmail.com";
                int bookingCode = vnp_TxnRef;
                AccountDAO accDAO = new AccountDAO();
                if (!accDAO.checkEmail(email)) {
                    if (email != null || !email.equals("")) {
                        String to = email;// change accordingly
                        // Get the session object
                        Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");
                        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                            @Override
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication("nhatrangnatureelite@gmail.com", "krgqhcpqhfpaspzr");
                            }
                        });
                        //compose message
                        try {
                            MimeMessage message = new MimeMessage(session);
                            message.setFrom(new InternetAddress(email));//change accordingly
                            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                            message.setSubject("Hello");
                            message.setText("Your booking code is: " + bookingCode);
                            //send message
                            Transport.send(message);
                            System.out.println("Message sent successfully");
                        } catch (MessagingException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            } else {
                System.out.println("Giao dịch không thành công: " + vnp_TransactionStatus);
                switch (vnp_TransactionStatus) {
                    case "01":
                        System.out.println("01: Giao dịch chưa hoàn tất");
                        request.setAttribute("code", "fail");
                        request.setAttribute("message", "Giao dịch chưa hoàn tất");
                        break;
                    case "02":
                        System.out.println("02: Giao dịch bị lỗi");
                        request.setAttribute("code", "fail");
                        request.setAttribute("message", "Giao dịch bị lỗi");
                        break;
                    case "04":
                        System.out.println("04: Giao dịch đảo (Khách hàng đã bị trừ tiền tại Ngân hàng nhưng GD chưa thành công ở VNPAY)");
                        request.setAttribute("code", "fail");
                        request.setAttribute("message", "Giao dịch đảo (Khách hàng đã bị trừ tiền tại Ngân hàng nhưng GD chưa thành công ở VNPAY)");
                        break;
                    case "07":
                        System.out.println("07: Giao dịch bị nghi ngờ gian lận");
                        request.setAttribute("code", "fail");
                        request.setAttribute("message", "Giao dịch bị nghi ngờ gian lận");
                        break;
                    case "00":
                        System.out.println("00");
                        break;
                    default:
                        System.out.println("Status Fail");
                        request.setAttribute("code", "fail");
                        request.setAttribute("message", "Giao dịch không thành công");
                        break;
                }
                request.setAttribute("controller", "tour");
                request.setAttribute("action", "booking");
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
            }
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
