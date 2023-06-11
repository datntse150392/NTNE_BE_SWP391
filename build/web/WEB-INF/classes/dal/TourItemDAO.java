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

/**
 *
 * @author Nguyen Huy Khai
 */
public class TourItemDAO {
    
    //Nơi đây xử lý lấy chi tiết 1 TOURITEM
    public TourItem getTourItem_by_TourItemID(int id) {
        try {
            DBContext db = new DBContext();
            String sql = "select * from [dbo].[TourItem] as touritem where touritem.id = ?";
            PreparedStatement ps = db.connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            TourItem touritem = new TourItem();
            while (rs.next()) {
                touritem.setId(rs.getInt(1));
                touritem.setTour_id(rs.getInt(2));
                touritem.setDestination_id(rs.getInt(3));
                touritem.setScript(rs.getString(4));
                return touritem;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(TourItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Lấy danh sách TourItem
    public Map<Integer, TourItem> getTourItemList() throws SQLException {
        DBContext db = new DBContext();
        String sql = "SELECT * FROM [dbo].[TourItem]";
        PreparedStatement ps = db.connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Map<Integer, TourItem> maps = new HashMap<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            int tour_id = rs.getInt("tour_id");
            int destination_id = rs.getInt("destination_id");
            String script = rs.getString("script");
            TourItem item = new TourItem(id, tour_id, destination_id, script);
            maps.put(id, item);
        }
        return maps;
    }
}
