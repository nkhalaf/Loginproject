package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asal.training.Database.ConnectionToDatabase;
import com.asal.training.Database.Operation;

/**
 * Servlet implementation class LoginS
 */
@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

    private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    public LoginS() {
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

		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		
		String userName = request.getParameter("userName");                                                  
		String password = request.getParameter("password");
		
		try {
		
			pst = connection.getConn().prepareStatement("SELECT * FROM users WHERE \"userName\"='"
					+ userName
					+ "' and  \"password\" ='"
					+ password
					+ "'");
			rs = pst.executeQuery();
 
		if(rs.next()){ 		
			String username = rs.getString(2);
			    if(username.trim().equalsIgnoreCase("admin")){
				     Operation operation = new Operation(); 
				     String json =operation.GetJsonByID(1);
				     HttpSession session = request.getSession(true);
				     session.setAttribute("Username", username);
				     request.setAttribute("json",json);
				     RequestDispatcher rd =request.getRequestDispatcher("/Admin.do");
				     rd.forward(request, response);
			     } else{
				       System.out.println("n");
			       	   RequestDispatcher rd = request.getRequestDispatcher("SendJson.jsp");
			           rd.forward(request, response);
			           }
			    
		} else {
			response.sendRedirect("Login/Login.jsp");
			
		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
