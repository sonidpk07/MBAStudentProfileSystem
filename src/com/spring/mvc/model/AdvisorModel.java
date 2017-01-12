package com.spring.mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import com.spring.mvc.dbcon.DbConn;
import com.spring.mvc.pojo.AddStuBean;
import com.spring.mvc.pojo.QuestionBean;

public class AdvisorModel {
	
	public int updateAdvPwd(String uname,String pwd){
		int i=0;
		Connection con=null;
		try{
			con= DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("update advisor set password=? where uname=?");
			ps.setString(1, pwd);
			ps.setString(2, uname);
			i=ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;
	}
	
	public List<AddStuBean>showAdvStudent(String concentration){
		ArrayList<AddStuBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("select * from student where concentration=?");
			ps.setString(1, concentration);
			rs=ps.executeQuery();
			if(rs.next()){
				al=new ArrayList<AddStuBean>();
				do{
					
		AddStuBean asb = new AddStuBean(rs.getString("fname"),rs.getString("lname"),rs.getString("ucmid"),
				rs.getString("uemail"),rs.getString("concentration"),rs.getString("note"),rs.getString(21),rs.getString(23),rs.getString("prereq_date"));
		
				al.add(asb);
	
				}while(rs.next());
				
			} }catch(Exception e){
				e.printStackTrace();
			}
		
	return al;
	} 
	
	
	
	public List<QuestionBean>showAnswers(String ucmid){
		ArrayList<QuestionBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("select * from answer where id=?");
			ps.setString(1, ucmid);
			rs=ps.executeQuery();
			if(rs.next()){
				al=new ArrayList<QuestionBean>();
				do{
					QuestionBean qb = new QuestionBean(rs.getString(1),rs.getString(2),rs.getString(3)
							,rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)
							,rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),
							rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18),rs.getString(19));
					al.add(qb);
				}while(rs.next());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}
	
	public ResultSet editAdvStu(String ucmid){
		ResultSet rs=null;
		Connection con = null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student where ucmid=?");
			ps.setString(1, ucmid);
			rs=ps.executeQuery();
		} catch (Exception e) {
			 e.printStackTrace();
		}
		return rs;
	}
	
	public int editAdvStuAct(AddStuBean asb){
		int i=0;
		Connection con = null;
		String prereq_date =null;
		if(asb.getPrereq().equals("MET")){
			java.util.Date dt = new java.util.Date();
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			prereq_date = sdf.format(dt);
		}else{
			prereq_date="NULL";
		}	
		try {
			con=DbConn.getConnection();
			PreparedStatement ps = con.prepareStatement("update student set prereq=?, prereq_date=? where ucmid=?");
			ps.setString(1, asb.getPrereq());
			ps.setString(2, prereq_date);
			ps.setString(3, asb.getUcmid());
			i=ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;
	}
	
	public List<AddStuBean>studentNote(String concentration){
		ArrayList<AddStuBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select fname,ucmid,note, note_date from student where concentration=?");
			ps.setString(1, concentration);
			rs=ps.executeQuery();
			if(rs.next()){
				al = new ArrayList<AddStuBean>();
				do{
				AddStuBean asb = new AddStuBean(rs.getString("fname"),rs.getString("ucmid"),rs.getString("note"),rs.getString("note_date"));
				al.add(asb);
				}while(rs.next());
			}	
		}catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}
	
	public ResultSet editNote(String ucmid){
		ResultSet rs=null;
		Connection con=null;
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select ucmid, note from student where ucmid=?");
			ps.setString(1, ucmid);
			rs=ps.executeQuery();	
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	public int editNoteAct(String note, String ucmid){
		int i=0;
		Connection con=null;
		String note_date=null;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		note_date = sdf.format(dt);
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("update student set note=?,note_date=? where ucmid=?");
			ps.setString(1, note);
			ps.setString(2, note_date);
			ps.setString(3, ucmid);
			i=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
