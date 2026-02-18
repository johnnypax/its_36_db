package dev.archety.lez01_introduzione.models;

public class Studente extends Persona {

	private String matricola;
	
	public Studente() {
		
	}
	
	public Studente(String nome, String cognome, String matricola) {
		super(nome, cognome);
		this.matricola = matricola;
	}
	
	public String stampaStudente() {
		return "Studente [nome=" + nome + ", cognome=" + cognome + " ....]";
	}


	public String getMatricola() {
		return matricola;
	}

	public void setMatricola(String matricola) {
		this.matricola = matricola;
	}
	
	
	
}
