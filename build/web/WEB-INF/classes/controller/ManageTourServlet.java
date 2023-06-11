/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.Destination;
import dal.DestinationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Import thư viện DAO và DTO
import dal.Tour;
import dal.TourDAO;
import dal.TourItem;
import dal.TourItemDAO;
import java.sql.SQLException;
import java.util.Map;

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
            case "listTour": {
                //Lấy chi tiết 1 Tour
                getList(request, response);
                break;
            }
            case "detail": {
                // Nơi đây xử lý lấy chi tiết 1 tour
                //doDisplay_detail(request, response);
                break;
            }
            //---------------XU LY VOI DESTINATION (CRUD)---------------
            case "destinationList": {
                //Lấy danh sách tour 
                getDestinationList(request, response);
                break;
            }
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
            //Khai báo biến
            TourDAO pf = new TourDAO();
            DestinationDAO pl = new DestinationDAO();
            TourItemDAO pa = new TourItemDAO();
            //Thực hiện lấy danh sách
            Map<Integer, Tour> Maplist = pf.getList();
            Map<Integer, Destination> Mapdeslist = pl.getList();
            Map<Integer, TourItem> MapItemlist = pa.getTourItemList();
            //Lưu danh sách vào Attribute
            request.setAttribute("list", Maplist);
            request.setAttribute("destinationList", Mapdeslist);
            request.setAttribute("itemList", MapItemlist);            
            
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
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            TourDAO pf = new TourDAO();
            System.out.println("----------------GETLIST----------------");
            Map<Integer, Tour> Maplist = pf.getList();
            for (Map.Entry<Integer, Tour> x : Maplist.entrySet()) {
                System.out.println(x.getKey());
                System.out.println(x.getValue().getName());
                System.out.println(x.getValue().getPriceAdult());
                System.out.println(x.getValue().getPriceChild());
                System.out.println(x.getValue().getThumbnail());
                System.out.println(x.getValue().getLocation());
            }
            request.setAttribute("list", Maplist);
            System.out.println("----------------LIST----------------");
            request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
        } catch (SQLException ex) {
            System.out.println("----------------EXCEPTION----------------");
            log("ListTourController_SQLException: " + ex.getMessage());
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
