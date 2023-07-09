/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Bill;

/**
 *
 * @author Nguyen Huy Khai
 */
public class BookDAO {

    //Phân trang + Sort giảm dần + Search + Ngày bắt đầu
    public Bill getBillByBookId(int bookId) {
        Bill bill = null;
        try {
            DBContext db = new DBContext();
            String sql = "SELECT c.code, b.cusBook, b.cusAddress, b.cusMail, b.cusPhone, b.requirement, c.name, a.depart_time, c.location, b.id, b.totalPrice, b.expireDate as dateBook, d.name as payMethod,b.quantityAdult, b.quantityChild , b.reason,a.depart_time as expireDate, c.thumbnail\n"
                    + "FROM [dbo].[Trip] AS a JOIN [dbo].[Booking] as b\n"
                    + "ON a.id = b.trip_id JOIN [dbo].[Tour] as c\n"
                    + "ON a.tour_id = c.id JOIN [dbo].[Payment] as d\n"
                    + "ON b.payment_id = d.id\n"
                    + "WHERE b.id = ?";
            PreparedStatement stm = db.connection.prepareStatement(sql);
            stm.setInt(1, bookId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                bill = new Bill();
                bill.setCusName(rs.getString("cusBook"));
                bill.setCusAddress(rs.getString("cusAddress"));
                bill.setCusMail(rs.getString("cusMail"));
                bill.setCusPhone(rs.getString("cusPhone"));
                bill.setRequirement(rs.getString("requirement"));
                bill.setTripName(rs.getString("name"));
                bill.setDepart_time(rs.getDate("depart_time"));
                bill.setTripLocation(rs.getString("location"));
                bill.setBookID(rs.getString("id"));
                bill.setTotalPrice(rs.getFloat("totalPrice"));
                bill.setDateBook(rs.getDate("dateBook"));
                bill.setPaymentMethod(rs.getString("payMethod"));
                bill.setReason(rs.getString("reason"));
                bill.setExpireDate(rs.getString("expireDate"));
                bill.setNumberAdult(rs.getInt("quantityAdult"));
                bill.setNumberChild(rs.getInt("quantityChild"));
                bill.setTripCode(rs.getString("code"));
                bill.setThumbnail(rs.getString("thumbnail"));
            }
            System.out.println(bill);
            return bill;

        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) {
        BookDAO dao = new BookDAO();
        dao.getBillByBookId(175);
    }
}
