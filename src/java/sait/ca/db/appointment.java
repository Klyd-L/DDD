/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sait.ca.db;

/**
 *
 * @author root
 */
public class appointment {

    public appointment(String doctor, String date, String msg,String clientName,String time,String service) {
        this.doctor = doctor;
        this.date = date;
        this.msg = msg;
        this.clientName = clientName;
        this.time = time;
        this.service = service;
    }
    private String doctor;
    private String date;
    private String msg;
    private String time;
    private String service;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }
    private String clientName;

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    
}
