/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sait.ca.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author root
 */
public class DB_contactUs {

    public int size;

    public ArrayList getAllInquiries() {
        String sql = "select * from notes where FK_username=? ;";
        ArrayList result = new ArrayList();
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            //st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
              //  result.add(new Note(rs.getString(3), rs.getTimestamp(4), Integer.parseInt(rs.getString(1))));
            }
            st.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public String addInquiry(String username, String note) {
        String result = "";

        String sql = "insert into queries set userID=?,note=?;";

        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, note);
            int rowsAffected = st.executeUpdate();

            result = (rowsAffected > 0) ? "Note Added." : "";

            st.close();
            conn.close(); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        } catch (SQLException ex) {
            result = "Some Error Occured.";
            ex.printStackTrace();
        }

        return result;
    }

    public boolean deleteNote(String username) {
        boolean result = false;
        String sql = "delete from notes where noteID=?;";
        try {
            Connection conn = getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            int rowsAffected = st.executeUpdate();
            result = (rowsAffected > 0);
            st.close();
            conn.close(); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    private Connection getConnection() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connectionString = "jdbc:mysql://localhost:3306/assign3db";
            String username = "root";
            String password = "password";

            conn = DriverManager.getConnection(connectionString, username, password);

        } catch (SQLException | ClassNotFoundException e) {
        }

        return conn;
    }

}
