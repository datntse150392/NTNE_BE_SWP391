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
public class Image {
    private int id;
    private String name, imgUrl;
    private int tour_id;

    public Image() {
    }

    public Image(int id, String name, String imgUrl, int tour_id) {
        this.id = id;
        this.name = name;
        this.imgUrl = imgUrl;
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

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }    

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    @Override
    public String toString() {
        return "Image{" + "id=" + id + ", name=" + name + ", imgUrl=" + imgUrl + ", tour_id=" + tour_id + '}';
    }   
}
