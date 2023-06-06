<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="menuHeader.css">
  
  
</head>
<body>
    
 <header>
    <nav>
      <ul class="horizontal-menu">
        <li><a href="viewApplications.jsp">Review Application</a></li>
        <li><a href="declinedApplications.jsp">Declined Application</a></li>
        <li><a href="acceptedApplications.jsp">Accepted Application</a></li>
      </ul>
    </nav>
  
    <form class="logout-form" action="logout.jsp" method="POST">
      <button type="submit">Logout</button>
    </form>
  </header>

    <br>
     
        
            
       <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/registration"
          user="root"  password=""/>
       
         <sql:query dataSource="${schoolRegistrationIS}" var="result">
            SELECT * from registration where id=?
            <sql:param value="${param.id}" />
        </sql:query>
           
 
    
    <c:forEach var="row" items="${result.rows}">

    <div class="container">
      <h2> Student Information </h2>
      <br>
    <form action="processStudentDetailsProcess.jsp" method="POST">
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
        <input text=grade"" name="grade" value="<c:out value="${row.grade}"/>" readonly>
        </select>
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
        <label> Review</label> 
       <select name="review" required>
       <option value="Accepted">Accept</option>
       <option value="Declined">Decline</option>
       </select>
      </div>

      <div class="form-group">
        <input type="submit" value="Review">
      </div>
        </c:forEach>
    </form>
  </div>
</body>
</html>
