<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/myCss.css">
<jsp:include page="bootstrapHead.jsp"/>
<title>Commercial Real Estate Property Finder</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<h1>Welcome to the CRE Property Finder</h1>
<%-- <c:forEach var="prop" items="${properties}">
	<li>${prop.street}</li>
	</c:forEach> --%>
	<h4>Search for a Property</h4>
		<form action="showProp.do" method="GET">
			Property ID:<input type="text" name="id"/>
			<input type="submit" value="Show Property"/>
		</form>
	<h4>Add a Property to the Database</h4>
		<form action="addProp.do" method="POST">
		<input type="text" name="street" value="Number and Street Name"/>
		<input type="text" name="city" value="City"/>
		<input type="text" name="state" value="State"/>
		<input type="text" name="zipCode" value="ZipCode"/>
		<input type="text" name="numUnits" value="Number of units"/>
		<input type="text" name="ownerId" value="Owner ID"/>
		<input type="text" name="propertyTypeId" value="Property Type ID"/>
		<input type="submit" value="Add Property"/>
		</form>
		
</body>
</html>