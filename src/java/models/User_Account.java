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
    private String password;
    private String phone;
    private String address;
    private String role;
    private int accumulatedScore;

    public User_Account() {
    }

    public User_Account(int id, String name, String email, String password, String phone, String address, String role, int accumulatedScore) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.role = role;
        this.accumulatedScore = accumulatedScore;
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

  

 
    
}
