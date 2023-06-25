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
                boolean isActive = rs.getBoolean("isActive");
                String img = rs.getString("linkImg");
                User_Account p1 = new User_Account(AccId, name, email, totalTour, pwd, phone, address, role, accumulatedScore, isActive, img);
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
    
    public boolean checkOldPassword(int accID, String oldPassword){
        boolean check = false;
        try{
            String sql = "SELECT Password FROM Account WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accID);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                String accPsw = rs.getString("password");
                if(accPsw.equalsIgnoreCase(oldPassword)){
                    check = true;
                }
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean updateAccountPassword(int accId, String newPassword){
        boolean check = false;
        try{
            String sql = "UPDATE Account Set password = ? WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setInt(2, accId);
            check = ps.executeUpdate() > 0;
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return check;
    }
    
    public User_Account getAccountInfoByEmail(String email){
        try{
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                int AccId = rs.getInt("id");
                String name = rs.getString("name");
                String Email = rs.getString("email");
                String pwd = rs.getString("password");
                int totalTour = getAccountTotalTour(AccId);
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String role = rs.getString("role");
                int accumulatedScore = rs.getInt("accumulatedScore");
                boolean isActive = rs.getBoolean("isActive");
                String img = rs.getString("linkImg");
                User_Account p1 = new User_Account(AccId, name, Email, totalTour, pwd, phone, address, role, accumulatedScore, isActive, img);
                return p1;
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public boolean getAccountByEmail(String email){
        boolean check = false;
        try{
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                check = true;
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean insertAccount(String newName, String newEmail, String newPassword, String newPhone, String newAddress, String newRole, int accumulatedScore, boolean isActive, String linkImg){
        boolean check = false;
        try{
            String sql = "INSERT INTO Account (name, email, password, phone, address, role, accumulatedScore, isActive, linkImg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, newName);
            ps.setString(2, newEmail);
            ps.setString(3, newPassword);
            ps.setString(4, newPhone);
            ps.setString(5, newAddress);
            ps.setString(6, newRole);
            ps.setInt(7, accumulatedScore);
            ps.setBoolean(8, isActive);
            ps.setString(9, linkImg);
            check = ps.executeUpdate() > 0;
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean updateToken(String token, String email){
        boolean check = true;
        try{
            String sql = "UPDATE Account SET token = ? WHERE email = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, token);
            ps.setString(2, email);
            check = ps.executeUpdate() > 0;
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean validToken(String token) {
        boolean check = false;
        try {
            String sql = "SELECT id, name, email, password, phone, address, role, accumulatedScore, isActive, linkImg FROM Account WHERE token = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, token);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public User_Account getAccountByToken(String token){
        try{
            String sql = "SELECT id, name, email, password, phone, address, role, accumulatedScore, isActive, linkImg FROM Account WHERE token = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, token);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                int AccId = rs.getInt("id");
                String name = rs.getString("name");
                String Email = rs.getString("email");
                String pwd = rs.getString("password");
                int totalTour = getAccountTotalTour(AccId);
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String role = rs.getString("role");
                int accumulatedScore = rs.getInt("accumulatedScore");
                boolean isActive = rs.getBoolean("isActive");
                String img = rs.getString("linkImg");
                User_Account p1 = new User_Account(AccId, name, Email, totalTour, pwd, phone, address, role, accumulatedScore, isActive, img);
                return p1;
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
