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
<form action="" method="post">
<%@ page import="com.mypack.dao.userdao,com.mypack.dao.Hrdao" %>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	int i=Hrdao.delete(id);
	if(i>0)
	{
		out.println("Succesfully done.........");
%>
<jsp:include page="AppProfile.jsp"></jsp:include>
<%
	}
	else
	{
		out.print("Not Resolver.........");
	}
%>
</form>
</body>
</html>