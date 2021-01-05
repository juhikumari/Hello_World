<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="image/background.jpg">
<center>
<%! 
	Connection con= null;
	PreparedStatement ps= null;
%>
<%
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hropr1", "root", "root");
	String n=(String)session.getAttribute("uname");
	out.println("welcome"+n);
	 ps=con.prepareStatement("select * from app where email='"+n+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
%>
<form action="jobapp1.jsp" method="post">
<table>
<tr><td>Email:</td><td><input type="text" name="email" value="<%= rs.getString(3)%>"></td></tr>
<tr><td>Qualification:</td><td><input type="text" name="qualification"></td></tr>
<tr><td>Experience:</td><td><input type="text" name="experience"></td></tr>
<tr><td>Location:</td><td>
<select name="location">
<option>Dhanbad</option>
<option>Hydrabad</option>
<option>Kolkata</option>
<option>Ranchi</option>
<option>Other</option>
</select>
</td></tr>
<tr><td>Resume:</td><td><input type="file" name="resume"></td></tr>
<tr><td><input type="submit" value="SUBMIT"></td></tr>
</table>
<%		
	}
	else
	{
		out.println("Unsuccesful.....");
	}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</form>
</center>
</body>
</html>