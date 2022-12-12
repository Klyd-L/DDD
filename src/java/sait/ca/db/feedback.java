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
public class feedback {
    private String fname;
    private String lname;
    private String email;
    private String phone;
    private String doctorName;
    private String serviceName;
    private String msg;

    public feedback(String fname, String lname, String email, String phone, String doctorName, String serviceName, String msg) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.phone = phone;
        this.doctorName = doctorName;
        this.serviceName = serviceName;
        this.msg = msg;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    
}
