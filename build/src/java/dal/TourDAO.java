/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import models.Tour;
import models.ListBooked;
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

    List<ListBooked> list = null;

    //Lấy danh sách tour với điều kiện availability = true
    public Map<Integer, Tour> getList() throws SQLException {
        DBContext db = new DBContext();
        String sql = "SELECT * FROM [dbo].[Tour] as a, [dbo].[Trip] AS b WHERE a.id = b.tour_id AND b.availability = 1";
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

    //Lấy danh sách Booking by ID
    public List<ListBooked> select(int index) {
        //Tạo connection để kết nối vào DBMS
        try {
            String sql = "SELECT A.depart_time ,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY A.id OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, (index - 1) * 3);

            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();

            while (rs.next()) {
                ListBooked product = new ListBooked();
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

    public List<ListBooked> sortPriceMonth(int index) {
        try {
            String sql = "SELECT A.depart_time,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY MONTH(A.depart_time) DESC OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, (index - 1) * 3);

            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();

            while (rs.next()) {
                ListBooked product = new ListBooked();
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

    public List<ListBooked> sortPriceDay(int index) {
        try {
            String sql = "SELECT A.depart_time,b.name, B.thumbnail, C.totalPrice, B.id as 'Tour ID', A.id 'Trip ID', C.quantityAdult, C.quantityChild, C.status FROM TRIP A JOIN Tour B ON A.tour_id = B.id JOIN BOOKING C ON C.trip_id = A.id JOIN ACCOUNT D ON D.id = C.account_id ORDER BY DAY(A.depart_time) DESC OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, (index - 1) * 3);

            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();

            while (rs.next()) {
                ListBooked product = new ListBooked();
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
}
