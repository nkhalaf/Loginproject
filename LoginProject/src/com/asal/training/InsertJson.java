package com.asal.training;

import java.beans.Statement;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.ConnectionToDatabase;
import com.asal.training.Database.Database;
import com.sun.corba.se.pept.transport.Connection;

/**
 * Servlet implementation class InsertJson
 */
@WebServlet("/InsertJson")
public class InsertJson extends HttpServlet implements Database {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertJson() {
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
		System.out.println("here");
		String json = (String)request.getParameter("json");
		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		 try {
			pst=connection.getConn().prepareStatement("update \"JSON\" SET \"JSONC\"='"+json+"' where \"JSONID\"=1 ;");
			System.out.println(json);
			if(!pst.execute())
				System.out.println("done");
			else{
				System.out.println("np");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
