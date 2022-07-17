/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hongs
 */
public class Instructor {
    private int id;
    private String Name;
    private String UserName;
    private String password;

    public Instructor(int id, String Name, String UserName, String password) {
        this.id = id;
        this.Name = Name;
        this.UserName = UserName;
        this.password = password;
    }

    public Instructor(int id, String Name, String UserName) {
        this.id = id;
        this.Name= Name;
        this.UserName = UserName;
    }

    public Instructor(int id, String UserName) {
        this.id = id;
        this.UserName = UserName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }
    
}


