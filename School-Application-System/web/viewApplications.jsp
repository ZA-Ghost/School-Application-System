<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: View Applications</title>
        <link rel="stylesheet" href="tableCSS.css"> 
        <link rel="stylesheet" href="tableMenuCSS.css"> 
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
       
        <br>
 
        <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/registration"
        user="root"  password=""/>
       
         <sql:query dataSource="${schoolRegistrationIS}" var="result">
        SELECT * from registration
        </sql:query>
        
        
        <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
        </div>
        
        <table id="dataTable">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Review</th>
            </tr>   
        
             <c:forEach var="row" items="${result.rows}">
            
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.surname}"/></td>
                <td><a href="viewApplicationDetails.jsp?id=<c:out value="${row.id}"/>">Review</a></td>
            </tr>
			
            </c:forEach>
           </table>
        
       <script src="searchTable.js"></script>
        
    </body>
</html>
