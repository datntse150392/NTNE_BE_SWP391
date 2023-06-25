/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Nguyen Huy Khai
 */
public class Config {
    public static final String LAYOUT = "/WEB-INF/layouts/main.jsp";
    public static boolean isValidList = false;

    public static boolean isIsValidList() {
        return isValidList;
    }

    public static void setIsValidList(boolean isValidList) {
        Config.isValidList = isValidList;
    }
}