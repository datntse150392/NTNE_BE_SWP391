/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;

/**
 *
 * @author Nguyen Huy Khai
 */
public class Bill {
    //Thông tin khách hàng
    private String cusName; 
    private String cusAddress;
    private String cusMail;
    private String cusPhone;
    private String requirement;
    
    //Thông tin Booking
    private String bookID;
    private int numberAdult;
    private int numberChild;
    private float totalPrice;
    private Date dateBook;
    private String paymentMethod;
    private String reason;
    private Date expireDate;
    
    //Thông tin Trip
    private String tripCode;
    private String tripName;
    private Date depart_time;
    private String tripLocation;
    private String thumbnail;

    public Bill() {
    }

    public Bill(String cusName, String cusAddress, String cusMail, String cusPhone, String requirement, String bookID, int numberAdult, int numberChild, float totalPrice, Date dateBook, String paymentMethod, String reason, Date expireDate, String tripCode, String tripName, Date depart_time, String tripLocation, String thumbnail) {
        this.cusName = cusName;
        this.cusAddress = cusAddress;
        this.cusMail = cusMail;
        this.cusPhone = cusPhone;
        this.requirement = requirement;
        this.bookID = bookID;
        this.numberAdult = numberAdult;
        this.numberChild = numberChild;
        this.totalPrice = totalPrice;
        this.dateBook = dateBook;
        this.paymentMethod = paymentMethod;
        this.reason = reason;
        this.expireDate = expireDate;
        this.tripCode = tripCode;
        this.tripName = tripName;
        this.depart_time = depart_time;
        this.tripLocation = tripLocation;
        this.thumbnail = thumbnail;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(String cusAddress) {
        this.cusAddress = cusAddress;
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

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public int getNumberAdult() {
        return numberAdult;
    }

    public void setNumberAdult(int numberAdult) {
        this.numberAdult = numberAdult;
    }

    public int getNumberChild() {
        return numberChild;
    }

    public void setNumberChild(int numberChild) {
        this.numberChild = numberChild;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getDateBook() {
        return dateBook;
    }

    public void setDateBook(Date dateBook) {
        this.dateBook = dateBook;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    

    public String getTripCode() {
        return tripCode;
    }

    public void setTripCode(String tripCode) {
        this.tripCode = tripCode;
    }

    public String getTripName() {
        return tripName;
    }

    public void setTripName(String tripName) {
        this.tripName = tripName;
    }

    public Date getDepart_time() {
        return depart_time;
    }

    public void setDepart_time(Date depart_time) {
        this.depart_time = depart_time;
    }

    public String getTripLocation() {
        return tripLocation;
    }

    public void setTripLocation(String tripLocation) {
        this.tripLocation = tripLocation;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

//    @Override
    public String toString() {
        return "Bill{" + "cusName=" + cusName + ", cusAddress=" + cusAddress + ", cusMail=" + cusMail + ", cusPhone=" + cusPhone + ", requirement=" + requirement + ", bookID=" + bookID + ", numberAdult=" + numberAdult + ", numberChild=" + numberChild + ", totalPrice=" + totalPrice + ", dateBook=" + dateBook + ", paymentMethod=" + paymentMethod + ", reason=" + reason + ", expireDate=" + expireDate + ", tripCode=" + tripCode + ", tripName=" + tripName + ", depart_time=" + depart_time + ", tripLocation=" + tripLocation + ", thumbnail=" + thumbnail + '}';
    }
}
