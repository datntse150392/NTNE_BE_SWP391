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
                tour.setPriceAdult(rs.getFloat(3));
                tour.setPriceChild(rs.getFloat(4));
                tour.setThumbnail(rs.getString(5));
                tour.setLocation(rs.getString(6));
                return tour;
            }

        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách Tour
    public Map<Integer, Tour> getList() throws SQLException {
        String sql = "SELECT * FROM [dbo].[Tour]";
        PreparedStatement ps = connection.prepareStatement(sql);
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
        }
        return maps;
    }
}
