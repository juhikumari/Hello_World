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
	String a="approved";
	int id=Integer.parseInt(request.getParameter("id"));
	Connection con=userdao.getConnection();
	PreparedStatement ps=con.prepareStatement("update applicantform set status='"+a+"' where id='"+id+"'");
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		out.println("Succesfully ipdate......");
%>
<jsp:include page="shortlist.jsp"></jsp:include>
<%
	}
	else
	{
		out.println("unsuccesful.......");
	}
%>
</body>
</html>