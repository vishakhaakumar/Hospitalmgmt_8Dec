<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>S.U.C.C.E.S.S</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String psswd=request.getParameter("pwd");
	String dspec=request.getParameter("spec");
	String dname=request.getParameter("name");
	Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_database","root","root"); 
Statement st= con.createStatement(); 
st.executeUpdate("insert into doc_info values ('"+dname+"','"+dspec+"','"+psswd+"')"); 
%>
<br><br>
<h3 style="font-size: 26px;color: rgb(93, 173, 93);"><b><center>Registration Successfull</center></b><br></h3>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="Doclogin.jsp" title="Please click on link to redirect to login page">Login Page</a></center><br>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="index.jsp" title="Please click on link to redirect to home page">Home</a></center>

</body>
</html>
