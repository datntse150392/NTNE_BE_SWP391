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

/**
 *
 * @author baoit
 */
public class Admin_Account extends DBContext{
       public User_Account get_UserName_PassWord(String username,String password) {
        try {
            String sql = "SELECT * FROM ACCOUNT WHERE NAME = ? AND PASSWORD = ? AND ROLE = 'sa'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                User_Account p1 = new User_Account(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("password"),
                "phone",rs.getString("address"), rs.getString("role"), rs.getInt("accumulatedScore"));
                return p1;
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return null;
    }
}
