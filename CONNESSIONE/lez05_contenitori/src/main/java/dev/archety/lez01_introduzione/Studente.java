package dev.archety.lez01_introduzione;

import java.util.ArrayList;
import java.util.Collection;

public class Studente {

	private String nominativo;
	
	private Collection<String> corsi;
	
	public void aggiungiCorso(String nome) {
		if(corsi == null)
			corsi = new ArrayList<String>();
		
		corsi.add(nome);
	}
	
}
