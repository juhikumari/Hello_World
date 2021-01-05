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
<body background="image/background.jpg">
<form action="" method="post"></form>
<%@ page import="com.mypack.dao.userdao,com.mypack.bean.User" %>
<%
	String job_titles=request.getParameter("job_titles");
	String domain=request.getParameter("domain");
	String experience=request.getParameter("experience");
	String time=request.getParameter("time");
	String location=request.getParameter("location");
	
	try
	{		
		User u=new User();
		u.setJob_titles(job_titles);
		u.setDomain(domain);
		u.setExperience(experience);
		u.setTime(time);
		u.setLocation(location);
		
		int i=userdao.insert(u);
		if(i>0)
		{
			out.println("succesfully inserted");
%>
<img alt="image" src="image/success.png">
<h1>Have a Nice Day.....<img alt="image" src="image\th (6).jpg"></h1>
<%			
		}
		else
		{
			out.println("unsuccesfull");
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>