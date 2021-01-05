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
<%@ page import="com.mypack.dao.userdao"%>
<form action="" method="post">
<table border="2" width="100%" bordercolor="red" bgcolor="grey">
<tr><td>Email</td><td>Qualification</td><td>Experience</td><td>Location</td><td>Status</td><td>Image</td><td>Approve</td><td>Reject</td></tr>
<%
	Connection con=userdao.getConnection();
	PreparedStatement ps=con.prepareStatement("select * from applicantform where status='forwarded'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
%>
	<tr>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><a href="image.jsp?id=<%=rs.getInt(1) %>">Image</a></td>
		<td><a href="approved.jsp?id=<%=rs.getInt(1) %>">Approved</a></td>
		<td><a href="reject.jsp?id=<%=rs.getInt(1) %>">Reject</a></td>
	</tr>	
<%
	}
%>
</table>
</form>
</center>
</body>
</html>