<%@page import="java.sql.DriverManager"%>
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
<%
	String email=request.getParameter("email");
	String Password=request.getParameter("password");
	
	if(email.equals("admin") && Password.equals("admin"))
	{
		out.println("Succesfully login");
	
		%>
		<jsp:forward page="home.jsp"></jsp:forward>
		<% } 
	else
	{	
		%>
	<%	
		out.println("Unsuccesfully login");
	}
%>
</body>	
</html>