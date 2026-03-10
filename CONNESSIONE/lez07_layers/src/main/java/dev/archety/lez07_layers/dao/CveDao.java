package dev.archety.lez07_layers.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.MysqlDataSource;

import dev.archety.lez07_layers.models.Cve;

public class CveDao implements IDao<Cve>{

	@Override
	public List<Cve> getAll() {
		ArrayList<Cve> risultato = new ArrayList<Cve>();
		
		try {
			MysqlDataSource ds = new MysqlDataSource();
			ds.setServerName(DbConfig.SERVER);
			ds.setPort(DbConfig.PORT);
			ds.setUser(DbConfig.USERNAME);
			ds.setPassword(DbConfig.PASSWORD);
			ds.setDatabaseName(DbConfig.DATABASE);
			ds.setUseSSL(false);
			ds.setAllowPublicKeyRetrieval(true);
			
			Connection con = ds.getConnection(); 
			
			String query = "SELECT cveID, name, description, severity FROM Cves";
			PreparedStatement ps = con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Cve c = new Cve();
				c.setId( rs.getInt("cveID") );
				c.setName( rs.getString("name") );
				c.setDescription( rs.getString("description") );
				c.setSeverity( rs.getFloat("severity") );
				risultato.add(c);
			}
			
			con.close();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return risultato;		
	}

	@Override
	public Cve getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Cve t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Cve t) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public Cve getByCodice(String nome) {
		Cve risultato = null;
		
		try {
			MysqlDataSource ds = new MysqlDataSource();
			ds.setServerName(DbConfig.SERVER);
			ds.setPort(DbConfig.PORT);
			ds.setUser(DbConfig.USERNAME);
			ds.setPassword(DbConfig.PASSWORD);
			ds.setDatabaseName(DbConfig.DATABASE);
			ds.setUseSSL(false);
			ds.setAllowPublicKeyRetrieval(true);
			
			Connection con = ds.getConnection(); 
			
			String query = "SELECT cveID, name, description, severity FROM Cves WHERE name = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, nome);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Cve c = new Cve();
				c.setId( rs.getInt("cveID") );
				c.setName( rs.getString("name") );
				c.setDescription( rs.getString("description") );
				c.setSeverity( rs.getFloat("severity") );
				risultato = c;
			}
			
			con.close();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return risultato;
	}

}
