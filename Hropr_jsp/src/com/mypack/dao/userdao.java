package com.mypack.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mypack.bean.User;

public class userdao
{
	public static Connection getConnection()
	{
		Connection con= null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hropr1", "root", "root");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public static int insert(User u)
	{
		int i=0;
		try
		{
			Connection con=getConnection();
			java.sql.PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, u.getJob_titles());
			ps.setString(3, u.getDomain());
			ps.setString(4, u.getExperience());
			ps.setString(5, u.getTime());
			ps.setString(6,u.getLocation());
			
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}

	public static int insertapp(User u)
	{
		int i=0;
		try
		{
			Connection con=getConnection();
			java.sql.PreparedStatement ps=con.prepareStatement("insert into app values(?,?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, u.getName());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setString(5, u.getConfirm_password());
			ps.setString(6,u.getCountry());
			
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	public static int update(User u)
	{
		int i= 0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update applicantform set email=?,qualification=?,experience=?,location=? where id=?");
			//ps.setInt(1, u.getId());
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getQualification());
			ps.setString(3, u.getExperience());
			ps.setString(4, u.getLocation());
			ps.setInt(5, u.getId());
			
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	public static int delete(int id)
	{
		int i=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from app where id=?");
			ps.setInt(1, id);
			
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
/*	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from app where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPassword(rs.getString("password"));  
	            u.setConfirm_password(rs.getString("confirm_password"));  
	            u.setCountry(rs.getString("country"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}*/ 
}
