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
<jsp:include page="inner1app.jsp"></jsp:include>
<%@ page import="com.mypack.dao.userdao" %>
<table border="2" width="100%" bordercolor="red" bgcolor="grey">
<tr><td>Email</td><td>Qualification</td><td>Experience</td><td>Location</td><td>Status</td></tr>
<%
	String email=(String)session.getAttribute("uname");
	out.println(email);
	Connection con=userdao.getConnection();
	PreparedStatement ps=con.prepareStatement("select * from applicantform where email='"+email+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
%>
	<tr>
	<td><%= rs.getString(2) %></td>
	<td><%= rs.getString(3) %></td>
	<td><%= rs.getString(4) %></td>
	<td><%= rs.getString(5) %></td>
	<td><%= rs.getString(6) %></td>
	</tr>
<%
	}
%>
</table>
</center>
</body>
</html>