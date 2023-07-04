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
import java.util.List;

//Import thư viện DAO và DTO
import models.Tour;
import dal.TourDAO;
import models.TourItem;
import dal.TourItemDAO;
import dal.TripDAO;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
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
            Map<Integer, TourItem> Maplist = itemDAO.getListItem_by_TourItemID(tourID);

            for (Map.Entry<Integer, TourItem> x : Maplist.entrySet()) {
                System.out.print("ID: " + x.getValue().getId() + " | ");
                System.out.print("TOUR_ID: " + x.getValue().getTour_id() + " | ");
                System.out.print("DES_ID: " + x.getValue().getDestination_id() + " | ");
                System.out.print("DURATION: " + x.getValue().getDuration() + " | ");
                System.out.print("SCRIPT: " + x.getValue().getScript() + " | ");
                System.out.println("");
            }
            request.setAttribute("tripList", tripList);
            request.setAttribute("imageList", Imagelist);
            request.setAttribute("itemList", Maplist);
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

        int index = Integer.parseInt(indexPage);
        //Lấy đối tượng tour
        TourDAO tourDAO = new TourDAO();
        List<ListBooked> list = null;

        if (sort_option == null || sort_option.isEmpty()) {
            list = tourDAO.select(user.getId(), index);
        } else if (sort_option.equalsIgnoreCase("month")) {
            list = tourDAO.sortPriceMonth(user.getId(), index);
        } else if (sort_option.equalsIgnoreCase("day")) {
            list = tourDAO.sortPriceDay(user.getId(), index);
        }
        for (ListBooked listBooked : list) {
            System.out.println("list = " + listBooked.toString());

        }
        //Đếm tổng số trang cần có
        int count = tourDAO.count(user.getId());
        count = count / 3;
        if (count % 2 != 0) {
            count++;
        }

        if (list != null) {
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

//        for (Trip trip1 : list) {
//            System.out.println(trip1);
//
//        }
        request.setAttribute("currentQuantity", tripCurrentQuantity);
        request.setAttribute("tourID", tourID);
        request.setAttribute("quantity", tripQuantity);
        request.setAttribute("tripDate", list);
        request.setAttribute("tripInfo", trip);
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    //3. [CREATE] - TẠO BOOKING
    protected void book(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String phone = request.getParameter("PhoneNumber");
        String adult = request.getParameter("AdultAmount"); //number
        String child = request.getParameter("ChildAmount"); //number
        String payment = request.getParameter("PaymentType");
        String additionfield = request.getParameter("AdditionField");
        String AdultPrice = request.getParameter("priceAdult");
        String ChildPrice = request.getParameter("priceChild");
        String requirement = request.getParameter("requirement");
        String trip = request.getParameter("tripID");
        String tour = request.getParameter("tourID");
        boolean status = true;
        HttpSession session = request.getSession();
        TripDAO tripdao = new TripDAO();
        User_Account user = (User_Account) session.getAttribute("person");
        List<Trip> list = null;

        int adultAmount = Integer.parseInt(adult);
        int childAmount = Integer.parseInt(child);
        int paymentID = Integer.parseInt(payment);
        int tripID = Integer.parseInt(trip);
        int tourID = Integer.parseInt(tour);
        double totalPrice = Double.parseDouble(AdultPrice) * adultAmount + childAmount * Double.parseDouble(ChildPrice);

        list = tripdao.getTrip_by_TourID(tourID);
        Trip currentQuantity = tripdao.getTripCurrentQuantity_by_TripID(tripID);
        Trip tripQuantity = tripdao.getTripQuantity_by_TripID(tripID);
        Book book;
        //            //Xử lí date
//            Date temp = new Date();
//            Date currentDay = new Date(temp.getTime()); // Lấy ra ngày hôm nay           
//            Date expDate = new Date();
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            System.out.println(date);
//            expDate = dateFormat.parse(date); //format ngày quá hạn
//            //Nếu ngày quá hạn đến trước ngày mua thì status = 0
//            if (expDate.before(currentDay)) {
//                status = false;
//            } else {x
//                status = true;
//            }
        System.out.println("Trip current value: " + currentQuantity.getCurrent_quantity());
        System.out.println("Trip quantity: " + tripQuantity.getQuantity());
        System.out.println(currentQuantity.getCurrent_quantity() <= tripQuantity.getQuantity());
        if ((currentQuantity.getCurrent_quantity() + adultAmount + childAmount) <= tripQuantity.getQuantity()) {
            if (user == null) {
                book = new Book(totalPrice, additionfield, name, email, phone, status, paymentID, adultAmount, childAmount, tripID, requirement);
                tripdao.book_TripForGuest(book);
                tripdao.getTripCurrentQuantity_by_TripID(tripID);

            } else {
                book = new Book(totalPrice, additionfield, name, email, phone, status, paymentID, user.getId(), adultAmount, childAmount, tripID, user.getAddress(), requirement);
                tripdao.book_Trip(book);
                tripdao.getTripCurrentQuantity_by_TripID(tripID);

            }
        } else {
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

//            System.out.println("Name: " + name + "email: " + email + "phone: " + phone + "adult: " + adult + "child: " + child + "date: " + date + "payment: " + payment + "addtionField: " + additionfield);
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
