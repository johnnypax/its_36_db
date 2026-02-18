package dev.archety.lez01_introduzione.models;

public class Docente extends Persona{

	private String materia;

	public String getMateria() {
		return materia;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}

	@Override
	public String toString() {
		return "Docente [materia=" + materia + ", nome=" + nome + ", cognome=" + cognome + "]";
	}
	
	
	
	
	
}
