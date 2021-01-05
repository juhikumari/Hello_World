<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
#param1{
text-align: center;
background: red;

}
</style>
</head>
<body>
<center>
<jsp:include page="inner.jsp"></jsp:include>
<h1 >ADMIN SECTION</h1>
<form action="LogAdmin.jsp" method="post">
<table>
<tr><td>Email</td><td><input type="text" name="email" placeholder="Email" id="param1"/></td></tr>
<tr><td>Password</td><td><input type="password" name="password" placeholder="Password" id="param1"/></td></tr>
<tr><td colspan='2'><input type="submit" value="LOGIN"/>
</table>
</form>
</center>
</body>
</html>