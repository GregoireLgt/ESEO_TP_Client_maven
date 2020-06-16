<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta charset="utf-8">

<title>ESEO_TP_Client_maven</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">


<html lang="fr">
	<body>
		<h2 align="center">Calculateur de distance</h2>
		
		
		<label for="first-city-select">Première ville :<br></label>
		<select id="first-city-select" name="first-city-select" required>
		<c:forEach var="ville" items="${listeDeVilles}" varStatus="loop">
			<option value="<c:out value="${ville.getNomCommune()}"/>"> <c:out value="${ville.getNomCommune()}"/> </option>
		</c:forEach>
		</select>
		
		<br>
		
		<label for="second-city-select">Deuxième ville :<br></label>
		<select id="second-city-select" name="second-city-select" required>
		<c:forEach var="ville2" items="${listeDeVilles}" varStatus="loop2">
			<option value="<c:out value="${ville2.getNomCommune()}"/>"> <c:out value="${ville2.getNomCommune()}"/> </option>
		</c:forEach>
		</select>
		
		
		<p>Distance entre les 2 villes = </p>
	</body>
</html>
