<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapHead.jsp"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<h1>Update This Property</h1>
<form action="update.do?id=${updateForm.id}" method=GET>
		<input type="hidden" name="id" value="${updateForm.id}"/>
		<input type="text" name="street" value="${updateForm.street}"/>
		<input type="text" name="street2" value="${updateForm.street2}"/>
		<input type="text" name="city" value="${updateForm.city}"/>
		<input type="text" name="state" value="${updateForm.state}"/>
		<input type="text" name="zipCode" value="${updateForm.zipCode}"/>
		<input type="text" name="taxId" value="${updateForm.taxId}"/>
		<input type="text" name="ownerId" value="${updateForm.ownerId}"/>
		<input type="text" name="propertyTypeId" value="${updateForm.propertyTypeId}"/>
		<input type="text" name="numUnits" value="${updateForm.numUnits}"/>
		<input type="text" name="yearBuilt" value="${updateForm.yearBuilt}"/>
		<input type="text" name="ownerOccupied" value="${updateForm.ownerOccupied}"/>
		<input type="submit" value="Update"/>

</form>

</body>
</html>