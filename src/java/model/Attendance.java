/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hongs
 */
public class Attendance {
    int id;
    Slot slot;
    boolean check;
    Student student;
    String taker;
    String recordtime;

    public Attendance(int id, Slot slot, boolean check,  Student student, String taker, String recordtime) {
        this.id = id;
        this.slot = slot;
        this.check = check;
        this.student = student;
        this.taker = taker;
        this.recordtime = recordtime;
    }

    public String getRecordtime() {
        return recordtime;
    }

    public void setRecordtime(String recordtime) {
        this.recordtime = recordtime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }



    public String getTaker() {
        return taker;
    }

    public void setTaker(String taker) {
        this.taker = taker;
    }
    
}
