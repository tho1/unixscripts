package com.check.sqlCheck;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//quick tool to check whether we are getting database connection using Java. Useful for testing the driver.

public class sqlCheck {

	public static void main(String[] args) throws SQLException, ClassNotFoundException  {
		// TODO Auto-generated method stub
		System.out.println ("Hello world");
		
		//dev
		//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
		//Connection conn = DriverManager.getConnection("jdbc:sqlserver://x.x.x.x","username","password");
			
		//prod
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://y.y.y.y","username","password");
	
				
		  if (conn != null) {
			     System.out.println();
			      System.out.println("Successfully connected");
			      System.out.println();
			      // Meta data
			      DatabaseMetaData meta = conn.getMetaData();
			      System.out.println("\nDriver Information");
			      System.out.println("Driver Name: "
			       + meta.getDriverName());
			      System.out.println("Driver Version: "
			       + meta.getDriverVersion());
			      System.out.println("\nDatabase Information ");
			      System.out.println("Database Name: "
			       + meta.getDatabaseProductName());
			      System.out.println("Database Version: "+
			      meta.getDatabaseProductVersion());
			    }
		
		conn.close();
		
	}

}
