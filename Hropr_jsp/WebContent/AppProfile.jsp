<%@page import="org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="image/background.jpg">
<%@ page import="com.mypack.dao.userdao" %>
<form action="" method="post">

<table border="2" width="100%" bordercolor="red" bgcolor="grey">

<tr><th>Email</th><th>Qualification</th><th>Experience</th><th>Location</th><th>Status</th><th>Image</th><th>Forward</th><th>Reject</th></tr>

<%!
InputStream sImage;
%>
<% 
Connection con=userdao.getConnection();
PreparedStatement ps = con.prepareCall("select * from applicantform");
ResultSet  rs=ps.executeQuery();
while (rs.next()) { 
	%>
	<tr>
	<td><%= rs.getString(2)%></td>
	<td><%= rs.getString(3)%></td>
	<td><%= rs.getString(4) %></td>
	<td><%= rs.getString(5) %></td>
	<td><%= rs.getString(6) %></td>
	<td><a href="image.jsp?id=<%= rs.getInt(1)%>">Image</a></td>
	<td><a href="forward.jsp?id=<%= rs.getInt(1)%>">forward</a></td>
	<td><a href="reject.jsp?id=<%=rs.getInt(1) %>">reject</a></td>
	</tr>
<%
}
%>

</table>
</form>