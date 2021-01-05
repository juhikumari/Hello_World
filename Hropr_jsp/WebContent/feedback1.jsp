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
<center>
<%@page import="com.mypack.dao.userdao" %>
<%
	String feedback=request.getParameter("feedback");
	Connection con=userdao.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?)");
	
	ps.setString(1, null);
	ps.setString(2, feedback);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
%>
<img alt="image" src="image/success.png">
<h1>Have a Nice Day.....<img alt="image" src="image\th (6).jpg"></h1>
<%
	}
	else
	{
		
	}
%>
</center>
</body>
</html>