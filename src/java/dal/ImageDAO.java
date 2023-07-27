/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import models.Image;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyen Huy Khai
 */
public class ImageDAO {
    //Nơi đây xử lý lấy chi tiết 1 IMAGE
    public Image getImage_by_ImageID(int id) {
        try {
            DBContext db = new DBContext();
            String sql = "select * from [dbo].[Image] as image where image.id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            Image image = new Image();
            while (rs.next()) {
                image.setId(rs.getInt(1));
                image.setName(rs.getString(2));
                image.setImgUrl(rs.getString(3));
                image.setTour_id(rs.getInt(1));
                return image;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách Image by TourID
    public Map<Integer, Image> getImage_by_TourItemID(int tourId) {
        try {
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[Image] as img,[dbo].[Tour] as tour where tour.id = img.tour_id and tour.id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, tourId);
            ResultSet rs = ps.executeQuery();
            Map<Integer, Image> maps = new HashMap<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name  = rs.getString("name");
                String url  = rs.getString("img_url");
                int tour_id = rs.getInt("tour_id");
                Image image = new Image(id, name, url, tour_id);
                maps.put(id, image);
            }
            return maps;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ImageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        ImageDAO imageDAO = new ImageDAO();
        Image image = imageDAO.getImage_by_ImageID(1);
        System.out.println("ID: " + image.getId() + " | NAME: "
                + image.getName() + " | URL: "
                + image.getImgUrl());
    }
}
