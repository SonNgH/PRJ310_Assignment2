/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hongs
 */
public class Group {
    private int id;
    private String code;
    private Subject subject;
    private String term;
    private String campus;
    private String department;
    private Instructor instructor;

    public Group(int id, String code, Subject subject, String term, String campus, String department, Instructor instructor) {
        this.id = id;
        this.code = code;
        this.subject = subject;
        this.term = term;
        this.campus = campus;
        this.department = department;
        this.instructor = instructor;
    }

    public Group(int id) {
        this.id = id;
    }

    public Group() {
    }

    public int getId() {
        return id;
    }

    public Group(int id, String code, Subject subject, String term, String campus) {
        this.id = id;
        this.code = code;
        this.subject = subject;
        this.term = term;
        this.campus = campus;
    }


    public Group(int id, String code, Subject subject) {
        this.id = id;
        this.code = code;
        this.subject = subject;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Instructor getInstructor() {
        return instructor;
    }

    public void setInstructor(Instructor instructor) {
        this.instructor = instructor;
    }
    
    
    
}