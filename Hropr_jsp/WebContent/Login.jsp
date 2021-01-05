<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
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
<body>
<%@ page import="com.mypack.dao.userdao" %>
<form action="" method="post">
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	try{
		Connection con=userdao.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from app where email='"+email+"' and password='"+password+"'");
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			out.println("Login Succesfully");
			String a=rs.getString(3);
			session.setAttribute("uname", a);
%>
<jsp:forward page="home1.jsp"></jsp:forward>
<%			
		}else
		{
			out.println("unsuccesful");
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</form>
</body>
</html>