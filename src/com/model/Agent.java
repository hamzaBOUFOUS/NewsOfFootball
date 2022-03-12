package com.model;

public class Agent {

	private long idAgent;
	private String nom;
	private String prenom;
	private String role;
	private String login;
	private String password;
	
	
	
	public Agent(String nom, String prenom, String role, String login, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.role = role;
		this.login = login;
		this.password = password;
	}

	public Agent() {
		// TODO Auto-generated constructor stub
	}
	
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getIdAgent() {
		return idAgent;
	}

	public void setIdAgent(long idAgent) {
		this.idAgent = idAgent;
	}


}
