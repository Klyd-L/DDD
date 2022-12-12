<%-- 
    Document   : newjspInvisalign
    Created on : Oct 21, 2022, 1:10:34 AM
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
                <h3 id="heading">Sign Up</h3>

                <form name="newuser" method="post" action="">
                    <table style="top:25%;left:28%; position: absolute;">
                        <tr><td><input type="text" id="fname" required name="fname" placeholder="First Name" onBlur="charcheck(fname)"><br>
                            </td></tr><tr><td>
                                <input type="text" id="lname" required name="lname" placeholder="Last Name" onBlur="charcheck(fname)"><br>
                            </td></tr><tr><td>
                                <input type="email" id="email" required name="email" placeholder="Email"><br></td></tr><tr><td>
                                <input type="password" id="password" name="pwd1" placeholder="Password"><br></td></tr><tr><td>
                                <input type="password" id="passwordcheck" name="pwd2" onBlur="comparepass(pwd1, pwd2)" placeholder="Confirm Password"><br><br></td></tr><tr><td>
                                <input type="image" src="submit.png"></td></tr></table>
                </form> 
            </div>
            <div id="header">

                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#" style="background-color:#F7EDED;">Services</a>
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
