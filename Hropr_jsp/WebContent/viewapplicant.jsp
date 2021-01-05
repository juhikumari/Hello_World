<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

.info
{
	position: absolute;
	top: 40%;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<form action="" method="post"></form>
<%@ page import="com.mypack.dao.userdao" %>
<table border="2" width="100%" bordercolor="red" bgcolor="grey" class="info">
<tr><td><%= "Email" %></td><td><%= "Qualification" %></td><td><%= "Experience" %></td><td><%= "Location" %></td><td><%= "Edit" %></td><td><%= "Delete" %></td></tr>
<%
	try
	{
		String n=(String)session.getAttribute("uname");
		Connection con=userdao.getConnection();
		PreparedStatement ps=con.prepareStatement("select  * from applicantform where email='"+n+"'");
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
%>
	<tr>
	<%-- <td><input type="hidden" name="id" value="<%=rs.getString(1) %>"></td> --%>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><a href="editform.jsp?id=${rs.getId()}">Edit</a></td>  
	<td><a href="deleteuser.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
	</tr>		
<%	
}
		else
		{
			out.println("Sorry, Not fetch record");
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