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
import models.User;
import models.User_Account;
//import static org.apache.tomcat.jni.User.username;

/**
 *
 * @author baoit
 */
public class AccountDAO extends DBContext{
    //Get User account and password 
    public User_Account get_UserName_PassWord(String username,String password) {
        try {
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ? AND PASSWORD = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                int AccId = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String pwd = rs.getString("password");
                int totalTour = getAccountTotalTour(AccId);
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String role = rs.getString("role");
                int accumulatedScore = rs.getInt("accumulatedScore");
                User_Account p1 = new User_Account(AccId, name, email, pwd, totalTour, phone, address, role, accumulatedScore);
                return p1;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return null;
    }
    
    public int getAccountTotalTour(int accID){
        int def = 0;
        try{
            String sql = " SELECT COUNT(b.account_id) AS totalTour FROM Booking b, Account a \n"
                    + "  WHERE b.account_id = a.id AND a.id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accID);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                def = rs.getInt(1);
            }
            
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return def;
    }
}
