package com.asal.training;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asal.training.Database.ConnectionToDatabase;
import com.asal.training.Database.Operation;

/**
 * Servlet implementation class AddtoJson
 */
@WebServlet("/AddtoJson")
public class AddtoJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement pst = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoJson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
		String name = request.getParameter("Tname");
		String id  = request.getParameter("Tid");
		String value = request.getParameter("Tvalue");
		String type = request.getParameter("Ttype");
		ConnectionToDatabase  connection = new ConnectionToDatabase();
		connection.openConnection();
		 Operation operation = new Operation(); 
		 String json =operation.GetJsonByID(1);
		 json =json.substring(0,json.length()-2);
		 System.out.println("type is " +type +"\n the name is " + name + "\n the value is " + value+"\n the id is "+id );
		 if(type.trim().equalsIgnoreCase("text")|| type.trim().equalsIgnoreCase("password"))
		 json +=",{\"tag\": \"input\",\""+type+"\": \"text\",\"placeholder\":\""+value+"\",\"tagId\": \""+id+"\",\"tagName\": \""+name+"\",\"value\": \""+value+"\"}]}";
		 if(type.trim().equalsIgnoreCase("button")){
			 json += ",{\"tag\": \"input\", \"tagType\": \"button\",\"tagName\": \""+name+"\",\"tagId\":\""+id+"\",\"value\":\""+value+"\"}]}";
			 
		 }
		 try {
				pst=connection.getConn().prepareStatement("update \"JSON\" SET \"JSONC\"='"+json+"' where \"JSONID\"=1 ;");
				if(!pst.execute())
					System.out.println("done");
				else{
					System.out.println("np");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 System.out.println(json);
		
	
	}

}
