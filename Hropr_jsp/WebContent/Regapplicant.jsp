<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
	background: #787474;
}

#param1{
text-align: center;
background: red;

}

.info
{
	position: absolute;
	top: 40%;
	left: 40%;
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
<h1>Add New Employee</h1>
<form  name="myform"   action="Regapp.jsp"  onsubmit="validateform()" method="post">
<table>
<tr><td>Name</td><td><input type="text" name="name"  placeholder="Name"></td></tr>
<tr><td>Email</td><td><input type="email" name="email" required="required" placeholder="Email" id="param1"></td></tr>
<tr><td>Password</td><td><input id="password" type="password" name="password"  min="1"  max="10"  required="required" placeholder="password"></td></tr>
<tr><td>Confirm_Password</td><td><input type="password" name="confirm_password" id="confirm_password" placeholder="Must Same as password"></td></tr>
<tr><td>Country:</td><td>
<select name="country" style="width:150px">
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit"  onclick="return validate()"  value="Register"/>
					<input type="button" onclick="location.href='Logapplicant.jsp'" value="Already Registered"></td></tr>
</table>
<p id="demo"></p>
<script type="text/javascript">
function validate()
{
	var password=document.getElementById("password").value;
	var confirm_password=document.getElementById("confirm_password").value;
	if(password!=confirm_password)
		{
		alert("password doesnot match.");
		return false;
		}	
	var inpOpj=document.getElementById("password");
	if(inpOpj.checkValidity()==false)
		{
		document.getElementById("demo").innerHTML=inpOpj.validationMessage;
		}
	else
		{
		document.getElementById("demo").innerHTML="INPUT OK";
		}
}
</script>
</form>
</center>
</body>
<script type="text/javascript">
function validateform() {
	var x=document.forms["myform"]["email"].value;
	if(x=="")
		{
		alert("Email must be filled out");
		return false;
		}	
}
</script>
</html>