<%-- Document : header Created on : Oct 29, 2022, 3:31:14 AM Author : root --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<div>
    <div class="logo">
        <img src="images/hlogo.png" >
    </div>
    <div class="heaader-items" style="float: left;">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li ><a href="services.jsp" id="services" >Services</a>
            </li>

            <li><a href="patient.jsp">Patient</a></li>
            <li><a href="contactus.jsp">Contact&nbsp;Us</a></li>
            <li><a href="feedback.jsp">FeedBack</a></li>
            <div class="div-appointment">
        <a href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %> >Book Appointment</a>
    </div>
        </ul>
    </div>
    
    <div class="hamburgerHeader-items">
                    <ul>
                        <li ><a href="index.jsp">Home</a></li>
                        <li ><a href="services.jsp" id="services" >Services</a>
                        </li>
            
                        <li><a href="patient.jsp">Patient</a></li>
                        <li><a href="contactus.jsp">Contact&nbsp;Us</a></li>
                        <li><a href="feedback.jsp">FeedBack</a></li>
                        <div class="div-appointment">
        <a href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %> >Book Appointment</a>
                    </ul>
                </div>
</div>