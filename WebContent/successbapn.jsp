<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>S.U.C.C.E.S.S</title>
</head>
<body>
<% String name=(String)session.getAttribute("user");  
%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hospital_database";
String userId = "root";
String password = "root";

Connection connection = null;
Statement statement = null;

String dname=request.getParameter("dname");
	String date=request.getParameter("date");
	String time=request.getParameter("time");
	String dspec=request.getParameter("dspec");
	String pname=(String)session.getAttribute("user");
	
connection = DriverManager.getConnection(connectionUrl+dbName+"?useSSL=false", userId, password);
Statement st= connection.createStatement(); 
st.executeUpdate("insert into apn_info values ('"+pname+"','"+dname+"','"+dspec+"','"+date+"','"+time+"')"); 
%>
<br><br>
<h3 style="font-size: 26px;color: rgb(93, 173, 93);"><b><center>Registration Successfull</center></b><br></h3>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="patientpage.jsp" title="Please click on link to redirect to login page">Login Page</a></center><br>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="/HospDBMS" title="Please click on link to redirect to home page">Home</a></center>


</body>
</html>
