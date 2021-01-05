package com.mypack.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Hrdao 
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
	
	public static int delete(int id)
	{
		int i=0;
		try
		{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from applicantform where id=?");
		ps.setInt(1, id);
		
		i=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
}
