<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/myCss.css">
<jsp:include page="bootstrapHead.jsp"/>
<title>Commercial Real Estate Property Finder</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
	<div class="searchBars">
		<h1>Welcome to the CRE Property Finder</h1>
<%-- <c:forEach var="prop" items="${properties}">
	<li>${prop.street}</li>
	</c:forEach> --%>
		<h4>Search for a Property</h4>
			<form action="showProp.do" method="GET">
				<h5>Property ID:</h5><input type="text" name="id"/>
						<input type="submit" value="Show Property"/>
			</form>
		<h4>Add a Property to the Database</h4>
			<form action="addProp.do" method="POST">
				<label for="street">Number and Street:</label>
				<input type="text" name="street" id="street"/>
				<label for="street2">Unit or Suite #:</label>
				<input type="text" name="street2" id="street2"/>
				<label for="city">City:</label>
				<input type="text" name="city" id="city"/>
				<label for="state">State:</label>
				<input type="text" name="state" id="state"/>
				<label for="zipCode">Zip Code:</label>
				<input type="text" name="zipCode" id="zipCode"/>
				<label for="numUnits">Number of Units:</label>
				<input type="text" name="numUnits" id="numUnits"/>
				<label for="ownerId">Owner ID:</label>
				<input type="text" name="ownerId" id="ownerId"/>
				<label for="propertyTypeId">Property Type ID:</label>
				<input type="text" name="propertyTypeId" id="propertyTypeId"/>
				<input type="submit" value="Add Property"/>
			</form>
			<hr>
	</div>	
</body>
</html>