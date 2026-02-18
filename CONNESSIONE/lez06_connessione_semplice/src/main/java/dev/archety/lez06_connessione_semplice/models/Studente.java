package dev.archety.lez06_connessione_semplice.models;

public class Studente {
	private int id;
	private String nom;
	private String cog;
	private String mat;
	
	public Studente() {
		
	}
	
	public Studente(String nom, String cog, String mat) {
		super();
		this.nom = nom;
		this.cog = cog;
		this.mat = mat;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getCog() {
		return cog;
	}
	public void setCog(String cog) {
		this.cog = cog;
	}
	public String getMat() {
		return mat;
	}
	public void setMat(String mat) {
		this.mat = mat;
	}
	@Override
	public String toString() {
		return "Studente [id=" + id + ", nom=" + nom + ", cog=" + cog + ", mat=" + mat + "]";
	}
	
	
	
	
	
}
