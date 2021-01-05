<%@page import="com.mypack.dao.userdao"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<%  
	/* String email=(String)session.getAttribute("uname"); */
	int id=Integer.parseInt(request.getParameter("id"));
	System.out.println(id);
	int i=userdao.delete(id);  
	if(i>0)
	{
		out.println("Succesful......");	
%>
<jsp:include page="viewapplicant.jsp"></jsp:include>
<%
	}
	else
	{
		out.println("unsuccesful........");
	}
%>
</form>