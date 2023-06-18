/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.TourDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dal.Tour_Details;

/**
 *
 * @author baoit
 */
@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

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
            case "booked_list":
                booked_list(request, response);
                break;
        }
    }

    protected void booked_list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Lấy tour từ tourDAO
        HttpSession session = request.getSession();
        String sort_option = request.getParameter("sort_option");
        String indexPage = request.getParameter("index");
        
     
        int index = Integer.parseInt(indexPage);        
        //Lấy đối tượng tour
        TourDAO tourDAO = new TourDAO();
        List<Tour_Details> list = null;
        
        
        
        if (sort_option == null || sort_option == "normal") {
            list = tourDAO.select(index);          
        } else if(sort_option.equalsIgnoreCase("month")) {          
            list = tourDAO.sortPriceMonth(index);
        } else if(sort_option.equalsIgnoreCase("day")) {
            list = tourDAO.sortPriceDay(index);
        }

        //Đếm tổng số trang cần có
        int count = tourDAO.count();
        count = count / 3;
        if (count % 2 != 0) {
            count++;
        }
        
        if (list != null) {
            request.setAttribute("count", count);
            request.setAttribute("sort_option", sort_option);
            request.setAttribute("list", list);
            request.getRequestDispatcher("/WEB-INF/view/home/list.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Something Wrong");
//            session.setAttribute("list", list);
            request.getRequestDispatcher("/WEB-INF/view/home/list.jsp").forward(request, response);
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
