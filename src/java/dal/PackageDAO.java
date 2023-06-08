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
public class PackageDAO extends DBContext{
     //Nơi đây xử lý lấy chi tiết 1 PACKAGE TOUR
    public Package getPackageTout_by_TOURID(int id) {
        try {
            String sql = "select * from [dbo].[Package] as p where p.tour_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            Package packageTour = new Package();
            while (rs.next()) {
                packageTour.setId(rs.getInt(1));
                packageTour.setName(rs.getString(2));
                packageTour.setType(rs.getString(3));
                packageTour.setPriceAdult(rs.getFloat(4));
                packageTour.setPriceChild(rs.getFloat(5));
                packageTour.setTour_id(rs.getInt(6));
                return packageTour;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(PackageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        PackageDAO packageDAO = new PackageDAO();
        Package packageTour = packageDAO.getPackageTout_by_TOURID(5);
        System.out.println(packageTour.getName());
    }
    
}
