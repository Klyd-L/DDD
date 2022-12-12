<%-- 
    Document   : Login
    Created on : Oct 21, 2022, 1:10:43 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Dental Doctor Desk</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="datavalid.js" language="javascript">
        </script>
    </head>

    <body>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main>
            <div id="logo"><img src="Logo.jpg" height="auto" width="auto" alt="LOGO"></div>

            <h2></h2>
            <div id="web">
                <h3 id="heading">Dental Doctor Desk</h3>

                <p><b>About Dental Doctor Desk</b><br><br>
                    Are you searching for a 'dentist near you'? Dental Doctor Desk welcomes all patients to our affordable clinic.
                    Call us today to achieve your dental goals by scheduling an appointment or complimentary consultation.</p>
            </div>
            <div id="contact"><br>
                <h3 id="heading">Login</h3>

                <form name="login" method="post" action=""><table style="top:25%;left:28%; position: absolute;">
                        <tr><td>
                                <input type="email" id="email" name="email" placeholder="Email" required></td></tr><br><tr><td>
                                <input type="password" id="pword" name="pwd" placeholder="Password" required onBlur="passcheck(pwd)"></td></tr><br><tr><td>
                                <input type="image" src="logint.png">
                                <input type="submit" value="Sign up"></td></tr></table>
                </form> </div>
            <div id="header">

                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#" >Services</a>
                        <ul>
                            <li><a href="cosmeticinj.html" title="Cosmetic Injections">Cosmetic Injections</a></li>
                            <li><a href="Invisalign.html" title="Invisalign">Invisalign</a></li>
                            <li><a href="implants.html" title="Dental Implants">Dental Implants</a></li>
                            <li><a href="cleanings.html">Dental Cleanings <br>and Check-Ups</a></li>
                            <li><a href="cleanings.html">Dental Crowns</a></li>
                            <li><a href="bridges.html">Dental Bridges</a></li>
                            <li><a href="cleanings.html">Porcelain Veneers</a></li>
                            <li><a href="cleanings.html">Dentures</a></li>
                            <li><a href="braces.html">Braces</a></li>
                            <li><a href="root_canal.html">Root Canal Therapy</a></li>
                            <li><a href="cleanings.html">Teeth Whitening</a></li>
                            <li><a href="tooth.html">Tooth Extractions</a></li>
                        </ul>
                    </li>

                    <li><a href="patient.html">Patient</a></li>
                    <li><a href="aboutus.html">About&nbsp;Us</a></li>
                    <li><a href="contactus.html">Contact&nbsp;Us</a></li>
                    <li><a href="feedback.html">FeedBack</a></li>
                </ul><div><h3>Appointment</h3></div>
            </div>
        </main>
        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>


    </body>
</html>