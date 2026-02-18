package dev.archety.lez01_introduzione;

import java.util.ArrayList;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
    		
    	Object prova = new String("Ciao");
    	System.out.println(prova);
    	
    	Object test = true;
    	
    	Object numero = 3;
    	System.out.println(numero);
    	
    	ArrayList<Object> elenco = new ArrayList<Object>();
    	elenco.add("Ciao");
    	elenco.add(3);
    	
    	System.out.println(elenco);
    	
    }
}
