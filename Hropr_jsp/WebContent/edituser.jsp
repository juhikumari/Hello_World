<%@page import="com.mypack.dao.userdao,com.mypack.bean.User"%>  
 
<%  
	int id=Integer.parseInt(request.getParameter("id"));
	String email=request.getParameter("email");
	String qualification=request.getParameter("qualification");
	String experience=request.getParameter("experience");
	String location=request.getParameter("location");
	
		User u=new User();
		u.setId(id);
		u.setEmail(email);
		u.setQualification(qualification);
		u.setExperience(experience);
		u.setLocation(location);

	int i=userdao.update(u);
	if(i>0)
	{
		out.println("Succesfully Update");
%>
<jsp:include page="viewapplicant.jsp"></jsp:include>
<%
}
else
{
	out.println("Sorry! unable to update");
}		
%> 