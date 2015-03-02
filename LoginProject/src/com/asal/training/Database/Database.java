package com.asal.training.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public interface Database {

	String url = "jdbc:postgresql://localhost:5432/";
	String dbName = "testN";
	String driver = "org.postgresql.Driver";
	String userName = "postgres";
	String password = "";
}
