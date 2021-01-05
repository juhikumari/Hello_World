 <%@ page import="java.io.* , java.util.*, javax.mail.*"%>
 <%@ page import="javax.mail.internet.* , javax.activation.*"%>
 <%@ page import="javax.servlet.http.* , javax.servlet.*"%>   
 
<%
	String result;
	String to="juhikumari9944@gmail.com";
	String from="juhikumari9944@gmail.com";
	
	final  String user="juhikumari9944@gmail.com";
	final String pass="";
	
	String host="smtp.gmail.com";
	
	
	Properties pros=new Properties();
	pros.put("mail.smtp.auth", "true");
	pros.put("mail.smtp.starttls.enable", "true");
	pros.put("mail.smtp.host", host);
	pros.put("mail.smtp.port", "587");

	Session session1 = Session.getDefaultInstance(pros,
			 new javax.mail.Authenticator() {
			  protected PasswordAuthentication getPasswordAuthentication() {
			   return new PasswordAuthentication(user,pass);
			   }
			});
	
	Message message=new MimeMessage(session1);
	try {
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO , InternetAddress.parse(to));
		message.setSubject("For apply form");
		message.setText("Your form has been sending");
		//message1.setText(n+""+quailification+""+experience);
		
		Transport.send(message);
		//Transport.send(message1);
	
		/* out.println("<img alt='Image'  height='500' width='1000' src='E:/workspace/Hropr/WebContent/img/1.jpg'>");
		request.getRequestDispatcher("./download").forward(request, response); */
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		
%>

<html>
<head>
	<title>Send Email Using jsp</title>
</head>

<body>
	<center>
		<h1>Send  Email Using JSP</h1>
	</center>
	
	<p align="center">
		<img alt="image" src="image/success.png">
<h1>Have a Nice Day.....<img alt="image" src="image\th (6).jpg"></h1>
	</p>

</body>
</html>

</body>
</html>