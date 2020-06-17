<%@ page isELIgnored="false" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta charset="utf-8">

<title>ESEO_TP_Client_maven</title>

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


<html lang="fr">
	<body>
	<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
		<h2 align="center">Calculateur de distance</h2>
		
		<div class="container"><br/>
		    <div align ="center" class="alert alert-success">         
		        <strong>Choisissez les deux villes.</strong> La distance sera ensuite automatiquement calculée !
		    </div>
		</div>
		
		<form method="POST" action="<c:url value="/VilleServlet" />">
		
			<div class="form-group">
				
				<label for="first-city-select">Première ville :<br></label>
				<select class="form-control" id="first-city-select" name="first-city-select" required>
				<c:forEach var="ville" items="${listeDeVilles}" varStatus="loop">
					<option value="<c:out value="${ville.getNomCommune()}"/>"> <c:out value="${ville.getNomCommune()}"/> </option>
				</c:forEach>
				</select>
			</div>
			
			<br>
			<div class="form-group">
			
				<label for="second-city-select">Deuxième ville :<br></label>
				<select class="form-control" id="second-city-select" name="second-city-select" required>
				<c:forEach var="ville2" items="${listeDeVilles}" varStatus="loop2">
					<option value="<c:out value="${ville2.getNomCommune()}"/>"> <c:out value="${ville2.getNomCommune()}"/> </option>
				</c:forEach>
				</select>
			</div>
			
			<br>
			
			<div align="left">
				<button type="submit" name="action" value="calculerDistance" id="boutonCalculDistance">
					Calculer la distance
				</button>
			</div>
		</form>		
		
		<label for"distanceEntreDeuxVilles">Distance entre deux villes : </label>
		<input type"text" name="distanceEntreDeuxVilles" class="form-control" id="distanceEntreDeuxVilles" value="<c:out value="${ distanceEntreDeuxVilles }"/>" readonly required/>
		
	</body>
</html>