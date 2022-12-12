<%-- 
    Document   : Appointment
    Created on : Oct 21, 2022, 12:54:12 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main>
            <h2>Request an Appointment</h2>

            <form action="">
                <input type="text" id="fname" name="fname" placeholder="First Name"><br>
                <input type="text" id="lname" name="lname" placeholder="Last Name"><br>
                <input type="email" id="email" name="email" placeholder="Email"><br>
                <input type="button" value="NEW PATIENT">
                <input type="button" value="EXISTING PATIENT"><br>
                <label for="appointment"> Appointment Date:</label>
                <input type="date" id="appointment" name="appointment"><br>
                <input type="submit" value="Submit">
            </form>
        </main>
        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>
    </body>
</html>