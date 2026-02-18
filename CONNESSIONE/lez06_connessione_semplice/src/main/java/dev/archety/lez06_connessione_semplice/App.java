package dev.archety.lez06_connessione_semplice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.MysqlDataSource;

import dev.archety.lez06_connessione_semplice.models.Studente;

public class App 
{
    public static void main( String[] args )
    {
//    	int a = 2;
//    	int b = 3;
//    	
//    	int somma = a + b;
//    	
//    	System.out.println(somma);
    	
//    	int[] elenco = new int[4];
//    	elenco[0] = 7;
//    	elenco[1] = 40;
//    	elenco[2] = 90;
//    	elenco[3] = 73;
//    	
//    	for(int i=0; i<elenco.length; i++) {
//    		System.out.println(elenco[i]);
//    	}
    	
    	
    	
    	

    	try {
    		MysqlDataSource ds = new MysqlDataSource();
	    	ds.setServerName("localhost");
	    	ds.setPort(3306);
	    	ds.setUser("root");
	    	ds.setPassword("toor");
	    	ds.setDatabaseName("lez10_scuola");
	    	ds.setUseSSL(false);
	    	ds.setAllowPublicKeyRetrieval(true);
	    	
	    	Connection conn = ds.getConnection();
	    	
	    	//Estrai tutti gli studenti
//	    	String query = "SELECT studenteID, nome, cognome, matricola FROM Studente";
//	    	PreparedStatement ps = conn.prepareStatement(query);
//	    	
//	    	ResultSet rs = ps.executeQuery();
//	    	while(rs.next()) {
//	    		Studente stu = new Studente();
//	    		stu.setId( rs.getInt("studenteID") );		// stu.setId( rs.getInt(1) );
//	    		stu.setNom( rs.getString("nome") );			// stu.setNom( rs.getString(2) );
//	    		stu.setCog( rs.getString("cognome") );		// stu.setCog( rs.getString(3) );
//	    		stu.setMat( rs.getString("matricola") );	// stu.setMat( rs.getString(4) );
//	    		
//	    		System.out.println(stu);
//	    	}
	    	
	    	
	    	//Inserire uno studente
//	    	Studente gio = new Studente("Giovanni", "Pace", "AB12345");
//	    	
//	    	String query = "INSERT INTO Studente(nome, cognome, matricola) VALUES "
//	    			+ "('" + gio.getNom() +  "', '" + gio.getCog() +  "', '" + gio.getMat() +  "')";
//	    	PreparedStatement ps = conn.prepareStatement(query);
//	    	
//	    	int affRows = ps.executeUpdate();
//	    	if(affRows > 0)
//	    		System.out.println("STAPPOOOOOOOO");
	    	
	    	//Ristrutturazione
	    	Studente gio = new Studente("Giovanni", "Pace", "AB12346");
	    	
	    	String query = "INSERT INTO Studente(nome, cognome, matricola) VALUES (?, ?, ?)";
	    	PreparedStatement ps = conn.prepareStatement(query);
	    	ps.setString(1, gio.getNom());
	    	ps.setString(2, gio.getCog());
	    	ps.setString(3, gio.getMat());
	    	
	    	int affRows = ps.executeUpdate();
	    	if(affRows > 0)
	    		System.out.println("STAPPOOOOOOOO");
	    	
	    	conn.close();
	    	
	    	
    	} catch (Exception e) {
			System.out.println(e.getMessage());
		}
    	
    	System.out.println("Programma terminato");
    	
    
    }
}
