<%-- 
Document   : temp
Created on : Nov 1, 2022, 7:50:58 AM
Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dental Doctor Desk</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="datavalid.js" language="javascript">
        </script>   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script type="text/javascript">
            var weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
            var d = new Date();
            function selectDoctor(docName) {
                var index_expandable = document.getElementById('scard');
                index_expandable.style.display = "none";
                var index_expandable2 = document.getElementById('scard2');
                index_expandable2.style.display = "block";
                document.getElementById('docName').value = docName;
                document.getElementById('day').innerHTML = "<option value=''>Select</option>";


                if (docName === "Rushik Dhadhuk") {
                    for (var i = 0; i < 15; i++) {
                        d.setDate(d.getDate() + 1);
                        var fullDate = d.getDate() + "/" + d.getMonth() + "/" + d.getFullYear();
                        var day = weekday[d.getDay()];
                        if (day === 'Monday' || day === 'Tuesday' || day === 'Wednesday')
                        {
                            document.getElementById('day').innerHTML += "<option value='" + fullDate + "' >" + fullDate + " (" + day + ")</option>";
                        }
                    }
                } else if (docName === "Ritesh Donga") {
                    for (var i = 0; i < 15; i++) {
                        d.setDate(d.getDate() + 1);
                        var fullDate = d.getDate() + "/" + d.getMonth() + "/" + d.getFullYear();
                        var day = weekday[d.getDay()];
                        if (day === 'Monday' || day === 'Wednesday' || day === 'Friday')
                        {
                            document.getElementById('day').innerHTML += "<option value='" + fullDate + "' >" + fullDate + " (" + day + ")</option>";
                        }
                    }
                } else if (docName === "Darshan Vithlani") {
                    for (var i = 0; i < 15; i++) {
                        d.setDate(d.getDate() + 1);
                        var fullDate = d.getDate() + "/" + d.getMonth() + "/" + d.getFullYear();
                        var day = weekday[d.getDay()];
                        if (day === 'Wednesday' || day === 'Thursday' || day === 'Friday')
                        {
                            document.getElementById('day').innerHTML += "<option value='" + fullDate + "' >" + fullDate + " (" + day + ")</option>";
                        }
                    }
                }
            }

            function checkAvailibilty() {
                document.getElementById('time').innerHTML = "";
                document.getElementById('time').innerHTML = "<option value=''>Select</option>";

                for (var i = 9; i < 17; i++) {
                    $.ajax({
                        url: 'HomeController',
                        async: false,
                        data: {
                            path: 'availibilty',
                            date: document.getElementById('day').value,
                            doctorName: document.getElementById('docName').value,
                            time: i
                        },
                        success: function (responseText) {
                            console.log(i + responseText);
                            if ((responseText) === "a0")
                            {
                                document.getElementById('time').innerHTML += "<option value='" + i + "'>" + i + ":00</option>";
                            }
                        }
                    });
                }
            }
        </script>

    </head>
    <body>
        <% if (request.getAttribute("status") == "Query Submitted!") {
        %><script>alert("Appointment Booked");</script>        <%
            }%>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main class="main" >
            <div id="scard"  >
                <div class="threecard" style="min-height: 1000px">
                    <figure >
                        <img src="images/doc1.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption  >
                            Dr. Rushik Dhaduk graduated Magna Cum Laude in 2006 from Bhavnagar University, India. He provides comprehensive general dentistry for the entire family and he has an avid interest in implantology and orthodontics. Dr. Rushik Dhaduk served as an Instructor at Dharmsinh Desai University, India. To contribute to the academic field, he penned his clinical experiences and the academic knowledge into a book titled “Essentials of Dentistry”. He is one of the youngest authors in the field of Dental Science. He mentored number of international dentists to gain dental license in Canada.

                            He strongly believes in continuous education to keep himself updated with the science and newer technologies. When he is not straightening the teeth, he enjoys hiking and photography.
                        </figcaption>
                    </figure>
                    <div style="width: 100%;text-align: right">
                        <button type="button" onclick="selectDoctor('Rushik Dhadhuk')">Book</button>
                    </div>  </div>
                <div class="threecard" style="min-height: 1000px">
                    <figure >
                        <img src="images/doc2.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption  >
                            Dr. Ritesh Donga earned his BDS from Bhavnagar University, India in 2005. He expounded on his undergraduate education by completing the National Dental Examination Board of Canada and is awarded as a registered dentist in Canada. He has extensive training and experience in cosmetic dentistry. Dr. Ritesh Donga is practicing dentistry for past 15 years. Apart from general dentistry, he enjoys all other aspects of general dentistry. He provides high-quality dental care using the finest materials available. He also invests in continuous education to ensure that your visits to our dental office are pleasant comfortable and efficient. </figcaption>
                    </figure>
                    <div style="width: 100%;text-align: right;">
                        <button type="button" onclick="selectDoctor('Ritesh Donga')">Book</button>
                    </div></div>
                <div class="threecard" style="min-height: 1000px">
                    <figure >
                        <img src="images/doc3.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption>
                            Dr. Darshan Vithlani graduated with a Bachelor of Dental Surgery from Gujarat University, India. After completing his graduation in 2010, he practiced in India for 5 years to serve his community. He then moved to Canada to expand his horizon in dentistry and completed the NDEB Canada equivalency process to become a registered general dentist. Dr. Darshan believes in working with the patients as a team by sharing his knowledge and educating them about their oral health. He enjoys providing all aspects of general dentistry to different age groups. He is committed to upgrading his knowledge about the latest techniques and materials to provide excellent dental care and a comfortable experience for all his patients. Outside the clinic, he loves to spend time with family, traveling and sketching.</figcaption>
                    </figure>
                    <div style="width: 100%;text-align: right">
                        <button type="button" onclick="selectDoctor('Darshan Vithlani')">Book</button>
                    </div>
                </div>

            </div>
            <div id="scard2" style="width: 100%;text-align: center;margin-left: 600px;display: none">
                <div class="card" style="padding-top: 100px">
                    <h3>Fill Details</h3>
                    <form method="post" action="HomeController" >
                        <select name="day" id="day" onchange="checkAvailibilty()">
                            <option>Select Day</option>
                        </select>
                        <br>
                        <select name="time" id="time" >
                            <option>Select Time</option>
                        </select>
                        <br>
                        <input type="text" name="name" placeholder="Client Name" required/>
                        <br>
                        <input type="text" name="email" readonly value='<%= request.getAttribute("login-email")%>'/>
                        <br>
                        <input type="phone" name="phone" placeholder="000-000-0000" required/>
                        <br>
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
                        <br>
                        <input type="text" name="msg" placeholder="Any message for doctor!" />
                        <br>
                        <input type="text" name="doctor" id="docName" value="" hidden/>
                        <br>


                        <button type="submit" name="path" value="Book">Book</button>

                    </form>
                </div>
            </div>
        </main>

        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>
    </body>
</html>
