<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               
       <sql:setDataSource var="schoolRegistrationIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/registration"
          user="root"  password=""/>
    
       
         <sql:update dataSource="${schoolRegistrationIS}" var="dbResult">
					
	INSERT INTO reviewed (id, name, surname, birthday, identity_number, gender, ethnicity, email, phone, grade, branch, street_name, suburb, city, province, guardian_name, guardian_surname, identityNumber, guardian_number, guardian_email, relationship, decision)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                
                
		    <sql:param value="${param.applicationNumber}" />
                    <sql:param value="${param.name}" />
                    <sql:param value="${param.surname}" />
                    <sql:param value="${param.birthday}" />
                    <sql:param value="${param.identity_number}" />
                    <sql:param value="${param.gender}" />
                    <sql:param value="${param.ethnicity}" />
                    <sql:param value="${param.email}" />
                    <sql:param value="${param.phone}" />
                    <sql:param value="${param.grade}" />
                    <sql:param value="${param.branch}" />
                    <sql:param value="${param.street_name}" />
                    <sql:param value="${param.suburb}" />
                    <sql:param value="${param.city}" />
                    <sql:param value="${param.province}" />
                    <sql:param value="${param.guardian_name}" />
                    <sql:param value="${param.guardian_surname}" />
                    <sql:param value="${param.identityNumber}" />
                    <sql:param value="${param.guardian_number}" />
                    <sql:param value="${param.guardian_email}" />
                    <sql:param value="${param.relationship}" />
                    <sql:param value="${param.review}" />
                    </sql:update>
                
    <sql:update dataSource="${schoolRegistrationIS}">
        DELETE FROM registration
    WHERE id = ?
    <sql:param value="${param.applicationNumber}" />
</sql:update>
                
      <c:if test="${dbResult>=1}"> 
          
          
          <c:redirect url="menu.jsp" >
            <c:param name="msg" value="Student Has Been Reviewed" />
         </c:redirect>
      </c:if>
       
       
       
    </body>
</html>
