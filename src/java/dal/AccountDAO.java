/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
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
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ? AND PASSWORD = ? ";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            
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
                System.out.println("LOGIN ACCOUNT: " + p1);
                return p1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public int getAccountTotalTour(int accID){
        int def = 0;
        try{
            String sql = " SELECT COUNT(b.account_id) AS totalTour FROM Booking b, Account a \n"
                    + "  WHERE b.account_id = a.id AND a.id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, accID);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                def = rs.getInt(1);
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return def;
    }
    
    public boolean checkOldPassword(int accID, String oldPassword){
        boolean check = false;
        try{
            String sql = "SELECT Password FROM Account WHERE id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean checkEmail(String email){
        try{
            String sql = "SELECT COUNT(*) FROM Account WHERE email = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                int emailCount = rs.getInt(1);
                return emailCount == 0;
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean updateAccountPassword(int accId, String newPassword){
        boolean check = false;
        try{
            String sql = "UPDATE Account Set password = ? WHERE id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setInt(2, accId);
            check = ps.executeUpdate() > 0;
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return check;
    }
    
    public boolean updateAccountScore(int accId, int accumulatedScore){
        boolean check = false;
        try{
            String sql = "UPDATE Account Set accumulatedScore = ? WHERE id = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, accumulatedScore);
            ps.setInt(2, accId);
            check = ps.executeUpdate() > 0;
        }catch(SQLException | ClassNotFoundException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public User_Account getAccountInfoByEmail(String email){
        try{
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public boolean getAccountByEmail(String email){
        boolean check = false;
        try{
            String sql = "SELECT * FROM ACCOUNT WHERE EMAIL = ?";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                check = true;
            }
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean insertAccount(String newName, String newEmail, String newPassword, String newPhone, String newAddress, String newRole, int accumulatedScore, boolean isActive, String linkImg){
        boolean check = false;
        try{
            String sql = "INSERT INTO Account (name, email, password, phone, address, role, accumulatedScore, isActive, linkImg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public boolean updateAccountPassword(String email, String newPassword){
        boolean check = false;
        try{
            String sql = "UPDATE [dbo].[Account] SET password = ? WHERE email = ? ";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setString(2, email);
            check = ps.executeUpdate() > 0;
        }catch(SQLException ex){
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public int getAccumlatedScore(int accID) {
        int point = 0;
        try {
            String sql = "SELECT TOP(1) lb.totalAmount FROM (SELECT b.account_id, count(status) AS numberOfBooking, totalPrice AS totalAmount FROM Booking b \n"
                    + "JOIN Account a ON b.account_id = a.id WHERE status = 1 AND b.account_id = ? GROUP BY b.account_id, totalPrice) AS lb ORDER BY lb.totalAmount DESC";
            Connection con = DBContext.getConnectionDB();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, accID);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                point = rs.getInt("totalAmount")/1000;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return point;
    }
    
    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        dao.get_UserName_PassWord("nguyehuykhaipch94@gmail.com", "25d55ad283aa400af464c76d713c07ad");
    }
}
