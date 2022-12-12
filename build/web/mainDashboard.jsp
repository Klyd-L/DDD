<%-- 
    Document   : mainDashboard
    Created on : Nov 8, 2022, 2:44:10 PM
    Author     : root
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="datavalid.js" language="javascript"></script>
        <script type="text/javascript">
            function expand(id) {
                var sub = document.getElementById(id);
                var arrow = document.getElementById(id + '_arrow')
                if (sub.style.display === 'none') {
//                    alert(sub.style.display);
                    sub.style.display = 'block';
                    arrow.innerHTML = "▼"

                } else {
                    sub.style.display = 'none';
                    arrow.innerHTML = "△"

                }

            }
        </script>
        <style >
            td{
                padding: 5px 10px 5px 10px;
                border: 2px solid;
            }
            th{
                border: 2px solid
            }
        </style>
    </head>
    <body>
        <header>
            <%@include  file="Includes/header.jsp" %>
        </header>
        <main class="main">
            <% if (session.getAttribute("user-role") != null && session.getAttribute("user-role").equals("admin")) {%>
            <h1>Hello <%= session.getAttribute("user-role")%> </h1>
            <div class="tab">
                <h4>All Appointments</h4>
                <div class="align_right_img" style="width: 15%" id="ma_arrow" onclick="expand('ma')"> △ </div>
                <div class="subTab" id="ma" style="display: block">
                    <table>
                        <tr> 
                            <th>Client Name</th>
                            <th>Doctor Name</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Service</th>
                            <th>Message</th>
                        </tr>
                        <c:forEach var="i" begin="1" end="${sessionScope.myallappointments.size()}" step="1">
                            <tr>
                                <td>${sessionScope.myallappointments.get(i-1).getClientName()}</td>
                                <td>${sessionScope.myallappointments.get(i-1).getDoctor()}</td>
                                <td>${sessionScope.myallappointments.get(i-1).getDate()}</td>
                                <td>${sessionScope.myallappointments.get(i-1).getTime()}</td>
                                <td>${sessionScope.myallappointments.get(i-1).getService()}</td>
                                <td>${sessionScope.myallappointments.get(i-1).getMsg()}</td>
                            </tr>
                        </c:forEach>
                    </table> 
                </div>
            </div>

            <div class="tab">
                <h4>All Queries</h4>
                <div class="align_right_img" style="width: 15%" id="aq_arrow" onclick="expand('aq')"> △ </div>

                <div class="subTab" id="aq">
                    <table>
                        <tr> 
                            <th>First Name</th>
                            <th>last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Date of Birth</th>
                            <th>Preferred Time</th>
                            <th>Message</th>
                        </tr>
                        <c:forEach var="i" begin="1" end="${sessionScope.allqueries.size()}" step="1">
                            <tr>
                                <td>${sessionScope.allqueries.get(i-1).getFname()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getLname()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getEmail()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getPhone()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getDob()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getPreferredTime()}</td>
                                <td>${sessionScope.allqueries.get(i-1).getMsg()}</td>
                            </tr>
                        </c:forEach>
                    </table> 
                </div>
            </div>

            <div class="tab">
                <h4>All Users</h4>
                <div class="align_right_img" style="width: 15%" id="au_arrow" onclick="expand('au')"> △ </div>
                <div class="subTab" id="au">
                    <table>
                        <tr> 
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>User-Role</th>
                        </tr>

                        <c:forEach var="i" begin="1" end="${sessionScope.allusers.size()}" step="1">
                            <tr>
                                <td>${sessionScope.allusers.get(i-1).getFname()}</td>
                                <td>${sessionScope.allusers.get(i-1).getLname()}</td>
                                <td>${sessionScope.allusers.get(i-1).getEmail()}</td>
                                <td>${sessionScope.allusers.get(i-1).getRole()}</td>
                            </tr>
                        </c:forEach>
                    </table> 
                </div>
            </div>



            <div class="tab">

                <h4>All Feedback</h4>
                <div class="align_right_img" style="width: 15%" id="af_arrow" onclick="expand('af')"> △ </div>

                <div class="subTab" id="af">
                    <table>
                        <tr> 
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Doctor Name</th>
                            <th>Service Name</th>
                            <th>Message</th>
                        </tr>
                        <c:forEach var="i" begin="1" end="${sessionScope.allfeedbacks.size()}" step="1">
                            <tr>
                                <td>${sessionScope.allfeedbacks.get(i-1).getFname()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getLname()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getEmail()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getPhone()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getDoctorName()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getServiceName()}</td>
                                <td>${sessionScope.allfeedbacks.get(i-1).getMsg()}</td>
                            </tr>
                        </c:forEach>
                    </table> 
                </div>
            </div>



            <%} else if (session.getAttribute("user-role") != null && session.getAttribute("user-role").equals("user")) {%>
            <h4>Hello <%= session.getAttribute("user-role")%> </h4>

            <div class="tab">
                <h4>My Appointments</h4>
                <div class="align_right_img" style="width: 15%" id="ma_arrow" onclick="expand('ma')"> △ </div>

                <div class="subTab" id="ma">
                    <table>
                        <tr> 
                            <th>Client Name</th>
                            <th>Doctor Name</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Service</th>
                            <th>Message</th>
                        </tr>
                        <c:forEach var="i" begin="1" end="${sessionScope.myappointments.size()}" step="1">
                            <tr>
                                <td>${sessionScope.myappointments.get(i-1).getClientName()}</td>
                                <td>${sessionScope.myappointments.get(i-1).getDoctor()}</td>
                                <td>${sessionScope.myappointments.get(i-1).getDate()}</td>
                                <td>${sessionScope.myappointments.get(i-1).getTime()}</td>
                                <td>${sessionScope.myappointments.get(i-1).getService()}</td>
                                <td>${sessionScope.myappointments.get(i-1).getMsg()}</td>
                            </tr>
                        </c:forEach>
                    </table> 
                </div                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           >
            </div>


            <% }%>


        </main>
        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>
    </body>
</html>
