/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DestinationDAO {
    
    //Nơi đây xử lý lấy chi tiết 1 DESTINATION
    public Destination getDestination_by_DestinationID(int id) {
        try {
            DBContext db = new DBContext();
            String sql = "select * from [dbo].[Destination] as destination where destination.id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            Destination destination = new Destination();
            while (rs.next()) {
                destination.setId(rs.getInt(1));
                destination.setName(rs.getString(2));
                return destination;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách Destination
    public Map<Integer, Destination> getList() throws SQLException {
        DBContext db = new DBContext();
        String sql = "SELECT * FROM [dbo].[Destination]";
        PreparedStatement ps = db.connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Map<Integer, Destination> maps = new HashMap<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            Destination destination = new Destination(id, name);
            maps.put(id, destination);
        }
        return maps;
    }
    
    public static void main(String[] args) {
        DestinationDAO destinationDAO = new DestinationDAO();
        Destination destination = destinationDAO.getDestination_by_DestinationID(1);
        System.out.println(destination.getId() + ": " + destination.getName());
    }
}
