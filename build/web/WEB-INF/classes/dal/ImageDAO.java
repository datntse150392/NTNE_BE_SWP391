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
 * @author Nguyen Huy Khai
 */
public class ImageDAO {
    //Nơi đây xử lý lấy chi tiết 1 IMAGE
    public Image getImage_by_ImageID(int id) {
        try {
            DBContext db = new DBContext();
            String sql = "select * from [dbo].[Image] as image where image.id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            Image image = new Image();
            while (rs.next()) {
                image.setId(rs.getInt(1));
                image.setName(rs.getString(2));
                image.setImg_url(rs.getString(3));
                image.setTour_id(rs.getInt(1));
                return image;
            }
            
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
                + image.getImg_url());
    }
}
