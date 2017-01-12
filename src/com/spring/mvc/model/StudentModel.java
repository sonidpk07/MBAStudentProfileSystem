package com.spring.mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.spring.mvc.dbcon.DbConn;

public class StudentModel {
	
	public int accUpdate(String ucmid){
		int i=0;
				Connection con=null;
				try {
					con=DbConn.getConnection();
					PreparedStatement ps=con.prepareStatement("update student set acc=? where ucmid=?");
					ps.setString(1, "YES");
					ps.setString(2, ucmid);
					i=ps.executeUpdate();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		
		return i;
	}

}
