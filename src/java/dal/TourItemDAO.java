/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import models.TourItem;
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
 * @author Nguyen Huy Khai
 */
public class TourItemDAO {
    
    //Lấy danh sách TourItem
    public List<TourItem> getListItem_by_TourItemID(int tourId){
        try {
            List<TourItem> list = null;
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[TourItem] as touritem,[dbo].[Tour] as tour where tour.id = touritem.tour_id and tour.id = ? ORDER BY touritem.id ASC";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, tourId);
            ResultSet rs = ps.executeQuery();
            list = new ArrayList();
            while (rs.next()) {
                TourItem item = new TourItem();
                item.setId(rs.getInt("id"));
                item.setTour_id(rs.getInt("tour_id"));
                item.setDestination_id(rs.getInt("destination_id"));
                item.setScript(rs.getString("script"));
                item.setDuration(rs.getString("duration"));
                list.add(item);
            }
            return list;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TourItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TourItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách TourItem
    public Map<Integer, TourItem> getTourItemList() {
        try {
            DBContext db = new DBContext();
            String sql = "SELECT * FROM [dbo].[TourItem]";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Map<Integer, TourItem> maps = new HashMap<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                int tour_id = rs.getInt("tour_id");
                int destination_id = rs.getInt("destination_id");
                String script = rs.getString("script");
                String duration = rs.getString("duration");
                TourItem item = new TourItem(id, tour_id, destination_id, script, duration);
                maps.put(id, item);
            }
            return maps;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TourItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TourItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) throws SQLException {
        TourItemDAO dao = new TourItemDAO();
        int tourID = 1;
        dao.getListItem_by_TourItemID(tourID);
    }
}
