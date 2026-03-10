package dev.archety.lez07_layers;

import java.util.Scanner;

import dev.archety.lez07_layers.dao.CveDao;
import dev.archety.lez07_layers.models.Cve;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	Scanner scan = new Scanner(System.in);
    	boolean inserimAbi = true;

		CveDao dao = new CveDao();
    	
    	while(inserimAbi) {
    		System.out.println("Scegli cosa fare:\n"
    				+ "R - Ricerca\n"
    				+ "S - Stampa tutti\n"
    				+ "I - Inserimento\n"
    				+ "E - Esci");
    		String input = scan.nextLine();
    		
    		switch (input) {
			case "R":
				System.out.println("Inserisci il nome della CVE");
				String cod = scan.nextLine();
				
				Cve c = dao.getByCodice(cod);
				if(c != null)
					System.out.println(c);
				else
					System.out.println("Non trovato");
				break;
			case "S":
				System.out.println(dao.getAll());
				break;
			case "I":
				
				break;
			case "E":
				inserimAbi = !inserimAbi;
				break;

			default:
				System.out.println("Comando non riconosciuto");
				break;
			}
    		
    	}
    }
}
