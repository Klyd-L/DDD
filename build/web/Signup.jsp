<%-- 
    Document   : Signup
    Created on : Oct 21, 2022, 12:53:34 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <h3 id="heading">Dental Doctor Desk</h3>
                    <br><br><br>
                    <center>
                    <p><b>About Dental Doctor Desk</b><br><br>
                        Are you searching for a 'dentist near you'? Dental Doctor Desk welcomes all patients to our
                        affordable clinic.
                        Call us today to achieve your dental goals by scheduling an appointment or complimentary
                        consultation.</p></center>
                </div>
            <div class="card"><br>
                <h3 id="heading">Patient Detail</h3>

                <form name="newuser" method="post" action="HomeController" style="height:auto;">
                    <table style="padding-left: 23%;">
                        <tr>
                            <td><input type="text" id="fname" required name="fname" placeholder="First Name"
                                       onBlur="charcheck(fname)"><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" id="lname" required name="lname" placeholder="Last Name"
                                       onBlur="charcheck(fname)"><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="email" id="email" required name="email" placeholder="Email"><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" id="password" name="password" placeholder="Password"><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" id="passwordcheck" name="password2"
                                       onBlur="comparepass(password, password2)" placeholder="Confirm Password"><br><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%= request.getAttribute("error")==null?"":request.getAttribute("error")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="submit" name="path" value="signup" >Signup</button>
                            </td>
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
