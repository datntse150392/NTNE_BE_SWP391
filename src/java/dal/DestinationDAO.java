/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import models.Destination;
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
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách Destination
    public Map<Integer, Destination> getList() {
        try {
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[Destination]";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Map<Integer, Destination> maps = new HashMap<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Destination destination = new Destination(id, name);
                maps.put(id, destination);
            }
            System.out.println(maps);
            return maps;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy map
    public String getLat(int tourID){
        String lat = null;
        try{
            String sql = "select lat from (select top (1) * from (select * from Destination where tourID = ?) as lb) as bl";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, tourID);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                lat = rs.getString(1);
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lat;
    }
    
    public String getLon(int tourID){
        String lon = null;
        try{
            String sql = "select lon from (select top (1) * from (select * from Destination where tourID = ?) as lb) as bl";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, tourID);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                lon = rs.getString(1);
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(DestinationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Kinh tuyến: "+lon);
        return lon;
    }
    
    public static void main(String[] args) {
        DestinationDAO destinationDAO = new DestinationDAO();
        Destination destination = destinationDAO.getDestination_by_DestinationID(1);
        System.out.println(destination.getId() + ": " + destination.getName());
    }
}
