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
		<h2 align="center">Liste des villes</h2>
		
		<div class="container"><br/>
		    <div align ="center" class="alert alert-success">         
		        <strong>Voici la liste des villes.</strong> Cliquez sur une ville pour modifier ses données  !
		    </div>
		</div>
		
		<br>
		<form method="POST" action="<c:url value="/ListeVillesServlet" />">
		
			<table data-page-length='50'>
				<thead>
					<tr>
				        <th>Code_commune_INSEE</th>
				        <th>Nom_commune</th>
				        <th>Code_postal</th>
				        <th>Libelle_acheminement</th>
				      	<th>Ligne_5</th>
				      	<th>Latitude</th>
				      	<th>Longitude</th>
		      		</tr>
				</thead>
				<tbody>
					<c:forEach var="ville" items="${listeDeVilles}" varStatus="loop">
		        		<tr>
				            <td><c:out value="${ville.getCodeCommune()}"/></td>
				            <td><c:out value="${ville.getNomCommune()}"/></td>
				            <td><c:out value="${ville.getCodePostal()}"/></td>
   				            <td><c:out value="${ville.getLibelleAcheminement()}"/></td>
   				            <td><c:out value="${ville.getLigne()}"/></td>
   				            <td><c:out value="${ville.getLatitude()}"/></td>
  				            <td><c:out value="${ville.getLongitude()}"/></td>
				      	</tr>
		        	</c:forEach>
				</tbody>
			</table>
		</form>		
	</body>
</html>