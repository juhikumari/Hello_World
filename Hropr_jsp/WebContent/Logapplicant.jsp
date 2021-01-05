<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div style="font-weight: bold;" id="quiz-time-left"></div>
<script type="text/javascript">
var total_seconds=60*2;
var c_minutes = parseInt(total_seconds/60);
var c_seconds = parseInt(total_seconds%60);
function CheckTime()
{
	document.getElementById("quiz-time-left").innerHTML
	='Time Left: ' + c_minutes + ' minutes ' + c_seconds + ' seconds ' ;
	if(total_seconds <=0)
		{
			setTimeout('document.quiz.submit()', 1);
		}
	else
		{
			total_seconds = total_seconds -1;
			c_minutes = parseInt(total_seconds/60);
			c_seconds = parseInt(total_seconds%60);
			setTimeout("CheckTime()", 1000);
		}
	}
	setTimeout("CheckTime()", 1000);
</script>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#param1{
text-align: center;
background: red;

}
</style>
</head>
<body background="image/background.jpg">
<center>
<h1>Login Applicant</h1>
<form action="Login.jsp" method="post">
<table>
<tr><td>Email</td><td><input type="text" name="email" placeholder="Email" id="param1"/></td></tr>
<tr><td>Password</td><td><input type="password" name="password" placeholder="Password" id="param1"/></td></tr>
<tr><td colspan='2'><input type="submit" value="LOGIN"/>
<input type="button" onclick="location.href='sendMail.jsp'" value="FORGOT PASSWORD">
<input type="button" onclick="location.href='Logout.jsp'" value="LOGOUT"></td></tr>

<!-- <tr><td><a href="forgotpass.html">FORGOT PASSQORD</a></td></tr> -->
</table>

 <!-- <button onclick="location.href='forgotpass.html'">FORGOT PASSWORD</button> -->
</form>
</center>
</body>
</html>