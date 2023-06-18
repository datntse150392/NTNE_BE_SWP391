/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import models.Tour;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thuyk
 */
public class TourDAO extends DBContext {
    
    //Lấy danh sách tour với điều kiện availability = true
    public Map<Integer, Tour> getList() throws SQLException {
        DBContext db = new DBContext();
        String sql = "SELECT * FROM [dbo].[Tour] as a, [dbo].[Trip] AS b WHERE a.id = b.tour_id AND b.availability = 0";
        PreparedStatement ps = db.connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Map<Integer, Tour> maps = new HashMap<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            float priceAdult = rs.getFloat("priceAdult");
            float priceChild = rs.getFloat("priceChild");
            String thumbnail = rs.getString("thumbnail");
            String location = rs.getString("location");
            Tour tour = new Tour(id, name, priceAdult, priceChild, thumbnail, location);
            maps.put(id, tour);
            System.out.println(tour);
        }
        return maps;
    }
    
//    //Phân trang + Search
//    public List<Tour> pagingStuff(String search, int index) {
//        List<Tour> list = null;
//        try {
//            list = new ArrayList();
//            String sql = "SELECT * FROM [dbo].[Tour] as a WHERE a.name LIKE ? ORDER BY a.id OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, "%" + search + "%");
//            stm.setInt(2, (index - 1) * 6);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Tour tour = new Tour();
//                tour.setId(rs.getInt("id"));
//                tour.setName(rs.getString("name"));
//                tour.setPriceAdult(rs.getFloat("priceAdult"));
//                tour.setPriceChild(rs.getFloat("priceChild"));
//                tour.setThumbnail(rs.getString("thumbnail"));
//                tour.setLocation(rs.getString("location"));
//                list.add(tour);
//            }
//            return list;
//        } catch (SQLException ex) {
//            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println(ex);
//        }
//        return null;
//    }
//
//    //Phân trang + Sort tăng dần + Search
//    public List<Tour> sortPriceAcending(String search, int index) {
//        List<Tour> list = null;
//        try {
//            list = new ArrayList();
//            String sql = "SELECT * FROM [dbo].[Tour] as a WHERE a.name LIKE ? \n"
//                    + "  ORDER BY a.priceAdult ASC OFFSET ? \n"
//                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, "%" + search + "%");
//            stm.setInt(2, (index - 1) * 6);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Tour tour = new Tour();
//                tour.setId(rs.getInt("id"));
//                tour.setName(rs.getString("name"));
//                tour.setPriceAdult(rs.getFloat("priceAdult"));
//                tour.setPriceChild(rs.getFloat("priceChild"));
//                tour.setThumbnail(rs.getString("thumbnail"));
//                tour.setLocation(rs.getString("location"));
//                list.add(tour);
//            }
//            return list;
//        } catch (SQLException ex) {
//            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println(ex);
//        }
//        return null;
//    }
//
//    //Phân trang + Sort giảm dần + Search
//    public List<Tour> sortPriceDescending(String search, int index) {
//        List<Tour> list = null;
//        try {
//            list = new ArrayList();
//            String sql = "SELECT * FROM [dbo].[Tour] as a WHERE a.name LIKE ? \n"
//                    + "  ORDER BY a.priceAdult DESC OFFSET ? \n"
//                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, "%" + search + "%");
//            stm.setInt(2, (index - 1) * 6);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Tour tour = new Tour();
//                tour.setId(rs.getInt("id"));
//                tour.setName(rs.getString("name"));
//                tour.setPriceAdult(rs.getFloat("priceAdult"));
//                tour.setPriceChild(rs.getFloat("priceChild"));
//                tour.setThumbnail(rs.getString("thumbnail"));
//                tour.setLocation(rs.getString("location"));
//                list.add(tour);
//            }
//            return list;
//        } catch (SQLException ex) {
//            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println(ex);
//        }
//        return null;
//    }
//    
//    public int countWithCondition(String search) {
//        try {
//            //Tạo đối tượng statement
//            PreparedStatement ps = connection.prepareStatement("SELECT COUNT(*) FROM [dbo].[Tour] AS a WHERE a.name LIKE ?");
//            ps.setString(1, "%" + search + "%");
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                return rs.getInt(1);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return 0;
//    }
    
//    public static void main(String[] args){
//        try {
//            TourDAO dao = new TourDAO();
//            dao.getList();
//        } catch (SQLException ex) {
//            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
