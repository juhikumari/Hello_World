<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
<%@ page import="com.mypack.dao.userdao" %>
<table border='1' width="100%" bordercolor="red" bgcolor="grey">
<tr><th><%= "Job_Titles" %></th><th><%="Domain" %></th><th><%="Experience" %></th><th><%= "Time"%></th><th><%="Location"%></th></tr>
<%
	try{
		Connection con=userdao.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from admin");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
%>	
		<tr>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%= rs.getString(5)%></td>
		<td><%= rs.getString(6)%></td>
		</tr>
<%	
		}
	}catch(Exception e)
		{
			e.printStackTrace();
		}
%>
</table>
</center>
</body>
</html>