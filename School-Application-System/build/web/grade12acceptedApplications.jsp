<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Applicant Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            overflow: hidden;
            margin: 0;
        }

        .container {
            display: flex;
            width: 100%;
        }

        .menu {
            width: 250px;
            background-color: #f9f9f9;
            color: #333;
            transform: translateX(-250px);
            overflow-y: auto;
            position: fixed;
            top: 0;
            bottom: 0;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
        }

        .menu ul {
            list-style-type: none;
            padding: 0;
        }

        .menu li {
            padding: 20px;
            cursor: pointer;
            transition: background-color 0.2s, filter 0.2s;
        }

        .menu li:hover {
            background-color: #e0e0e0;
            filter: brightness(90%);
        }

        .menu li:focus-within {
            background-color: #e0e0e0;
            filter: brightness(90%);
        }

        .menu li:not(:hover):not(:focus-within) {
            filter: blur(1px);
        }

        .menu ul ul {
            list-style-type: none;
            padding: 0;
            margin-left: 20px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
        }

        .menu li:hover > ul {
            max-height: 200px; /* Set a suitable max height */
        }

        .menu ul ul li {
            padding: 10px;
            cursor: pointer;
            transition: background-color 0.2s, filter 0.2s;
        }

        .menu ul ul li:hover {
            background-color: #e0e0e0;
            filter: brightness(90%);
        }

        .content-container {
            flex: 1;
            padding: 20px;
            background-color: #fff;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
        }

        .menu-button {
            font-size: 24px;
            cursor: pointer;
            padding: 20px;
        }

        .close-button {
            font-size: 24px;
            cursor: pointer;
            padding: 20px;
            position: absolute;
            right: 0;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #444;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    
      <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/registration"
        user="root"  password=""/>
       
      <sql:query dataSource="${schoolRegistrationIS}" var="result">
        SELECT * from reviewed
        WHERE grade = 'grade12' AND decision= 'Accepted';
        </sql:query>
        
      
    <div class="menu" id="menu">
        <span class="close-button" onclick="toggleMenu()">&times;</span>
        <ul>
            <li>Grade 8
                <ul>
                    <a href="grade8Menu.jsp"><li>Review Applications</li><a/>
                        <a href="grade8acceptedApplications.jsp"><li>Accepted Applications</li></a>
                        <a href="grade8declinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
            <li>Grade 9
                <ul>
                <a href="grade9Menu.jsp"><li>Review Applications</li><a/>
                        <a href="grade9acceptedApplications.jsp"><li>Accepted Applications</li></a>
                        <a href="grade9declinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
            <li>Grade 10
                <ul>
                <a href="grade10Menu.jsp"><li>Review Applications</li><a/>
                        <a href="grade10acceptedApplications.jsp"><li>Accepted Applications</li></a>
                        <a href="grade10declinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
            <li>Grade 11
                <ul>
                <a href="grade11Menu.jsp"><li>Review Applications</li><a/>
                        <a href="grade11acceptedApplications.jsp"><li>Accepted Applications</li></a>
                        <a href="grade11declinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
            <li>Grade 12
                <ul>
                <a href="grade12Menu.jsp"><li>Review Applications</li><a/>
                        <a href="grade12acceptedApplications.jsp"><li>Accepted Applications</li></a>
                        <a href="grade12declinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
            <li>Overall
                <ul>
                <a href="overallMenu.jsp"><li>Total Applications</li><a/>
                <a href="overallacceptedApplications.jsp"><li>Accepted Applications</li></a>
                <a href="overalldeclinedApplications.jsp"><li>Declined Applications</li></a>
                </ul>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="menu-button" onclick="toggleMenu()">&#9776;</div>
       <div class="content-container">
            <h1>Student Application Management</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Grade</th>
                    <th>Branch</th>
                    <th>Actions</th>
                </tr>
               <c:forEach var="row" items="${result.rows}">
           
            <tr>
           
            <td><c:out value="${row.name}"/> <c:out value="${row.surname}"/></td>
            <td><c:out value="${row.grade}"/></td>
            <td><c:out value="${row.branch}"/></td>
            <td><a href="viewApplicationDetailsReviewed.jsp?id=<c:out value="${row.id}"/>">Details</a></td>
            </tr>
			
            </c:forEach>
           </table>
            </table>
        </div>
    </div>
    <script>
        function toggleMenu() {
            const menu = document.getElementById("menu");
            const contentContainer = document.querySelector(".content-container");
            if (menu.style.transform === "translateX(-250px)") {
                menu.style.transform = "translateX(0)";
                contentContainer.style.marginLeft = "250px";
            } else {
                menu.style.transform = "translateX(-250px)";
                contentContainer.style.marginLeft = "0";
            }
        }
    </script>
</body>
</html>