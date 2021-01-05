<%@page import="com.mypack.dao.userdao"%>
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
<form action="" method="post"></form>
<%@ page import="com.mypack.dao.userdao,com.mypack.bean.User" %>
<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String confirm_password=request.getParameter("confirm_password");
	String country=request.getParameter("country");
	
	User u=new User();
	u.setName(name);
	u.setEmail(email);
	u.setPassword(password);
	u.setConfirm_password(confirm_password);
	u.setCountry(country);
	
	int i=userdao.insertapp(u);
	if(i>0)
	{
		out.println("succesfully inserted");
%>
	<jsp:forward page="Logapplicant.jsp"></jsp:forward>
	<%		
		}
		else
		{
			out.println("unsuccesfull");
		}
%>
<jsp:include page="Regapplicant.jsp"></jsp:include>
</body>
</html>