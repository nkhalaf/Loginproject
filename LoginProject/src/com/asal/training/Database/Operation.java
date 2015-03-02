package com.asal.training.Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.asal.training.bean.user;

public class Operation  implements Database{
	
	
	//variables we need  in the connection to database
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst =null ; 
	private ResultSet rs2 = null;
	private PreparedStatement pst2 =null ; 
	
	
	
	
    // this  method return the  json as String from the database
	
	 public  String  GetJsonByID(int id ){
		 String result = "";
		  openConnection();
		  try {
			pst= conn.prepareStatement("select *  from \"JSON\" where \"JSONID\"="+id+";");
			rs = pst.executeQuery(); 
			     if(rs.next()){
				       String  jsn  = rs.getString(2);
				       result  += jsn ; 
			       }
		    }  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		     }
    return result ;
    
	    }
	 
	 public ArrayList getusers(){

			ConnectionToDatabase  connection = new ConnectionToDatabase();
			connection.openConnection();
		  ArrayList<String> result = new ArrayList<String>();
		  try {
			pst=conn.prepareStatement("select * from users");
			rs= pst.executeQuery();
			while(rs.next()){
				result.add(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return result ;
		 
	 }
	 
	//  this  method  to  open  the connection to the database 
	public  void openConnection(){	
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url + dbName, userName, "02030203");
				Statement st=conn.createStatement();
			
			} catch (SQLException  | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


	}
	
	public ArrayList<user> ListAllusers(){
		
		ArrayList<user> users  = new ArrayList<user>();
		openConnection();
		try {
			pst=conn.prepareStatement("select * from \"userDetails\"");
			 rs= pst.executeQuery();
				pst2=conn.prepareStatement("select * from users");
				 rs2 = pst2.executeQuery();
			 while(rs.next() &&  rs2.next()){
				String  gender = rs.getString(2);
				int id = rs.getInt(1);
				String bDay = rs.getString(3);
				String phone  = rs.getString(4);
				String adress = rs.getString(5);
			
				String name =rs2.getString(2);
				String password= rs2.getString(3);
				user x = new user(name, adress, id, phone, password, gender, bDay);
				users.add(x);
			 }
				} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users; 
	}
	
	
}
