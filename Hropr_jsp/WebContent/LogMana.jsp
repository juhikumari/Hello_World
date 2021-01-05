<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#param1{
text-align: center;
background: red;

}

#password{
text-align: center;
background: red;

}

</style>
</head>
<body>
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<h1>Manager Section</h1>
<form action="LogMana1.jsp">
<table>
<tr><td>Email:</td><td><input type="text" name="email" required="required" placeholder="Email" id="param1"></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" min="1"  max="10"  required="required" placeholder="password" id="password"></td></tr>
<tr><td><input type="submit" value="SUBMIT"></td></tr>							
</table>
</form>
</center>
</body>
</html>