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
<title>Property Updated</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
	<h1>Property Updated</h1>
	<c:out value="${update.street}, ${update.city}, ${update.numUnits}"></c:out>

</body>
</html>