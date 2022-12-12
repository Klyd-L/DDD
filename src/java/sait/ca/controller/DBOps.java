/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sait.ca.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import sait.ca.db.appointment;
import sait.ca.db.queries;
import sait.ca.db.users;
import sait.ca.db.feedback;


/**
 *
 * @author root
 */
public class DBOps {

    public String saveMsg(String fname, String lname, String email, String phone, String dob, String preferredTime, String msg) {
        String result = "";
        String sql = "insert into queries set fname=?,lname=?, email=?,phone=?,dob=?,preferredTime=?,msg=?;";
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, fname);
            st.setString(2, lname);
            st.setString(3, email);
            st.setString(4, phone);
            st.setString(5, dob);
            st.setString(6, preferredTime);
            st.setString(7, msg);

            int rowsAffected = st.executeUpdate();
            result = (rowsAffected > 0) ? "Query Submitted!" : "";
            st.close();
            conn.close();
        } catch (SQLException e) {
            System.out.print(e);
            result = "Some error occured. Please try again later.";
        }
        return result;
    }

    public String signup(String fname, String lname, String email, String password) {
        String result = "";
        String sql = "insert into users set fname=?,lname=?, email=?,password=?,role='user';";
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, fname);
            st.setString(2, lname);
            st.setString(3, email);
            st.setString(4, password);

            int rowsAffected = st.executeUpdate();
            result = (rowsAffected > 0) ? "Query Submitted!" : "";
            st.close();
            conn.close();
        } catch (SQLException e) {
            System.out.print(e);
            result = "Some error occured. Please try again later.";
        }
        return result;
    }

    public String[] login(String email, String password) {
        String sql = "select * from users where email=?;";
        String[] result = new String[2];
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                if (rs.getString(4).equals(email) && rs.getString(5).equals(password)) {
                    result[0] = email;
                    result[1] = rs.getString(6);
                } else {
                    result[0] = "Invalid Login!";
                    result[1] = "Login.jsp";
                }
            }
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public ArrayList<appointment> getMyAppointments(String email) {
        String sql = "select doctor,date,msg,clientName,time,service from appointments where email=?;";
        ArrayList<appointment> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                result.add(new appointment(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public String book(String clientName, String phone, String email, String date,String time, String doctor, String msg,String service) {
        String result = "";
        String sql = "insert into appointments set clientName=?,phone=?, email=?,date=?,doctor=?,msg=?,time=?,service=?;";
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, clientName);
            st.setString(2, phone);
            st.setString(3, email);
            st.setString(4, date);
            st.setString(5, doctor);
            st.setString(6, msg);
            st.setString(7, time);
            st.setString(8, service);

 
            int rowsAffected = st.executeUpdate();
            result = (rowsAffected > 0) ? "Query Submitted!" : "";
            st.close();
            conn.close();
        } catch (SQLException e) {
            System.out.print(e);
            result = "Some error occured. Please try again later.";
        }
        return result;
    }

    private Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connectionString = "jdbc:mysql://localhost:3306/dentalDoctorDesk";
            String username = "root";
            String password = "password";
            conn = DriverManager.getConnection(connectionString, username, password);
        } catch (SQLException ex) {
            System.out.println(ex);
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);

            ex.printStackTrace();
        }

        return conn;
    }

    public ArrayList<appointment> getAllAppointments() {
        String sql = "select doctor,date,msg,clientName,time,service from appointments";
        ArrayList<appointment> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                result.add(new appointment(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6)));
            }

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public ArrayList<queries> getAllQueries() {
        String sql = "select * from queries";
        ArrayList<queries> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                result.add(new queries(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public ArrayList<users> getAllUsers() {
        String sql = "select * from users";
        ArrayList<users> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                result.add(new users(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(6)));
            }

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public ArrayList<feedback> getAllFeedbacks() {
        String sql = "select * from feedbacks";
        ArrayList<feedback> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                result.add(new feedback(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException e) {
        }
        return result;
    }

    public String c_feedback(String fname, String lname, String email, String phone, String doctorName, String serviceType, String msg) {
        String result = "";

        String sql = "insert into feedbacks set fname=?,lname=?, email=?, phone=?, doctorName=?,serviceName=?,msg=?;";
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, fname);
            st.setString(2, lname);
            st.setString(3, email);
            st.setString(4, phone);
            st.setString(5, doctorName);
            st.setString(6, serviceType);
            st.setString(7, msg);

            int rowsAffected = st.executeUpdate();
            result = (rowsAffected > 0) ? "Feedback Submitted!" : "";
            st.close();
            conn.close();
        } catch (SQLException e) {
            System.out.print(e);
            result = "Some error occured. Please try again later.";
        }
        return result;
    }

    public int checkAvailibility(String date2, String doctorName, String time) {

         String sql = "select count(*) from appointments where date=? AND time=? AND doctor=?;";
        ArrayList<appointment> result = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, date2);
            st.setString(2, time);
            st.setString(3, doctorName);
            ResultSet rs = st.executeQuery();
            System.out.println(doctorName+date2+time);
            rs.next();
            System.out.println("a"+rs.getInt(1));
            int i = 0;
//            rs.close();
//            st.close();
//            conn.close();
            System.out.println("b"+rs.getRow());
            return rs.getInt(1);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

}
//SELECT count(*) FROM appointments where date='23/10/2022' AND doctor = 'Rushik Dhadhuk' AND time ='9'