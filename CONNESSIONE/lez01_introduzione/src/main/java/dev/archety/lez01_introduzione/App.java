package dev.archety.lez01_introduzione;

import java.util.ArrayList;

import dev.archety.lez01_introduzione.models.Persona;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
    	
//    	Persona gio = new Persona("Giovanni", "Pace");
//    	
//    	System.out.println(gio.toString());
//    	System.out.println(gio);
    	
    	ArrayList<Persona> elenco = new ArrayList<Persona>();
    	
    	Persona gio = new Persona("Giovanni", "Pace");
    	Persona val = new Persona("Valeria", "Verdi");
    	Persona mar = new Persona("Marika", "Mariko");
    	
    	elenco.add(gio);
    	elenco.add(val);
    	elenco.add(mar);
    	
    	for(int i=0; i<elenco.size(); i++) {
    		System.out.println( elenco.get(i) );
    	}
    }
}
