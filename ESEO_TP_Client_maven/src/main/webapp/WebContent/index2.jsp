<%@ page isELIgnored="false" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta charset="utf-8">

<title>ESEO_TP_Client_maven</title>

<html lang="fr">
	<head>
	
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	
		<!-- Custom fonts for this template -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

		<!-- Custom styles for this template -->
		<link href="css/sb-admin-2.min.css" rel="stylesheet">
		
		<!-- Custom styles for this page -->
		<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
  		<link rel="stylesheet" href="jquery/dataTables.bootstrap.min.css" />
  		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
	</head>
	<body>
		<h2 align="center">Liste des villes</h2>
		
		<div class="container"><br/>
		    <div align ="center" class="alert alert-success">         
		        <strong>Voici la liste des villes.</strong> Cliquez sur une ville pour modifier ses données  !
		    </div>
		</div>
		
		<br>
		<form method="POST" action="<c:url value="/ListeVillesServlet" />">
		
			<table id="example" class="table table-striped table-bordered" style="width:100%">
				<thead class="thead-dark">
					<tr>
				        <th>Code_commune_INSEE</th>
				        <th>Nom_commune</th>
				        <th>Code_postal</th>
				        <th>Libelle_acheminement</th>
				      	<th>Ligne_5</th>
				      	<th>Latitude</th>
				      	<th>Longitude</th>
				      	<th>Modif</th>
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
  				            <td>
  				            	<button type="submit" name="action" value="modifierVille" id="boutonModifVille">
									ModifierVille
								</button>
							</td>
				      	</tr>
		        	</c:forEach>
				</tbody>
			</table>
		</form>		
	</body>
	<!-- Jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- Datatables -->
	<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
	<!-- Bootstrap -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function() {
	    $('#example').DataTable();
	} );
	</script>
</html>