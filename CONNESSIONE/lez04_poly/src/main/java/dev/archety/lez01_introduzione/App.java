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
    	
    	Persona stu_uno = new Studente("Giovanni", "Pace", "AB12345");
    	Persona stu_due = new Studente("Valeria", "Verdi", "AB12346");
    	Persona doc = new Docente("SCristina", "Sciarretta", "Amministrazione");
    	
    	ArrayList<Persona> elenco = new ArrayList<Persona>();
    	elenco.add(stu_uno);
    	elenco.add(stu_due);
    	elenco.add(doc);
    	
    	for(int i = 0; i<elenco.size(); i++) {
    		Persona per = elenco.get(i);
    		
    		if(per instanceof Studente) {
    			Studente stu = (Studente) per;
    			System.out.println(stu.stampaStudente()); 
    		}
    		
    		if(per instanceof Docente) {
    			Docente doce = (Docente) per; 
    			System.out.println(doce.stampaDoc()); 
    		}
    		
    	}
    	
    	
    	
    }
}
