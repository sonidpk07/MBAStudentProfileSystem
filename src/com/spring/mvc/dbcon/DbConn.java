package com.spring.mvc.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn {
	public static Connection getConnection(){
		Connection con=null;
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ucmo","root","password");
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	
}
