package com.servlet;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.model.Ville;

import kong.unirest.GenericType;
import kong.unirest.Unirest;

/**
 * Servlet implementation class ListeVillesServlet
 * 
 */
@WebServlet("/ListeVillesServlet")
public class ListeVillesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Logger logger = Logger.getLogger(ListeVillesServlet.class.getName());

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Servlet 2 is called.");
		
		
		//------------------------Première façon de récupérer la liste des villes (Unirest)---------------------------
	
		Unirest.config().defaultBaseUrl("http://localhost:8080"); //permet de definir l'URL par defaut
		Unirest.get("/ville").asString();
		
		// Generic types can be resolved by using a GenericType subclass to avoid erasure
		List<Ville> listeVilles = Unirest.get("/ville").asObject(new GenericType<ArrayList<Ville>>(){}).getBody(); //permet d'obtenir la liste de toutes les villes presentes dans la BDD
		System.out.println(listeVilles + "\n");
		
		//------------------------Première façon de récupérer la liste des villes (Unirest)---------------------------
	
		
		
	
		//------------------------Autre façon de récupérer la liste des villes (toujours avec Unirest)------------------
		Gson gson = new GsonBuilder().create();
		
		Ville[] ville = gson.fromJson(Unirest.get("/ville").asString().getBody(), Ville[].class);
		
		
		Type collectionType = new TypeToken<List<Ville>>(){}.getType();
		List<Ville> listeDesVilles = gson.fromJson(Unirest.get("/ville").asString().getBody(), collectionType);
		
		//------------------------Autre façon de récupérer la liste des villes (toujours avec Unirest)------------------
	
		
		System.out.println("Villes à partir de unirest = " + listeDesVilles.toString());

		
	
		
		request.setAttribute("listeDeVilles", listeVilles);
		this.getServletContext().getRequestDispatcher("/WebContent/index2.jsp").forward(request, response);
	}	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Ville> listeVilles = Unirest.get("/ville").asObject(new GenericType<List<Ville>>(){}).getBody(); //permet d'obtenir la liste de toutes les villes presentes dans la BDD
		request.setAttribute("listeDeVilles", listeVilles);
			
		Gson gson = new GsonBuilder().create();
				
		Type collectionType = new TypeToken<List<Ville>>(){}.getType();
		List<Ville> listeVille1 = gson.fromJson(Unirest.get("/ville/trouver").queryString("nomCommune", request.getParameter("first-city-select"))
				.asString().getBody(), collectionType);
		
		List<Ville> listeVille2 = gson.fromJson(Unirest.get("/ville/trouver").queryString("nomCommune", request.getParameter("second-city-select"))
				.asString().getBody(), collectionType);
		
		this.getServletContext().getRequestDispatcher("/WebContent/index2.jsp").forward(request, response);

	}

	public Double degreesToRadians(Double degrees) {
		  return (degrees*Math.PI)/ 180;
	}


	public Double distanceInKmBetweenEarthCoordinates(Double lat1, Double lon1, Double lat2, Double lon2) { //coordonnées à aller chercher dans la BDD
		  Double earthRadiusKm = 6371.0;
	
		  Double dLat = degreesToRadians(lat2-lat1);
		  Double dLon = degreesToRadians(lon2-lon1);
	
		  lat1 = degreesToRadians(lat1);
		  lat2 = degreesToRadians(lat2);
	
		  Double a = Math.sin(dLat/2) * Math.sin(dLat/2) +
		          Math.sin(dLon/2) * Math.sin(dLon/2) * Math.cos(lat1) * Math.cos(lat2); 
		  
		  Double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
		  
		  return earthRadiusKm * c;
	}
}
