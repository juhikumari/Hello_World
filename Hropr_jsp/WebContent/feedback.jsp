<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="WebContent\WEB-INF\image\art.png">
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<form action="feedback1.jsp" method="post">
<table>
<tr><td><h1>Feedback:</h1><br/>
<tr><td><textarea rows="10" cols="20" name="feedback"></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="SUBMIT"></td></tr>
</table>
</form>
</center>
</body>
</html>