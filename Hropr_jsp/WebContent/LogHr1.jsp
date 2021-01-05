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
<body>
<%@ page import="com.mypack.dao.userdao" %>
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	Connection con=userdao.getConnection();
	PreparedStatement ps=con.prepareStatement("select * from LHr");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
%>
<jsp:forward page="home2.jsp"></jsp:forward>
<%
	}
%>
</body>
</html>