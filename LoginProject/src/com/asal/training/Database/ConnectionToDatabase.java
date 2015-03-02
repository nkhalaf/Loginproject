package com.asal.training.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionToDatabase implements Database {
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;

	public void openConnection() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url + dbName, userName,"02030203");
			Statement st = conn.createStatement();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	// this method to close the connection
	public void closeConnection() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
