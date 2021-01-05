<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<h1 >CONTENT</h1>
<table border="1" >
<tr><td><a href="viewapplicant.jsp">Update</a></td></tr>
<tr><td><a href="jobapp.jsp">Apply_For_Jobs</a></td></tr>
<tr><td><a href="CheckStatusapp.jsp">Check_Status</a></td></tr>
<tr><td><button onclick="location.href='Logout.jsp'">LOGOUT</button></td></tr>
</table> 
</center>
</body>

</html>