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
    
        <c:set var="id" value="${param.applicationNumber}" />
         <c:set var="name" value="${param.name}" />
         <c:set var="surname" value="${param.surname}" />
         <c:set var="identity_number" value="${param.identity_number}" />
         <c:set var="gender" value="${param.gender}" />
         <c:set var="ethnicity" value="${param.ethnicity}" />
         <c:set var="email" value="${param.email}" />
         <c:set var="phone" value="${param.phone}" />
         <c:set var="grade"  value="${param.grade}" />
         <c:set var="branch" value="${param.branch}" />
         <c:set var="street_name" value="${param.street_name}" />
         <c:set var="suburb" value="${param.suburb}" />
         <c:set var="city"  value="${param.city}" />
         <c:set var="province" value="${param.province}" />
         <c:set var="guardian_name"  value="${param.guardian_name}" />
         <c:set var="guardian_surname" value="${param.guardian_surname}" />
         <c:set var="identityNumber" value="${param.identityNumber}" />
         <c:set var="guardian_number" value="${param.guardian_number}" />
         <c:set var="guardian_email" value="${param.guardian_email}" />
         <c:set var="relationship"  value="${param.relationship}" />
         <c:set var="id" value="${param.applicationNumber}" />
          <c:set var="decision"  value="${param.decision}" />
    
       
       
<sql:update dataSource="${schoolRegistrationIS}" var="dbResult">
    
    UPDATE reviewed
    SET name = ?, surname = ?, birthday = ?, identity_number = ?, gender = ?, ethnicity = ?, email = ?, phone = ?,
        grade = ?, branch = ?, street_name = ?, suburb = ?, city = ?, province = ?, guardian_name = ?,
        guardian_surname = ?, identityNumber = ?, guardian_number = ?, guardian_email = ?, relationship = ?, decision =?
    WHERE id = ?; 
    
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
    <sql:param value="${param.decision}" />
    <sql:param value="${id}" /> 
</sql:update>

      <c:if test="${dbResult>=1}"> 
          
          
          <c:redirect url="menu.jsp" >
            <c:param name="msg" value="Student Has Been Reviewed" />
         </c:redirect>
      </c:if>
       
       
       
    </body>
</html>
