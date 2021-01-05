<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:include page="inner1app.jsp"></jsp:include>
<h1>VACANCY FOR JOBS</h1>
<form action="Adminaddjobs.jsp" method="post">
<table>
<tr><td>Job Titles</td><td><input type="text" name="job_titles"/></td></tr>
<tr><td>Domain</td><td><input type="text" name="domain"></td></tr>
<tr><td>Experience</td><td><input type="text" name="experience"></td></tr>
<tr><td>Interview Time</td><td><input type="time" name="time"></td></tr>
<tr><td>Location</td><td><textarea cols="50" rows="6" name="location"></textarea></td></tr>
<tr><td><input type="submit" value="SEND TO MANAGER"/></td></tr>
</table>
</form>
</center>
</body>
</html>