/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author thuyk
 */
public class Tour {

    private int id;
    private String name;
    private float priceAdult;
    private float priceChild;
    private String thumbnail;
    private String location;

    public Tour() {
    }

    public Tour(int id, String name, float priceAdult, float priceChild, String thumbnail, String location) {
        this.id = id;
        this.name = name;
        this.priceAdult = priceAdult;
        this.priceChild = priceChild;
        this.thumbnail = thumbnail;
        this.location = location;
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

    @Override
    public String toString() {
        return "Tour{" + "id=" + id + ", name=" + name + ", priceAdult=" + priceAdult + ", priceChild=" + priceChild + ", thumbnail=" + thumbnail + ", location=" + location + '}';
    }
}
