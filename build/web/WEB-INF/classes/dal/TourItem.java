/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

/**
 *
 * @author Nguyen Huy Khai
 */
public class TourItem {
    private int id;
    private int tour_id;
    private int destination_id;
    private String script;

    public TourItem() {
    }

    public TourItem(int id, int tour_id, int destination_id, String script) {
        this.id = id;
        this.tour_id = tour_id;
        this.destination_id = destination_id;
        this.script = script;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    public int getDestination_id() {
        return destination_id;
    }

    public void setDestination_id(int destination_id) {
        this.destination_id = destination_id;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
    }

    @Override
    public String toString() {
        return "TourItem{" + "id=" + id + ", tour_id=" + tour_id + ", destination_id=" + destination_id + ", script=" + script + '}';
    }
}
