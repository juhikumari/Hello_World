<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<style type="text/css">
body{
	background: #787474;
}

.countdownContainer
{
	position: absolute;
	top: 30%;
	left: 30%;
	//tranform:  translateX(-50%) translateY(-50%);
	text-align  : center;
	background : #787474;
	//border: 1px solid #999;
	//padding: 10px;
	//box-shadow:	0 0 5px 3px #ccc;
}

.info
{
	font-size: 80px;
	color: white;
}

.info1
{
	position: absolute;
	top: 70%;
	left: 70%; 
	color: blue;
	background: black;
}
</style>
<body>

<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}/LogAdmin1.jsp'><span>Admin</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/Regapplicant.jsp'><span>Applicant</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/LogHr.jsp'><span>Hr_Section</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/LogMana.jsp'><span>Manager</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/enquiry.jsp'><span>Enquiry</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/complain.jsp'><span>Complain</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/feedback.jsp'><span>Feedback</span></a></li>
   <li class=''><a href='${pageContext.request.contextPath}/Logout.jsp'><span>LOGOUT</span></a></li>
</ul>
</div>

<table class="countdownContainer">
	<tr class="info">
		<td colspan="4">HR_INTERVIEW</td>
	</tr>
	<tr class="info">
		<td id="days">120</td>
		<td id="hours">4</td>
		<td id="minutes">12</td>
		<td id="seconds">20</td>
	</tr>
	<tr>
		<td>days</td>
		<td>hours</td>
		<td>minutes</td>
		<td>seconds</td>
	</tr>	
	
</table>
<script type="text/javascript">

	function countdown()
	{
		var now=new Date();
		var eventDate=new Date(2018, 01, 20);
		
		var currentTime= now.getTime();
		var eventTime= eventDate.getTime();
		
		var remTime= eventTime-currentTime;
		
		var s=Math.floor(remTime/1000);
		var m=Math.floor(s/60);
		var h=Math.floor(m/60);
		var d=Math.floor(h/24);
		
		h %=24;
		m %=60;
		s %=60;
				
		h= (h < 10) ? "0" + h : h;
		m= (m < 10) ? "0" + m : m;
		s= (s < 10) ? "0" + s : s;
		
		document.getElementById("days").textContent = d;
		document.getElementById("days").innerText = d;
		
		document.getElementById("hours").textContent = h;
		document.getElementById("minutes").textContent = m;
		document.getElementById("seconds").textContent = s;
	
		setTimeout(countdown, 1000);
	}
	
	countdown();
</script>
</body>
</html>