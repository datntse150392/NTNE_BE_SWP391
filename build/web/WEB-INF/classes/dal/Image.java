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
public class Image {
    private int id;
    private String name, img_url;
    private int tour_id;

    public Image() {
    }

    public Image(int id, String name, String img_url, int tour_id) {
        this.id = id;
        this.name = name;
        this.img_url = img_url;
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

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    @Override
    public String toString() {
        return "Image{" + "id=" + id + ", name=" + name + ", img_url=" + img_url + ", tour_id=" + tour_id + '}';
    }   
}
