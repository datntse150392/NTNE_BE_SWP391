/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.time;
import java.sql.Date;

/**
 *
 * @author baoit
 */
public class ListBooked {
 
    private String name;
    private double totalPrice;
    private String thumbnail;
    private int trip_id;
    private int tour_id;
    private int quantityAdult;
    private int quantityChild;
    private boolean status;
    private Date departtime;
    private int BookingID;
    private String code;

    public ListBooked() {
    }

    public ListBooked(String name, double totalPrice, String thumbnail, int trip_id, int tour_id, int quantityAdult, int quantityChild, boolean status, Date departtime, int BookingID, String code) {
        this.name = name;
        this.totalPrice = totalPrice;
        this.thumbnail = thumbnail;
        this.trip_id = trip_id;
        this.tour_id = tour_id;
        this.quantityAdult = quantityAdult;
        this.quantityChild = quantityChild;
        this.status = status;
        this.departtime = departtime;
        this.BookingID = BookingID;
        this.code = code;
    }

    @Override
    public String toString() {
        return "ListBooked{" + "name=" + name + ", totalPrice=" + totalPrice + ", thumbnail=" + thumbnail + ", trip_id=" + trip_id + ", tour_id=" + tour_id + ", quantityAdult=" + quantityAdult + ", quantityChild=" + quantityChild + ", status=" + status + ", departtime=" + departtime + ", BookingID=" + BookingID + ", code=" + code + '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getTrip_id() {
        return trip_id;
    }

    public void setTrip_id(int trip_id) {
        this.trip_id = trip_id;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getDeparttime() {
        return departtime;
    }

    public void setDeparttime(Date departtime) {
        this.departtime = departtime;
    }

    public int getBookingID() {
        return BookingID;
    }

    public void setBookingID(int BookingID) {
        this.BookingID = BookingID;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    


}
