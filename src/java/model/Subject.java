/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hongs
 */
public class Subject {
    private int id;
    private String Code, Name;

    public Subject(int id, String Code, String Name) {
        this.id = id;
        this.Code = Code;
        this.Name = Name;
    }

    public Subject() {
    }

    public Subject(String Code) {
        this.Code = Code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    
    
}
