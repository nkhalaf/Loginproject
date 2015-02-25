package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

import com.asal.training.Database.Database;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login.do")
public class LoginServlet extends HttpServlet implements Database {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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

		openConnection();
		
		String userName = request.getParameter("userName");                                                  
		String password = request.getParameter("password");
		
		try {
			pst = conn.prepareStatement("SELECT * FROM users WHERE \"userName\"='"
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
				 request.setAttribute("json",json);
				 RequestDispatcher rd =request.getRequestDispatcher("Admin.jsp");
				 rd.forward(request, response);
			}
			else{
				System.out.println("n");
			RequestDispatcher rd = request.getRequestDispatcher("SendJson.jsp");
			rd.forward(request, response);
			}
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
			
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

}
