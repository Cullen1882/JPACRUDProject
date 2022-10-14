<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<h1>You are at the homepage</h1>
<c:forEach var="prop" items="${properties}">
	<li>${prop.street}</li>
	</c:forEach>
</body>
</html>