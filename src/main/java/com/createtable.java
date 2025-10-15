
package com;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class createtable {
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
      // createTable();
		
		
	// insert();

	}
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException 
	{
		
		Class.forName("org.sqlite.JDBC");
		
		Connection connection = DriverManager.getConnection("jdbc:sqlite:dtclass.db");
		
		return connection;
	}
	
	public static void createTable() throws ClassNotFoundException, SQLException {
		
		Connection connection = getConnection();
		
		System.out.println(connection);
		
		String query = "Create table admin (username varchar(100), password varchar(100))";
		
		Statement statement = connection.createStatement();
		
		boolean result = statement.execute(query);
		
		System.out.println(result);
		
		connection.close();
	}
	
	
	
public static void insert() throws ClassNotFoundException, SQLException {
		
		Connection connection= getConnection();
		
		String sql = "insert into admin values('admin','admin')";
	
		PreparedStatement ps = connection.prepareStatement(sql);
		
		int i = ps.executeUpdate();
		System.out.println(i + " row inserted....");
	
	}
}
