package com.model;

public class Categorie {

	private long idCat;
	private String nom;
	private String description;
	
	public Categorie(String nom, String description) {
		super();
		this.nom = nom;
		this.description = description;
	}

	public Categorie() {
		// TODO Auto-generated constructor stub
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getIdCat() {
		return idCat;
	}

	public void setIdCat(long idCat) {
		this.idCat = idCat;
	}

}
