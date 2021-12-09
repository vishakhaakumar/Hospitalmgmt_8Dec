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
String pswd=request.getParameter("pwd");
	String country=request.getParameter("country");
	String aadhar=request.getParameter("aadhar");
	String locality=request.getParameter("area");
	String street=request.getParameter("street");
	String pemail=request.getParameter("pemail");
	String pno=request.getParameter("pno");
	String state=request.getParameter("state");
	String Name=request.getParameter("Name");
	String name=request.getParameter("name");

	Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_database","root","root"); 
Statement st= con.createStatement(); 
st.executeUpdate("update patients_info set name='"+name+"',country='"+country+"',state='"+state+"',email='"+pemail+"',password='"+pswd+"',street='"+street+"',locality='"+locality+"',aadhar="+aadhar+",contact_no="+pno+" where name='"+Name+"'"); 
try{
	st.executeUpdate("update apn_info set pname='"+name+"' where pname='"+Name+"'"); 

}catch(Exception e){

e.printStackTrace();
System.out.println("asasdf");
}

%>
<br>
<h3 style="font-size: 26px;color: rgb(93, 173, 93);"><b><center>Registration Successfull</center></b><br></h3>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="patientpage.jsp" title="Please click on link to redirect to patient dashbaord page">Login Page</a></center><br>
<center><a style="font-size: 22px;color:white;background: rgb(93, 173, 93);cursor: pointer;text-decoration: none;display: block;width:180px;height:37px;text-align:center;" href="index.jsp" title="Please click on link to redirect to home page">Home</a></center>

</body>
</html>
