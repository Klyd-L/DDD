<%-- 
    Document   : feedback.jsp
    Created on : Nov 15, 2022, 3:34:38 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <title>JSP Page</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <script src="datavalid.js" language="javascript"></script>
        <script type="text/javascript">
            function hide() {
                var fname = document.getElementById('fname');
                var lname = document.getElementById('lname');
                var email = document.getElementById('email');
                var phone = document.getElementById('phone');
                if (document.getElementById('anonymously').checked) {
                    fname.value = 'Anonymous';
                    lname.value = 'User';
                    email.value = '-';
                    phone.value = '-';
                    fname.readOnly = true;
                    lname.readOnly = true;
                    email.readOnly = true;
                    phone.readOnly = true;
                }else{
                    fname.value = '';
                    lname.value = '';
                    email.value = '';
                    phone.value = '';
                    fname.readOnly = false;
                    lname.readOnly = false;
                    email.readOnly = false;
                    phone.readOnly = false;
                }

            }
        </script>
    </head>
    <body>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main>
            <div class="card" style="margin: 10px 30% 10px 25%; text-align: center; height:auto;">
                <h3 id="heading" >Your Feedback</h3>
                <form method="post" action="HomeController" style="padding-left: 2%;">
                    <table style="margin: auto"> 
                        <tr>
                            <td><input type="text" name="fname" id="fname" onBlur="charcheck(fname)" placeholder="First Name"
                                       title="Give Your First Name" required></td>
                            <td><input type="text" name="lname" id="lname" onBlur="charcheck(lname)" placeholder="Last Name"
                                       title="Give Your Last Name" required></td>
                        </tr>
                        <tr>
                            <td><input type="email" name="email" id="email" placeholder="Email Please" title="Give Your email" required ></td>
                            <td><input type="text" name="phone" id="phone" placeholder="Phone / Mobile Please"
                                       title="Give Your Phone / Mobile " onBlur="checkphone(mobile)" required></td>
                        </tr><br>
                        <tr>
                            <td colspan="2">
                                <input type="checkbox" value="anonymously" id="anonymously" onchange="hide()">Send Anonymously</input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="doctor">Doctor Name</label>
                            </td>
                            <td>
                                <label for="service">Service Name</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <select name="doctor" id="doctor">
                                    <option value="">Select</option>
                                    <option value="Dr. Rushik Dhaduk">Dr. Rushik Dhaduk</option>
                                    <option value="Dr. Ritesh Donga">Dr. Ritesh Donga</option>
                                    <option value="Dr. Darshan Vithlani">Dr. Darshan Vithlani</option>
                                </select>
                            </td>
                            <td>
                                <select name="service" id="service">
                                    <option value="">Select</option>
                                    <option value="Cosmetic Injections">Cosmetic Injections</option>
                                    <option value="Invisalign">Invisalign</option>
                                    <option value="Dental Implants">Dental Implants</option>
                                    <option value="Dental Cleanings">Dental Cleanings</option>
                                    <option value="Dental Crowns">Dental Crowns</option>
                                    <option value="Bridges">Bridges</option>
                                    <option value="Dentures">Dentures</option>
                                    <option value="Braces">Braces</option>
                                    <option value="Root Canal Therapy">Root Canal Therapy</option>
                                    <option value="Teeth Whitening">Teeth Whitening</option>
                                    <option value="Porcelain Veneers">Porcelain Veneers</option>
                                    <option value="Tooth Extraction">Tooth Extraction</option>
                                </select>
                            </td>
                        </tr><br>
                        <tr>
                            <td colspan="2"><textarea rows="5" name="msg" placeholder="Message"
                                                      title="Give Message" style=""></textarea></td>
                        </tr>
                        <tr >
                            <td colspan="2"><button type="submit" name="path" src="submit.png"  value="feedback"> Submit</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </main>
        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>
    </body>
</html>
