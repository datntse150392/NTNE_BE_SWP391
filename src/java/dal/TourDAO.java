/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
                tour.setAvailability(rs.getBoolean(3));
                tour.setImage(rs.getString(4));
                return tour;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        TourDAO tourDAO = new TourDAO();
        Tour tour = tourDAO.getTour_by_TourID(5);
        System.out.println(tour.getName());
    }
}
