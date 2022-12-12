<%-- Document : contactis Created on : Oct 21, 2022, 12:55:31 AM Author : root --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <main class="main">
            <div class="card">
                

                <br><br>
                <table style="top:40%;">
            <tr>
                <td colspan="3">
                    <h2 id="heading">Hours of Operation</h2>
                </td>
            </tr>
            <tr>
                <td>Monday</td>
                <td>:</td>
                <td>9:00am - 5:00pm</td>
            </tr>
            <tr>
                <td>Tuesday</td>
                <td>:</td>
                <td>9:00am - 5:00pm</td>
            </tr>
            <tr>
                <td>Wednesday</td>
                <td>:</td>
                <td>9:00am - 7:00pm</td>
            </tr>
            <tr>
                <td>Thursday</td>
                <td>:</td>
                <td>11:00am - 6:00pm</td>
            </tr>
            <tr>
                <td>Friday</td>
                <td>:</td>
                <td>10:00am - 5:00pm</td>
            </tr>
            <tr>
                <td>Saturday</td>
                <td>:</td>
                <td>10:00am - 3:00pm</td>
            </tr>
        </table>
                
                <table style="top: 80%;">
                    <tr>
                        <td colspan="2">
                            <h2 id="heading">Contact Information</h2>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="tel:4032788088">403-278-8088</a></td>
                    </tr>
                    <tr>
                        <td><a href="https://www.google.com/maps/place/NEXA+DENTAL+(Previously+Crown+Dental)/@50.9586677,-114.073143,17z/data=!3m2!4b1!5s0x53717723c8a55e73:0x4989cf1c95b3b710!4m5!3m4!1s0x537171beb1e67857:0x8e4733574be6fd1c!8m2!3d50.9586677!4d-114.073143"
                               target="_blank" rel="noopener">10601 Southport Rd SW #310,</a></td>
                    </tr>
                    <tr>
                        <td><span> Calgary, AB T2W
                                    3M6</span>
                    </tr>
                    <tr>
                        <td><a href="mailto:info@nexadental.ca">info@nexadental.ca</a></td>
                    </tr>
                </table>
                <!--
    </div> -->
            </div>
            <div class="card">
                <h3 id="heading">Contact Us</h3>
                <form method="post" action="HomeController" style="height: auto;">
                    <table>
                        <tr>
                            <td><input type="text" name="fname" onBlur="charcheck(fname)" placeholder="First Name"
                                       title="Give Your First Name" required></td>
                            <td><input type="text" name="lname" onBlur="charcheck(lname)" placeholder="Last Name"
                                       title="Give Your Last Name" required></td>
                        </tr>
                        <tr>
                            <td><input type="email" name="email" placeholder="Email Please" title="Give Your email" required></td>
                            <td><input type="text" name="mobile" placeholder="Phone / Mobile Please"
                                       title="Give Your Phone / Mobile " onBlur="checkphone(mobile)" required></td>
                        </tr><br>
                        <tr>
                            <td><input type="date" name="date" placeholder="YYYY-MM-DD" title="Give Your Preferred Date" required=""></td>
                            <td><input type="time" name="time" placeholder="Preferred time Please" title="Give Your Preferred time" required>
                            </td>
                        </tr><br>
                        
                        <tr>
                            <td colspan="2"><textarea rows="5" name="msg" placeholder="Message"
                                                      title="Give Message" style=""></textarea></td>
                        </tr>
                        <tr >
                            <td colspan="2"><button type="submit" name="path" src="submit.png"  value="submit"> Submit</button></td>
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