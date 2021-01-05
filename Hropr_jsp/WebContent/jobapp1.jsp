<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.Part" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="image/background.jpg">
<form action="" method="post">
<%!
	Connection con= null;
	PreparedStatement ps= null;
%>
<%
	String email=request.getParameter("email");
	out.println(email);
	String qualification=request.getParameter("qualification");
	out.println(qualification);
	String experience=request.getParameter("experience");
	String location=request.getParameter("location");
	 String resume=request.getParameter("resume"); 
	/* Part p=request.getPart("resume");
	
	
	
	 InputStream inputStream=null;
	if(p!=null)
	{
		System.out.println(p.getName());
		System.out.println(p.getSize());
		System.out.println(p.getContentType());
		
		inputStream=p.getInputStream();
	} */
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hropr1", "root", "root");
	/* File image= new File(resume); */
	ps=con.prepareStatement("insert into applicantform values(?,?,?,?,?,?,?)");
	ps.setString(1, null);
	ps.setString(2, email);
	ps.setString(3, qualification);
	ps.setString(4, experience);
	ps.setString(5, location);
	ps.setString(6, "pending");
	FileInputStream  fis=new FileInputStream(resume);
	ps.setBinaryStream(7, (InputStream) fis); 
	//ps.setBlob(7,inputstream);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		out.println("Succesfull..........");
%>
<jsp:include page="home1.jsp"></jsp:include>
<%		
	}
	else
	{
		out.println("unsuccesful done......");
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</form>
</body>
</html>