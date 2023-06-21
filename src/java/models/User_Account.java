/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author baoit
 */
public class User_Account {
    private int id;
    private String name;
    private String email;
    private int totalTour;
    private String password;
    private String phone;
    private String address;
    private String role;
    private int accumulatedScore;
    private boolean isActive;
    private String linkImg;

    public User_Account() {
    }

    public User_Account(int id, String name, String email, int totalTour, String password, String phone, String address, String role, int accumulatedScore, boolean isActive, String linkImg) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.totalTour = totalTour;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.role = role;
        this.accumulatedScore = accumulatedScore;
        this.isActive = isActive;
        this.linkImg = linkImg;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTotalTour() {
        return totalTour;
    }

    public void setTotalTour(int totalTour) {
        this.totalTour = totalTour;
    }
 
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getAccumulatedScore() {
        return accumulatedScore;
    }

    public void setAccumulatedScore(int accumulatedScore) {
        this.accumulatedScore = accumulatedScore;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }
    
    

    @Override
    public String toString() {
        return "User_Account{" + "id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", phone=" + phone + ", address=" + address + ", role=" + role + ", accumulatedScore=" + accumulatedScore + '}';
    }
    
    

 
    
}
