<%-- 
    Document   : index
    Created on : Oct 21, 2022, 12:07:04 AM
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
        
        
        <main class="main" >

            <br>
            <div >
                <div class="card">
                    <h3>Your Trusted Dental Clinic in Willow Park.</h3>
                    <p>
                        At Nexa Dental, we value your oral health just as much as you do. Our team of highly trained professionals provides the most comfortable and convenient dental experience for you and your whole family. Our dental clinic in Willow Park  strives to address and treat all your specific dental needs in order for you to achieve optimal oral health. During your biannual dental checkups and cleanings, our dental team will always take time to answer any questions or concerns regarding your oral health or specific dental treatments. Our state of the art technology and our skilled dentists guarantee satisfaction for each patient that enters our care. Contact our dentists in Willow Park to schedule a consultation today!
                    </p>
                    <p>
                        Are you searching for a 'dentist near you'? Nexa Dental welcomes all patients to our affordable dental office in Willow Park. Call us today to achieve your dental goals by scheduling an appointment or complimentary consultation.s
                    </p>
                    <br>
                    <div style="text-align: center">
                        <button onclick="window.location = 'patient.jsp'">Login</button> 
                        <button onclick="window.location = 'Signup.jsp'" >Signup</button>
                    </div>
                </div> 
                <div class="card" style="text-align: center">
                    <img src="images/homeIcon.jpg" style="width: 95%;height: auto;border-radius: 10px; padding-top: 15%;">
                </div>
                
            </div>
        </main>

        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>

    </body>

</html>
