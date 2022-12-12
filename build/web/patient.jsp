<%-- Document : patient Created on : Oct 21, 2022, 12:50:36 AM Author : root --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>

    <head>
        <title>Dental Doctor Desk</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="datavalid.js" language="javascript">
        </script>
        <style type="text/css">
            main{
                font-size: 30px;
            }
        </style>
    </head>

    <body>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main  class="main">
            <div class="scard">
                <div class="card">
                    <h3 id="heading">Doctors with us</h3>
                    <figure >
                        <img src="images/doc1.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption  >
                            Dr. Rushik Dhaduk graduated Magna Cum Laude in 2006 from Bhavnagar University, India. He provides comprehensive general dentistry for the entire family and he has an avid interest in implantology and orthodontics. Dr. Rushik Dhaduk served as an Instructor at Dharmsinh Desai University, India. To contribute to the academic field, he penned his clinical experiences and the academic knowledge into a book titled “Essentials of Dentistry”. He is one of the youngest authors in the field of Dental Science. He mentored number of international dentists to gain dental license in Canada.

                            He strongly believes in continuous education to keep himself updated with the science and newer technologies. When he is not straightening the teeth, he enjoys hiking and photography.
                        </figcaption>
                    </figure>
                    <figure >
                        <img src="images/doc2.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption  >
                            Dr. Ritesh Donga earned his BDS from Bhavnagar University, India in 2005. He expounded on his undergraduate education by completing the National Dental Examination Board of Canada and is awarded as a registered dentist in Canada. He has extensive training and experience in cosmetic dentistry. Dr. Ritesh Donga is practicing dentistry for past 15 years. Apart from general dentistry, he enjoys all other aspects of general dentistry. He provides high-quality dental care using the finest materials available. He also invests in continuous education to ensure that your visits to our dental office are pleasant comfortable and efficient. </figcaption>
                    </figure>
                    <figure >
                        <img src="images/doc3.jpg" style="float: left; height: 300px;width: 300px" />
                        <figcaption>
                            Dr. Darshan Vithlani graduated with a Bachelor of Dental Surgery from Gujarat University, India. After completing his graduation in 2010, he practiced in India for 5 years to serve his community. He then moved to Canada to expand his horizon in dentistry and completed the NDEB Canada equivalency process to become a registered general dentist. Dr. Darshan believes in working with the patients as a team by sharing his knowledge and educating them about their oral health. He enjoys providing all aspects of general dentistry to different age groups. He is committed to upgrading his knowledge about the latest techniques and materials to provide excellent dental care and a comfortable experience for all his patients. Outside the clinic, he loves to spend time with family, traveling and sketching.</figcaption>
                    </figure>
                </div>
                <div class="card" style="text-align: center;">
                    <h3 id="heading">Book Appointment</h3>

                    <form name="user" method="post" action="HomeController" style="padding-left: 30%; padding-top: 15%;height: auto">
                        <table >
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
                                    <%= request.getAttribute("error") == null ? "" : request.getAttribute("error")%>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <button type="submit" name="path" value="login"> Login</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </main>
        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>

    </body>

</html>