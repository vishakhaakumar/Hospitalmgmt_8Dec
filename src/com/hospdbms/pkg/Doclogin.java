package com.hospdbms.pkg;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Doclogin
 */
@WebServlet("/Doclogin")
public class Doclogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Doclogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hii salads");
		HttpSession session=request.getSession();
		String driverName = "com.mysql.cj.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "hospital_database";
		String userId = "root";
		String password = "root";
		String pwdd=null;
		String dname=request.getParameter("uname");
		String psswd=request.getParameter("pwd");
		try {
			Class.forName(driverName);
			} catch (ClassNotFoundException e) {
				System.out.println("sadasd");
			e.printStackTrace();
			}

			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try{ 
				connection = DriverManager.getConnection(connectionUrl+dbName+"?useSSL=false", userId, password);
				statement=connection.createStatement();
				System.out.println("sadasd11");
				String sql ="SELECT psswd FROM doc_info where dname='"+dname+"'";

				resultSet = statement.executeQuery(sql);
				System.out.println("sadasd22"+resultSet.getFetchSize());
				while(resultSet.next()) {
					System.out.println("pwd found");
				pwdd=resultSet.getString("psswd");
				}
		if(psswd.equalsIgnoreCase(pwdd))
		{	
			String dcname = request.getParameter("uname");
			session.setAttribute("user",dcname);  
			System.out.println("doc name is set here"+session.getAttribute("user"));
			request.getRequestDispatcher("docpage.jsp").forward(request, response);
		}
	
		else {
			request.setAttribute("error", "Invalid username/password.");
			request.getRequestDispatcher("Doclogin.jsp").forward(request, response);
	}
	}catch(SQLException e) { 
		System.out.println("kkrk");
		e.printStackTrace();
	}
			}}
