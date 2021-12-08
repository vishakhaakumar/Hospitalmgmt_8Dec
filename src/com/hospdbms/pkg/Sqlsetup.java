package com.hospdbms.pkg;

	import java.io.IOException;
	import java.sql.*;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;
	import java.sql.ResultSet;

@WebServlet("/Sqlsetup")
public class Sqlsetup extends HttpServlet {	

		private static final long serialVersionUID = 1L;
		
	    public Sqlsetup() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("hii from sqlsetup");
		
			   
			   
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
					System.out.println("exp here");
				e.printStackTrace();
				}

				Connection connection = null;
				Statement statement = null;
				//int resultSet = 0;
				ResultSet resultSet =null;
				try{ 
					connection = DriverManager.getConnection(connectionUrl, userId, password);
					statement=connection.createStatement();
					checkdata(statement);
					String sql ="create database hospital_database;";
					//resultSet = statement.executeUpdate(sql);
					
					createTables(statement);
					createDTables(statement);
					createATables(statement);
					//System.out.println("Database created successfully..."+resultSet); 
					/*
					 * if(resultSet==1) { createTables(statement); createDTables(statement); }
					 */
		}catch(SQLException e) { 
			createATables(statement);
			System.out.println("Done here");
			e.printStackTrace();
		}
				}

		private void checkdata(Statement statement) {
			System.out.println("here..."); 
			ResultSet resultSet =null;
			String a=" where pname='vish'";
			String sql ="SELECT * FROM apn_info"+a;
			try {   
				resultSet = statement.executeQuery(sql);
				 while(resultSet.next()){
					 System.out.println("values...");  
				 }
		        
		         }catch(SQLException e) { 
		 			System.out.println(".................... table failed");
					e.printStackTrace();
				}
			
		}

		private void createATables(Statement statement) {
			String sql ="create table hospital_database.apn_info  "+
			"(pname varchar(20), "+
			"dname varchar(20), "+
			"spec varchar(20), "+
			"apdate date, "+
			"aptime time); ";
			try {   
			 statement.executeUpdate(sql);
	         System.out.println("appt_info table created...");  
	         }catch(SQLException e) { 
	 			System.out.println("create appt_info table failed");
				e.printStackTrace();
			}
		}

		private void createTables(Statement statement) {
			String sql = "create table hospital_database.patients_info "+
					"( 		name varchar(20) NOT null, "+
						"	email varchar(30), "+
						"	contact_no numeric(10), "+
						"	street varchar(50), "+
						"	locality varchar(20), "+
						"	aadhar varchar(12) PRIMARY KEY, "+
						"	state varchar(20), "+
						"	country varchar(20), "+
						"	password varchar(25));  ";
			try {   
			 statement.executeUpdate(sql);
	         System.out.println("patients_info table created...");  
	         }catch(SQLException e) { 
	 			System.out.println("create patients_info table failed");
				e.printStackTrace();
			}
	      
			
		}
		private void createDTables(Statement statement) {
			String sql = "create table hospital_database.doc_info "+
					"(		dname varchar(20), "+
					"	dspec varchar(20), "+
					"	psswd varchar(20) "+
							"); ";
			try {   
			 statement.executeUpdate(sql);
	         System.out.println("doc_info table created...");  
	         }catch(SQLException e) { 
	 			System.out.println("create doc_info table failed");
				e.printStackTrace();
			}
	      
			
		}


}
