package dev.archety.lez01_introduzione;

import java.util.ArrayList;

import dev.archety.lez01_introduzione.models.Docente;
import dev.archety.lez01_introduzione.models.Persona;
import dev.archety.lez01_introduzione.models.Studente;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
    	
    	Persona stu_uno = new Studente();
    	stu_uno.setNome("Giovanni");
    	stu_uno.setCognome("Pace");
    	if(stu_uno instanceof Studente) {
    		((Studente) stu_uno).setMatricola("AB12345");
    	}
    	System.out.println(stu_uno);
    	
    	Persona stu_due = new Studente();
    	stu_due.setNome("Valeriua");
    	stu_due.setCognome("Verdi");
    	if(stu_due instanceof Studente) {
        	((Studente) stu_due).setMatricola("AB12346");
    	}
    	System.out.println(stu_due);
    	
    	Persona doc = new Docente();
    	doc.setNome("Cristina");
    	doc.setCognome("Sciarretta");
    	if(doc instanceof Docente) {
    		((Docente) doc).setMateria("Amministrazione");
    	}
    	System.out.println(doc);
    	
    	ArrayList<Persona> elenco = new ArrayList<Persona>();
    	elenco.add(stu_uno);
    	elenco.add(stu_due);
    	elenco.add(doc);
    	
    	for(int i = 0; i<elenco.size(); i++) {
    		System.out.println(elenco.get(i));
    	}
    	
    	
    	
    }
}
