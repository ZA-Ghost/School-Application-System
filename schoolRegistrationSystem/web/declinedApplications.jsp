<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Declined Students</title>
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
 
           <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/registration"
        user="root"  password=""/>
       
         <sql:query dataSource="${schoolRegistrationIS}" var="result">
        SELECT * from reviewed where decision = "declined";
        </sql:query>
        
        <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
        </div>
        
        
        <table id="dataTable">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Grade</th>
                <th>Decision</th>
                <th>Details</th>
            </tr>   
        
           <c:forEach var="row" items="${result.rows}">
           
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.surname}"/></td>
                <td><c:out value="${row.grade}"/></td>
                <td><c:out value="${row.decision}"/></td>
                <td><a href="viewApplicationDetails.jsp?id=<c:out value="${row.id}"/>">View Details</a></td>
            </tr>
			
            </c:forEach>
           </table>
        
           <script src="searchTable.js"></script>
        
    </body>
</html>

