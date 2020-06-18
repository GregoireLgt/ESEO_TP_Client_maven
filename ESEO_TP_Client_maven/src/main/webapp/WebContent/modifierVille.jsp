<%@ page isELIgnored="false" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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
		<h2 align="center">Modifier les attributs d'une ville</h2>
		
		<div class="container"><br/>
		    <div align ="center" class="alert alert-success">         
		        <strong>Cliquez sur un champ.</strong> Modifier ensuite la valeur de l'attribut.
		    </div>
		</div>
		
		<form method="POST" action="<c:url value="/ModifierVilleServlet" />">
		
			<div align="center" class="form-group">
				
				<label for"codeCommuneINSEE">Code_commune_INSEE </label>
				<input type"text" name="codeCommuneINSEE" class="form-control" id="codeCommuneINSEE" value="<c:out value="${ codeCommuneINSEE }"/>" required/>
			
			</div>
			
			<br>
			<div align="center" class="form-group">
			
				<label for"libelleAcheminement">Libelle_acheminement</label>
				<input type"text" name="libelleAcheminement" class="form-control" id="libelleAcheminement" value="<c:out value="${ libelleAcheminement }"/>" required/>
			
			</div>
			
			<br>
			
			<div align="center" class="form-group">
			
				<label for"ligne_5">Ligne_5</label>
				<input type"text" name="ligne_5" class="form-control" id="ligne_5" value="<c:out value="${ ligne_5 }"/>" required/>
			
			</div>
			
			<br>
			
			<div align="center" class="form-group">
			
				<label for"latitude">Latitude</label>
				<input type"text" name="latitude" class="form-control" id="latitude" value="<c:out value="${ latitude }"/>" required/>
			
			</div>
			
			<br>
			
			<div align="center" class="form-group">
			
				<label for"longitude">Longitude</label>
				<input type"text" name="longitude" class="form-control" id="longitude" value="<c:out value="${ longitude }"/>" required/>
			
			</div>
			
			<br>
			
			<div align="center">
				<button type="submit" name="action" value="modifierVille" id="boutonModifVille">
					ModifierVille
				</button>
			</div>
		</form>		
	</body>
	<!-- Copyright Section -->
  	<section class="copyright py-4 text-center text-white">
		<div class="container">
	      <p align = "center"> <small>Copyright &copy; ESEO LD S8 - ESEO</small> </p>
	    </div>
	</section>
 </html>
 
 
