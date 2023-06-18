/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thuyk
 */
public class TourDAO extends DBContext {
    List<Tour_Details> list = null;
    
    //Nơi đây xử lý lấy chi tiết 1 TOUR
    public Tour getTour_by_TourID(int id) {
        try {
            String sql = "select * from [dbo].[Tour] as tour where tour.id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            Tour tour = new Tour();
            while (rs.next()) {
                tour.setId(rs.getInt(1));
                tour.setName(rs.getString(2));
                tour.setAvailability(rs.getBoolean(3));
                tour.setImage(rs.getString(4));
                return tour;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    

    public List<Tour_Details> select(int index) {

        //Tạo connection để kết nối vào DBMS
        try {
            String sql = "SELECT A.depart_time ,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY A.id OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setInt(1, (index - 1) * 3);
            
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            
            while (rs.next()) {
                Tour_Details product = new Tour_Details();
                product.setDeparttime(rs.getDate("depart_time"));
                product.setQuantityAdult(rs.getInt("quantityAdult"));
                product.setQuantityChild(rs.getInt("quantityChild"));
                product.setName(rs.getString("name"));
                product.setTotalPrice(rs.getDouble("totalPrice"));
                product.setTour_id(rs.getInt("Tour ID"));
                product.setTrip_id(rs.getInt("Trip ID"));
                product.setThumbnail(rs.getString("thumbnail"));
                product.setStatus(rs.getBoolean("status"));
                list.add(product);
            }
            rs.close();
            ps.close();
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

//     public List<Tour> Listing() {
//
//        //Tạo connection để kết nối vào DBMS
//        try {
//            String sql = "SELECT A.depart_time ,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY A.id";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            
//          
//            
//            ResultSet rs = ps.executeQuery();
//            list = new ArrayList<>();
//            
//            while (rs.next()) {
//                Tour product = new Tour();
//                product.setDeparttime(rs.getDate("depart_time"));
//                product.setQuantityAdult(rs.getInt("quantityAdult"));
//                product.setQuantityChild(rs.getInt("quantityChild"));
//                product.setName(rs.getString("name"));
//                product.setTotalPrice(rs.getDouble("totalPrice"));
//                product.setTour_id(rs.getInt("Tour ID"));
//                product.setTrip_id(rs.getInt("Trip ID"));
//                product.setThumbnail(rs.getString("thumbnail"));
//                product.setStatus(rs.getBoolean("status"));
//                list.add(product);
//            }
//            rs.close();
//            ps.close();
//            return list;
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return null;
//    }
    
    public List<Tour_Details> sortPriceMonth(int index) {
           try {
            String sql = "SELECT A.depart_time,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY MONTH(A.depart_time) DESC OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setInt(1, (index - 1) * 3);
            
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            
            while (rs.next()) {
                Tour_Details product = new Tour_Details();
                product.setDeparttime(rs.getDate("depart_time"));
                product.setQuantityAdult(rs.getInt("quantityAdult"));
                product.setQuantityChild(rs.getInt("quantityChild"));
                product.setName(rs.getString("name"));
                product.setTotalPrice(rs.getDouble("totalPrice"));
                product.setTour_id(rs.getInt("Tour ID"));
                product.setTrip_id(rs.getInt("Trip ID"));
                product.setThumbnail(rs.getString("thumbnail"));
                product.setStatus(rs.getBoolean("status"));
                list.add(product);
            }
            rs.close();
            ps.close();
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
     public List<Tour_Details> sortPriceDay(int index) {
           try {
            String sql = "SELECT A.depart_time,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY DAY(A.depart_time) DESC OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setInt(1, (index - 1) * 3);
            
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            
            while (rs.next()) {
                Tour_Details product = new Tour_Details();
                product.setDeparttime(rs.getDate("depart_time"));
                product.setQuantityAdult(rs.getInt("quantityAdult"));
                product.setQuantityChild(rs.getInt("quantityChild"));
                product.setName(rs.getString("name"));
                product.setTotalPrice(rs.getDouble("totalPrice"));
                product.setTour_id(rs.getInt("Tour ID"));
                product.setTrip_id(rs.getInt("Trip ID"));
                product.setThumbnail(rs.getString("thumbnail"));
                product.setStatus(rs.getBoolean("status"));
                list.add(product);
            }
            rs.close();
            ps.close();
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
     public int count() {
        try {
            //Tạo connection để kết nối vào DBMS

            //Tạo đối tượng statement
            PreparedStatement stm = connection.prepareStatement("select count(*) from TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id");
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            
        }
        return 0;
    }
    
    public static void main(String[] args) {
        TourDAO tourDAO = new TourDAO();
        Tour tour = tourDAO.getTour_by_TourID(5);
        System.out.println(tour.getName());
    }
}
