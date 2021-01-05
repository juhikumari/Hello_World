<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<form action="enquiry1.jsp" method="post">
<h1>Satify Yes Or No</h1>
<table>
<tr><td><input type="radio" name="enquiry" value="yes">Yes
		<input type="radio" name="enquiry" value="no">No
</td></tr>
<tr><td colspan="2"><input type="submit" value="SUBMIT"></td></tr>		
</table>
</form>
</center>
</body>
</html>