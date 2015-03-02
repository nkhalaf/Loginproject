package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.Database;

/**
 * Servlet implementation class DeleteAndEdit
 */
@WebServlet("/DeleteAndEdit")
public class DeleteAndEdit extends HttpServlet implements Database {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAndEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String EOD  = request.getParameter("EOD"); // edit or delete
	    String id = request.getParameter("id");
	    if(EOD.equalsIgnoreCase("Delete")){
	    	delete(Integer.parseInt(id));
	    	
	    	Operation opp  = new Operation();
			 ArrayList<user> users = opp.ListAllusers();
			 request.setAttribute("users",users);
			 RequestDispatcher rd = request.getRequestDispatcher("AllUsers.jsp");
				rd.forward(request, response);
	    }
	    else{
	    	user user  = getuserById(Integer.parseInt(id));
	    	request.setAttribute("user",user);
	    	RequestDispatcher rd = request.getRequestDispatcher("/edit");
			rd.forward(request, response);
	    }
	}
	public void delete(int id){
		openConnection();
		try {
			pst= conn.prepareStatement("delete from \"userDetails\" where \"userID\" = "+id+"");
			pst.execute();
			pst = conn.prepareStatement("delete from \"users\" where \"userID\" = "+id+"");
			pst.execute();
			closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


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
	public user getuserById(int iD){
		openConnection();
		 user result = null ;
		try {
			pst=conn.prepareStatement("select * from \"users\" where \"userID\" = "+iD+"");
			 rs=pst.executeQuery();
			
			 
			 if(rs.next()){
				  int id =rs.getInt(1);
				  String name = rs.getString(2);
				  String password=rs.getString(3);
				  pst=conn.prepareStatement("select * from \"userDetails\" where \"userID\" = "+iD+"");
				  rs=pst.executeQuery();
				  if(rs.next()){
					  String gender = rs.getString(2);
					   String bDay = rs.getString(3);
					   String phone = rs.getString(4);
					   String adress=  rs.getString(5);
					   result = new user(name, adress, id, phone, password, gender, bDay);
				  }
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result ;
	}
}


