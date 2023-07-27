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
public class Trip {
    private int id;
    private String name;
    private boolean availability;
    private float priceAdult;
    private float priceChild;
    private int quantity;
    private Date depart_time;
    private String thumbnail;
    private String location;
    private int tour_id;
    private int current_quantity;
    public Trip() {
    }

    public Trip(int id, String name, boolean availability, float priceAdult, float priceChild, int quantity, Date depart_time, String thumbnail, String location, int tour_id) {
        this.id = id;
        this.name = name;
        this.availability = availability;
        this.priceAdult = priceAdult;
        this.priceChild = priceChild;
        this.quantity = quantity;
        this.depart_time = depart_time;
        this.thumbnail = thumbnail;
        this.location = location;
        this.tour_id = tour_id;
    }

    public Trip(String name, boolean availability, float priceAdult, float priceChild, int quantity, String thumbnail, String location, int tour_id) {
        this.name = name;
        this.availability = availability;
        this.priceAdult = priceAdult;
        this.priceChild = priceChild;
        this.quantity = quantity;
        this.thumbnail = thumbnail;
        this.location = location;
        this.tour_id = tour_id;
    }

    public Trip(String name, boolean availability, float priceAdult, float priceChild, String thumbnail, String location, int tour_id) {
        this.name = name;
        this.availability = availability;
        this.priceAdult = priceAdult;
        this.priceChild = priceChild;
        this.thumbnail = thumbnail;
        this.location = location;
        this.tour_id = tour_id;
    }
    
    public int getCurrent_quantity() {
        return current_quantity;
    }

    public void setCurrent_quantity(int current_quantity) {
        this.current_quantity = current_quantity;
    }

    
    public Trip(Date depart_time) {
        this.depart_time = depart_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isAvailability() {
        return availability;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }

    public float getPriceAdult() {
        return priceAdult;
    }

    public void setPriceAdult(float priceAdult) {
        this.priceAdult = priceAdult;
    }

    public float getPriceChild() {
        return priceChild;
    }

    public void setPriceChild(float priceChild) {
        this.priceChild = priceChild;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getDepart_time() {
        return depart_time;
    }

    public void setDepart_time(Date depart_time) {
        this.depart_time = depart_time;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    @Override
    public String toString() {
        return "Trip{" + "id=" + id + ", name=" + name + ", availability=" + availability + ", priceAdult=" + priceAdult + ", priceChild=" + priceChild + ", quantity=" + quantity + ", depart_time=" + depart_time + ", thumbnail=" + thumbnail + ", location=" + location + ", tour_id=" + tour_id + ", current_quantity=" + current_quantity + '}';
    }

  
}
