package dev.archety.lez01_introduzione.models;

public class Docente extends Persona{

	private String materia;

	public Docente() {
		
	}
	
	public Docente(String nome, String cognome, String materia) {
		super(nome, cognome);
		this.materia = materia;
	}
	
	public String getMateria() {
		return materia;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}
	
	public String stampaDoc() {
		return "Docente [nome=" + nome + ", cognome=" + cognome + "...]";
	}
	
	
}
