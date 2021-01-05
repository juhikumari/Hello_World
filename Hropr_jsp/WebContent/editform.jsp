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
<form action="" method="post">
<%@page import="com.mypack.dao.userdao"%>  
 <%!
 	Connection con= null;
 	PreparedStatement ps= null;
 %>
<%  
/* String id=request.getParameter("id");  
User u=userdao.getRecordById(Integer.parseInt(id)); */  
		String email=(String)session.getAttribute("uname");
		out.println(email);
		Connection con=userdao.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from applicantform where email='"+email+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			out.println("Succesfully.....");
%>
</form>
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=rs.getString(1) %>"/>  
<table>    
<tr><td>Email:</td><td>  
<input type="text" name="email" value="<%= rs.getString(2)%>"/></td></tr>
<tr><td>Qualification:</td><td>  
<input type="text" name="qualification" value="<%= rs.getString(3)%>"/></td></tr>    
<tr><td>Experience:</td><td>  
<input type="text" name="experience" value="<%= rs.getString(4)%>"/></td></tr>  
<tr><td>Location:</td><td>  
<select name="location">  
<option>Dhanbad</option>  
<option>Hydrabad</option>  
<option>Kolkata</option>  
<option>Ranchi</option>  
<option>Others</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Update"/></td></tr>  
</table>  
</form>  
 <%
	} 
		else
		{
			out.println("unsuccesful.........");
		}
 %>
 </center>
</body>  
</html>  