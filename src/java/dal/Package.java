/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

/**
 *
 * @author thuyk
 */
public class Package {
    private int id;
    private String name;
    private String type;
    private float priceAdult, priceChild;
    private int tour_id;

    public Package() {
    }

    public Package(int id, String name, String type, float priceAdult, float priceChild, int tour_id) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.priceAdult = priceAdult;
        this.priceChild = priceChild;
        this.tour_id = tour_id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }
    
    
}
