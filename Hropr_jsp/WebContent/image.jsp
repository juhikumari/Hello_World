<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="image/background.jpg">
<center>
<form action="" method="post">
<% 
String connectionURL = "jdbc:mysql://localhost:3306/hropr1";

Connection connection= null;
ResultSet rs = null;
PreparedStatement psmnt = null;
InputStream sImage;
OutputStream os =null;
try
{
	int id=Integer.parseInt(request.getParameter("id"));
	//out.println(id);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL, "root", "root");
	psmnt = connection.prepareStatement("SELECT resume FROM applicantform WHERE id = '"+id+"'");
	rs = psmnt.executeQuery();
	if(rs.next())
	{
		/* byte[] bytearray = new byte[1048576];
		int size=0;
		sImage = rs.getBinaryStream(1);
		response.reset();
		response.setContentType("image/jpeg");
		while((size=sImage.read(bytearray))!= -1 )
		{
			response.getOutputStream().write(bytearray,0,size);
		} */
		
		 java.sql.Blob b=rs.getBlob("resume");
		byte byteArray[]=b.getBytes(1,(int)b.length());
		//out.println(byteArray);
		response.setContentType("image/jpg");
		os=response.getOutputStream();
		os.write(byteArray); 
	}
	}
catch(Exception ex)
{
	ex.printStackTrace();
}
finally { 
    if(os != null)
      try {
          os.close();
          os.flush();
      }catch (java.lang.IllegalStateException e) {
          e.printStackTrace();
      } catch (IOException e) {
          e.printStackTrace();
      }
}  %>
</form>
</center>