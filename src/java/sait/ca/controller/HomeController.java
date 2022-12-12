/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sait.ca.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.json.Json;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author root
 */
@WebServlet(name = "HomeController", urlPatterns = {"/HomeController"})
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getParameter("path");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String msg = request.getParameter("msg");

        HttpSession session = request.getSession();
        DBOps dbops = new DBOps();
        if (path != null) {
            System.out.println(path);
            if (path.equals("submit")) {
                request.setAttribute("status",
                        dbops.saveMsg(fname, lname, email, mobile, date, time, msg));
                request.getRequestDispatcher("patient.jsp").forward(request, response);
                return;
            } else if (path.equals("signup")) {
                if (fname.equals("") || fname == "" || lname.equals("") || lname == "" || email.equals("") || email == "" || password.equals("") || password == "") {
                    request.setAttribute("error", "Please enter all the required inputs!");
                    request.getRequestDispatcher("Signup.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", null);
                    request.setAttribute("status",
                            dbops.signup(fname, lname, email, password));
                    request.getRequestDispatcher("patient.jsp").forward(request, response);

                }
                return;
            } else if (path.equals("login")) {

                if (email == "" || email.equals("") || password == "" || password.equals("")) {
                    request.setAttribute("error", "Please enter all the required inputs!");
                    request.getRequestDispatcher("patient.jsp").forward(request, response);

                } else {
                    String[] result = dbops.login(email, password);
                    request.setAttribute("login-email",
                            result[0]);
                    if (!request.getAttribute("login-email").equals(email)) {
                        request.setAttribute("error", "Incorrect Username or password!");

                        request.getRequestDispatcher("patient.jsp").forward(request, response);
                        return;
                    }
                    request.setAttribute("error", null);
                    session.setAttribute("user-role", result[1]);

                    request.getRequestDispatcher("Dashboard").forward(request, response);
                }
                return;
            } else if (path.equals("Book")) {
                String name = request.getParameter("name");
                String email2 = request.getParameter("email");
                String phone = request.getParameter("phone");
                String msg2 = request.getParameter("msg");
                String doctor = request.getParameter("doctor");
                String date2 = request.getParameter("day");
                String service = request.getParameter("service");
                request.setAttribute("status",
                        dbops.book(name, phone, email2, date2, time, doctor, msg, service));
                request.setAttribute("login-email",
                        email2);
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                return;
            } else if (path.equals("feedback")) {
                String phone = request.getParameter("phone");
                String doctorName = request.getParameter("doctor");
                String serviceType = request.getParameter("service");
                dbops.c_feedback(fname, lname, email, phone, doctorName, serviceType, msg);
            } else if (path.equals("availibilty")) {

                String date2 = request.getParameter("date");
                String doctorName = request.getParameter("doctorName");
                int x = dbops.checkAvailibility(date2, doctorName, time);
                response.setContentType("text/plain");
                response.getWriter().write("a" + x);
                System.out.println("c" + x);

                return;
            } else if (path.equals("appointment")) {
                request.setAttribute("login-email",
                        email);
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                return;
            }
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
