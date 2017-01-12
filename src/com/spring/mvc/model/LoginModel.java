package com.spring.mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.spring.mvc.dbcon.DbConn;
import com.spring.mvc.pojo.LoginBean;

public class LoginModel {

	
	public ResultSet validateUser(LoginBean lb){
		
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement ps=null;
		
		if(lb.getRole().equals("Student")){
			try {
				con=DbConn.getConnection();
				ps=con.prepareStatement("select * from student where ucmid=? and password=?");
				
				ps.setString(1, lb.getUname());
				ps.setString(2, lb.getPwd());
				rs=ps.executeQuery();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		return rs;	
		}else if(lb.getRole().equals("Advisor")){
			try {
				con=DbConn.getConnection();
				ps=con.prepareStatement("select * from advisor where uname=? and password=?");
				ps.setString(1, lb.getUname());
				ps.setString(2, lb.getPwd());
				
				rs=ps.executeQuery();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		return rs;
		}else{
		try{
			con=DbConn.getConnection();
			ps=con.prepareStatement("select * from user where uname=? and password=? ");
			ps.setString(1, lb.getUname());
			ps.setString(2, lb.getPwd());
//			ps.setString(3, lb.getRole());
			rs=ps.executeQuery();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
}
	}
