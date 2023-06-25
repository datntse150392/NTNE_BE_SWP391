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
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Trip;
import models.Book;

/**
 *
 * @author Nguyen Huy Khai
 */
public class TripDAO {

    //Lấy danh sách Trip
    public Map<Integer, Trip> getList() throws SQLException {
        DBContext db = new DBContext();
        String sql = "SELECT * FROM [dbo].[Trip] as a WHERE a.availability = 1";
        PreparedStatement ps = db.connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Map<Integer, Trip> maps = new HashMap<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            boolean availability = rs.getBoolean("availability");
            float priceAdult = rs.getFloat("priceAdult");
            float priceChild = rs.getFloat("priceChild");
            int quantity = rs.getInt("quantity");
            Date depart_time = rs.getDate("depart_time");
            String thumbnail = rs.getString("thumbnail");
            String location = rs.getString("location");
            int tour_id = rs.getInt("tour_id");
            Trip trip = new Trip(id, name, availability, priceAdult, priceChild, quantity, depart_time, thumbnail, location, tour_id);
            maps.put(id, trip);
        }
        return maps;
    }

    //Lấy list Trip của TourID
    public List<Trip> getTrip_by_TourID(int tourID) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b WHERE a.tour_id = b.id AND b.id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();
            list = new ArrayList();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    //Lấy Trip bằng TripID và TourID
    public Trip getTrip_by_TripID_TourID(int tourID, int tripID) {
        try {
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b WHERE a.tour_id = b.id AND b.id = ? AND a.id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setInt(1, tourID);
            ps.setInt(2, tripID);
            ResultSet rs = ps.executeQuery();
            Trip trip = new Trip();
            if (rs.next()) {
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
            }
            return trip;
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Lấy ra ngày của các trip 
    public List<Trip> getTrip_date(int tourID) {
        try {
            DBContext db = new DBContext();
            String sql = "  select * from TRIP a WHERE a.tour_id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            List<Trip> list = new ArrayList<Trip>();

            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Trip trip = new Trip(rs.getDate("depart_time"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /*
    --------------------------------------------
            ĐIỀU KIỆN KHÔNG CÓ NGÀY BẮT ĐẦU
    --------------------------------------------
     */
    //Phân trang + Search
    public List<Trip> pagingStuff(String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b\n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.id OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, "%" + search + "%");
            stm.setInt(2, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
                System.out.println(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Phân trang + Sort tăng dần + Search
    public List<Trip> sortPriceAcending(String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b\n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.priceAdult ASC OFFSET ? \n"
                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, "%" + search + "%");
            stm.setInt(2, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Phân trang + Sort giảm dần + Search
    public List<Trip> sortPriceDescending(String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b\n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.priceAdult DESC OFFSET ? \n"
                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, "%" + search + "%");
            stm.setInt(2, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Đếm số trang với Search
    public int countWithCondition(String search) {
        try {
            DBContext db = new DBContext();
            //Tạo đối tượng statement
            String sql = "SELECT COUNT(*) FROM [dbo].[Trip] as a,[dbo].[Tour] as b \n"
                    + "  WHERE a.tour_id = b.id \n"
                    + "  AND a.availability = 1 \n"
                    + "  AND b.name LIKE ? ";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);

            }
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    /*
    --------------------------------------------
            ĐIỀU KIỆN CÓ NGÀY BẮT ĐẦU
    --------------------------------------------
     */
    //Phân trang + Search + Ngày bắt đầu
    public List<Trip> pagingStuffDepart(String depart_time, String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b \n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND a.depart_time = ? \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.id OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, depart_time);
            stm.setString(2, "%" + search + "%");
            stm.setInt(3, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Phân trang + Sort tăng dần + Search + Ngày bắt đầu
    public List<Trip> sortPriceAcendingDepart(String depart_time, String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b\n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND a.depart_time = ? \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.priceAdult ASC OFFSET ? \n"
                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, depart_time);
            stm.setString(2, "%" + search + "%");
            stm.setInt(3, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Phân trang + Sort giảm dần + Search + Ngày bắt đầu
    public List<Trip> sortPriceDescendingDepart(String depart_time, String search, int index) {
        List<Trip> list = null;
        try {
            DBContext db = new DBContext();
            list = new ArrayList();
            String sql = "SELECT * FROM [dbo].[Trip] as a,[dbo].[Tour] as b\n"
                    + "  WHERE a.tour_id = b.id AND a.availability = 1 \n"
                    + "  AND a.depart_time = ? \n"
                    + "  AND b.name LIKE ? \n"
                    + "  ORDER BY a.priceAdult DESC OFFSET ? \n"
                    + "  ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setString(1, depart_time);
            stm.setString(2, "%" + search + "%");
            stm.setInt(3, (index - 1) * 6);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Trip trip = new Trip();
                trip.setId(rs.getInt("id"));
                trip.setName(rs.getString("name"));
                trip.setAvailability(rs.getBoolean("availability"));
                trip.setPriceAdult(rs.getFloat("priceAdult"));
                trip.setPriceChild(rs.getFloat("priceChild"));
                trip.setQuantity(rs.getInt("quantity"));
                trip.setDepart_time(rs.getDate("depart_time"));
                trip.setThumbnail(rs.getString("thumbnail"));
                trip.setLocation(rs.getString("location"));
                trip.setTour_id(rs.getInt("tour_id"));
                list.add(trip);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return null;
    }

    //Đếm số trang với Search + Ngày bắt đầu
    public int countWithConditionDepart(String depart_time, String search) {
        try {
            DBContext db = new DBContext();
            //Tạo đối tượng statement
            String sql = "SELECT COUNT(*) FROM [dbo].[Trip] as a,[dbo].[Tour] as b \n"
                    + "  WHERE a.tour_id = b.id \n"
                    + "  AND a.availability = 1 \n"
                    + "  AND a.depart_time = ? \n"
                    + "  AND b.name LIKE ? ";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setString(1, depart_time);
            ps.setString(2, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);

            }
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void book_Trip(Book p) {
        try {
            DBContext db = new DBContext();
            String sql = "INSERT INTO Booking(totalPrice, requirement, cusBook, cusMail, cusPhone, expireDate, status, payment_id, account_id, quantityAdult, quantityChild, trip_id, cusAddress,reason) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            
            ps.setDouble(1, p.getTotalPrice());
            ps.setString(2, p.getRequirement());
            ps.setString(3, p.getCusBook());
            ps.setString(4, p.getCusMail());
            ps.setString(5, p.getCusPhone());
            ps.setString(6, p.getExpireDate());
            ps.setBoolean(7, p.isStatus());
            ps.setInt(8, p.getPayment_id());
            ps.setInt(9, p.getAccount_id());
            ps.setInt(10, p.getQuantityAdult());
            ps.setInt(11, p.getQuantityChild());
            ps.setInt(12, p.getTrip_id());
            ps.setString(13, p.getCusAddress());
            ps.setString(14, p.getReason());
            System.out.println("I'm here");
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TripDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public static void main(String[] args) throws SQLException {
        TripDAO dao = new TripDAO();
        String date = "2023-06-30";
        dao.pagingStuff("", 1);
    }
}
