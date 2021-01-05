<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	if(email.equals("Manager") && password.equals("Manager"));
	{
%>
<jsp:forward page="home3.jsp"></jsp:forward>
<%
	}
%>
</body>
</html>