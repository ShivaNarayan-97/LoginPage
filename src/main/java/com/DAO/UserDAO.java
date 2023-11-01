package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.*;


public class UserDAO {
	private Connection connection;

	public UserDAO(Connection connection) {
		super();
		this.connection = connection;
	}
	
	public boolean userRegister(User u) {
		boolean f = false;
		
		try {
			String queryString = "INSERT INTO user(name, email, password) VALUES(?, ?, ?)";
			PreparedStatement ps = connection.prepareStatement(queryString);
			
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			ps.executeUpdate();
			f= true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public User getLogin(String email, String pass) {
		User user = null;
		try {
			String query = "SELECT * FROM user WHERE email=? and password=?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				 user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				 
				 
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
}
