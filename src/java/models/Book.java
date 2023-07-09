/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Date;

/**
 *
 * @author baoit
 */
public class Book {
    private int bookID;
    private double totalPrice;
    private String requirement;
    private String cusBook;
    private String cusMail;
    private String cusPhone;
    private String expireDate;
    private boolean status;
    private int payment_id;
    private int account_id;
    private int quantityAdult;
    private int quantityChild; 
    private int trip_id;
    private String cusAddress;
    private String reason;

    public Book() {
    }

    public Book(int bookID, double totalPrice, String requirement, String cusBook, String cusMail, String cusPhone, String expireDate, boolean status, int payment_id, int account_id, int quantityAdult, int quantityChild, int trip_id, String cusAddress, String reason) {
        this.bookID = bookID;
        this.totalPrice = totalPrice;
        this.requirement = requirement;
        this.cusBook = cusBook;
        this.cusMail = cusMail;
        this.cusPhone = cusPhone;
        this.expireDate = expireDate;
        this.status = status;
        this.payment_id = payment_id;
        this.account_id = account_id;
        this.quantityAdult = quantityAdult;
        this.quantityChild = quantityChild;
        this.trip_id = trip_id;
        this.cusAddress = cusAddress;
        this.reason = reason;
    }
    
    

    public Book(double totalPrice, String requirement, String cusBook, String cusMail, String cusPhone, String expireDate, boolean status, int payment_id, int account_id, int quantityAdult, int quantityChild, int trip_id, String cusAddress, String reason) {
        this.totalPrice = totalPrice;
        this.requirement = requirement;
        this.cusBook = cusBook;
        this.cusMail = cusMail;
        this.cusPhone = cusPhone;
        this.expireDate = expireDate;
        this.status = status;
        this.payment_id = payment_id;
        this.account_id = account_id;
        this.quantityAdult = quantityAdult;
        this.quantityChild = quantityChild;
        this.trip_id = trip_id;
        this.cusAddress = cusAddress;
        this.reason = reason;
    }
    
    public Book(double totalPrice, String requirement, String cusBook, String cusMail, String cusPhone, String expireDate, boolean status, int payment_id, int quantityAdult, int quantityChild, int trip_id, String cusAddress, String reason) {
        this.totalPrice = totalPrice;
        this.requirement = requirement;
        this.cusBook = cusBook;
        this.cusMail = cusMail;
        this.cusPhone = cusPhone;
        this.expireDate = expireDate;
        this.status = status;
        this.payment_id = payment_id;
        this.quantityAdult = quantityAdult;
        this.quantityChild = quantityChild;
        this.trip_id = trip_id;
        this.cusAddress = cusAddress;
        this.reason = reason;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public String getCusBook() {
        return cusBook;
    }

    public void setCusBook(String cusBook) {
        this.cusBook = cusBook;
    }

    public String getCusMail() {
        return cusMail;
    }

    public void setCusMail(String cusMail) {
        this.cusMail = cusMail;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getPayment_id() {
        return payment_id;
    }

    public void setPayment_id(int payment_id) {
        this.payment_id = payment_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public int getQuantityAdult() {
        return quantityAdult;
    }

    public void setQuantityAdult(int quantityAdult) {
        this.quantityAdult = quantityAdult;
    }

    public int getQuantityChild() {
        return quantityChild;
    }

    public void setQuantityChild(int quantityChild) {
        this.quantityChild = quantityChild;
    }

    public int getTrip_id() {
        return trip_id;
    }

    public void setTrip_id(int trip_id) {
        this.trip_id = trip_id;
    }

    public String getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(String cusAddress) {
        this.cusAddress = cusAddress;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Override
    public String toString() {
        return "Book{" + "bookID=" + bookID + ", totalPrice=" + totalPrice + ", requirement=" + requirement + ", cusBook=" + cusBook + ", cusMail=" + cusMail + ", cusPhone=" + cusPhone + ", expireDate=" + expireDate + ", status=" + status + ", payment_id=" + payment_id + ", account_id=" + account_id + ", quantityAdult=" + quantityAdult + ", quantityChild=" + quantityChild + ", trip_id=" + trip_id + ", cusAddress=" + cusAddress + ", reason=" + reason + '}';
    }
}
