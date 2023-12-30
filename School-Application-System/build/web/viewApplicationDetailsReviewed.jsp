<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Applicant Management</title>
    <style>
       .container1 {
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
        
        body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4; /* Set a light background color for the whole page */
    }

    .container {
      width: 80%;
      margin: 0 auto;
      background-color: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center; /* Center the form content */
    }

    .form-group {
      flex: 0 0 48%; /* Adjust the width of the form groups as needed */
      margin-bottom: 10px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      color: #333;
    }

    input,
    select {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
    }

    h2 {
      width: 100%;
      margin-top: 20px; /* Add space between headings and form groups */
      clear: both; /* Ensure headings are on their own lines */
    }

    input[type="submit"] {
      background-color: white;
      color: black;
      cursor: pointer;
      width: 900px; /* Remove full width for the button */
      padding: 10px; /* Add some padding for better appearance */
      margin-top: 10px; /* Add margin at the top */
      display: block; /* Place the button on its own line */
      margin-left: auto; /* Center the button */
      margin-right: auto; /* Center the button */
      border: 2px solid white;
    }

    input[type="submit"]:hover {
      background-color: #808080
    }

    a {
      color: #007bff;
    }

    a:hover {
      text-decoration: underline;
    }

    .center {
      text-align: center;
    }

    .button-group {
      width: 100%;
      text-align: center;
    }
    </style>
</head>
<body>
    
    
    
      <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/registration"
        user="root"  password=""/>
       
      <sql:query dataSource="${schoolRegistrationIS}" var="result">
        SELECT * from reviewed;
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
        </ul>
    </div>
        
        
       <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/registration"
          user="root"  password=""/>
       
         <sql:query dataSource="${schoolRegistrationIS}" var="result">
            SELECT * from reviewed where id=?
            <sql:param value="${param.id}" />
        </sql:query>
           
 
    
    <c:forEach var="row" items="${result.rows}">
<div class="container1">
        <div class="menu-button" onclick="toggleMenu()">&#9776;</div>
        <div class="content-container">
    
      <h2> Student Information </h2>
      <br>
    <form action="updateStudentDetailsProcess.jsp" method="POST">
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text"  name="name"value="<c:out value="${row.name}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="surname">Surname:</label>
        <input type="text" name="surname" value="<c:out value="${row.surname}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="birthday">Birthday:</label>
        <input type="date" name="birthday" value="<c:out value="${row.birthday}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="identity_number">Identity Number:</label>
        <input type="number" name="identity_number" value="<c:out value="${row.identity_number}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="gender">Gender:</label>
        <input type="text" name="gender" value="<c:out value="${row.gender}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="ethnicity">Ethnicity:</label>
        <input type="text" name="ethnicity" value="<c:out value="${row.ethnicity}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="email">Email Address:</label>
        <input type="email"  name="email" value="<c:out value="${row.email}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" value="<c:out value="${row.phone}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="grade">Grade:</label>
        <input type="text" id="grade" name="grade" value="<c:out value="${row.grade}"/>" readonly>
        </select>
      </div>
        
        <div class="form-group">
        <label for="branch">Branch</label>
        <input type="text" id="branch" name="branch" value="<c:out value="${row.branch}"/>" readonly>
      </div>
      
        
        <br>
      <h2>Current Residence Information</h2>
      <br>
      <div class="form-group">
        <label for="street_name">Street Name:</label>
        <input type="text" id="street_name" name="street_name" value="<c:out value="${row.street_name}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="suburb">Suburb:</label>
        <input type="text" name="suburb" value="<c:out value="${row.suburb}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="<c:out value="${row.city}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="province">Province:</label>
        <input type="text" id="province" name="province" value="<c:out value="${row.province}"/>" readonly>
      </div>
      <br>
      <h2>Guardian Information</h2>
      <br>
      <div class="form-group">
        <label for="guardian_name">Name:</label>
        <input type="text" id="guardian_name" name="guardian_name" value="<c:out value="${row.guardian_name}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="guardian_surname">Surname:</label>
        <input type="text" id="guardian_surname" name="guardian_surname" value="<c:out value="${row.guardian_surname}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="guardian_number">Number:</label>
        <input type="text" id="guardian_number" name="guardian_number" value="<c:out value="${row.guardian_number}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="guardian_email">Email Address:</label>
        <input type="email" id="guardian_email" name="guardian_email" value="<c:out value="${row.guardian_email}"/>" readonly>
      </div>

      <div class="form-group">
        <label for="relationship">Relationship:</label>
        <input type="text" id="relationship" name="relationship" value="<c:out value="${row.relationship}"/>" readonly>
      </div>
      
      
      <div class="form-group">
        <label for="identityNumber">Identity Number:</label>
        <input type="text" id="identityNumber" name="identityNumber" value="<c:out value="${row.identityNumber}"/>">
      </div>
      
       <div class="form-group">
      <label>Application Number</label>
    <input type="text" name="applicationNumber" value="<c:out value="${row.id}"/>" readonly>
    </div>
    
      <div class="form-group">
        <label> Review</label> 
       <select name="decision" required>
       <option value="Accepted">Accept</option>
       <option value="Declined">Decline</option>
       </select>
      </div>

      <div class="form-group">
        <input type="submit" value="Review">
      </div>
        </c:forEach>
    </div>
    </form>
      
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
  </div>
</body>
</html>
