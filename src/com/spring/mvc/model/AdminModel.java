package com.spring.mvc.model;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.spring.mvc.dbcon.DbConn;

import com.spring.mvc.pojo.AddAdvBean;
import com.spring.mvc.pojo.AddConcentrationBean;
import com.spring.mvc.pojo.AddCourseBean;
import com.spring.mvc.pojo.AddStuBean;


public class AdminModel{
	
	
	public String checkStudentId(String id){
		ResultSet rs=null;
		Connection con=null;
		String ucmid=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select ucmid from student where ucmid=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()){
				 ucmid=rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ucmid;
		
	}
	
	public String checkAdvisorId(String id){
		ResultSet rs=null;
		Connection con=null;
		String uname=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select uname from advisor where uname=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()){
				uname=rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return uname;
		
	}
	public int addStudent(AddStuBean asb){

		int i=0;
		Connection con=null;
		String acceptedTime=null;
		String approvedTime=null;
		String withdrawnTime=null;
		String accepted_conTime=null;
		
			if(asb.getAccepted().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				acceptedTime = sdf.format(dt);
			}else{
				 acceptedTime="NULL";
			}
			if(asb.getApproved().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				approvedTime = sdf.format(dt);
			}else{
				approvedTime="NULL";
			}
			if(asb.getWithdrawn().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				withdrawnTime = sdf.format(dt);	
			}
			else{
				withdrawnTime ="NULL";
			}
			if(asb.getAccepted_con().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				accepted_conTime = sdf.format(dt);
			}else{
				accepted_conTime="NULL";
			}
			
			
			try{
			con = DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("insert into student (fname,lname,ucmid,address,uemail,non_uemail,concentration,"
					+ "entry_date,quant,verbal,gpa,approved,approvedDate,withdrawn,withdrawnDate,accepted,acceptedTime,accepted_con"
					+ ",accepted_conTime,note,acc,password,prereq) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, asb.getFname());ps.setString(2, asb.getLname());ps.setString(3, asb.getUcmid());
			ps.setString(4, asb.getAdd());ps.setString(5, asb.getUemail());ps.setString(6, asb.getNon_uemail());
			ps.setString(7, asb.getConcentration());ps.setString(8, asb.getEntry_date());ps.setString(9, asb.getQunat());
			ps.setString(10, asb.getVerbal());ps.setString(11, asb.getGpa());ps.setString(12, asb.getApproved());
			ps.setString(13, approvedTime);ps.setString(14, asb.getWithdrawn());ps.setString(15, withdrawnTime);
			ps.setString(16, asb.getAccepted());ps.setString(17, acceptedTime);ps.setString(18, asb.getAccepted_con());
			ps.setString(19, accepted_conTime);ps.setString(20, asb.getNote());
			ps.setString(21, asb.getAcc());
			ps.setString(22, asb.getPassword()); ps.setString(23, "NOT MET");
			
			i=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;
	}
	
	public String sendMail(String uemail,String detail){
		
		final String username = "deepakdummyacc@gmail.com";
		final String password = "mydummyaccount";
		

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("deepakdummyacc@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(uemail));
			message.setSubject("University of Central Missouri");
			message.setText(detail);

			Transport.send(message);

//			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
		
		return null;
		
	}
	
	
	
	
	
	public List<AddStuBean>showAllStundet(){
		ArrayList<AddStuBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("select * from student");
			rs=ps.executeQuery();
			if(rs.next()){
				al=new ArrayList<AddStuBean>();
				do{
		AddStuBean asb = new AddStuBean(rs.getString("fname"),rs.getString("lname"),rs.getString("ucmid"),
		rs.getString("address"), rs.getString("phone") ,rs.getString("uemail"),rs.getString("non_uemail"),rs.getString("concentration"),rs.getString("entry_date"),
		rs.getString("quant"),rs.getString("verbal"),rs.getString("gpa"),rs.getString("approved"),rs.getString("approvedDate"),
		rs.getString("withdrawn"),rs.getString("withdrawnDate"),rs.getString("accepted"),rs.getString("acceptedTime"),rs.getString("accepted_con"),
		rs.getString("accepted_conTime"),rs.getString("note"),rs.getString(21));
					
		al.add(asb);
				}while(rs.next());
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
		
	}
	
//	advisor methods
	
	
	public int addAdvisor(AddAdvBean aab){
		int i= 0;
		Connection con=null;		
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into advisor "
					+ "(advisor_name,concentration,status,uname,password) values (?,?,?,?,?)");
			
			ps.setString(1, aab.getAdvisor_name());
			ps.setString(2, aab.getConcentration());
			ps.setString(3, aab.getStatus());
			ps.setString(4, aab.getAdvisor_userId());
			ps.setString(5, aab.getPassword());
			
			
			i=ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return i;
	}

	
	public int  AdvupdatePwd(String advisor,String pwd){
		int i=0;
		Connection con=null;
		try{
			con= DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("update advisor set password=? where uname=?");
			ps.setString(1, pwd);
			ps.setString(2, advisor);
			i=ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return i;
	}
//	public int createAdvisor(String advName,String pwd){
//		int i=0;
//		Connection con=null;
//		try {
//		con = DbConn.getConnection();
//		PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");
//		ps.setString(1, "advisor");
//		ps.setString(2, advName);
//		ps.setString(3, pwd);
//		i=ps.executeUpdate();
//		
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return i;
//	}
	
	
	public int addConcentration(AddConcentrationBean acb){
		int i=0;
		Connection con=null;
		con=DbConn.getConnection();
		try{
			PreparedStatement ps=con.prepareStatement("insert into concentration values(?,?,?)");
			ps.setString(1,acb.getCid());
			ps.setString(2, acb.getCname());
			ps.setString(3, acb.getStatus());
			System.out.println(ps);
			i=ps.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return i;	
	}
	
	public List<AddStuBean> nonAcademicList(){
		ArrayList<AddStuBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student where acc='NO'");
			rs=ps.executeQuery();
			if(rs.next()){
				al = new ArrayList<AddStuBean>();
				do{
					AddStuBean asb = new AddStuBean(rs.getString("ucmid"),rs.getString("concentration"),rs.getString("fname"));
					al.add(asb);
				}while(rs.next());
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}
	
	public int addCourse(AddCourseBean acb){
		int i=0;
		Connection con=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into course value(?,?,?,?,?,?,?)");
			ps.setString(1, acb.getId());
			ps.setString(2, acb.getPrgm());
			ps.setString(3, acb.getPrefix());
			ps.setString(4, acb.getName());
			ps.setString(5, acb.getConcentration());
			ps.setString(6, acb.getStatus());
			ps.setString(7, acb.getType());
			i=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}
	
	public ResultSet editStudent(String id){
		ResultSet rs=null;
		Connection con=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student where ucmid=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return rs;
	}
	public int  EditStudentAct(AddStuBean asb){
		String acceptedTime=null;
		String approvedTime=null;
		String withdrawnTime=null;
		String accepted_conTime=null;
		
			if(asb.getAccepted().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				acceptedTime = sdf.format(dt);
			}else{
				 acceptedTime="NULL";
			}
			if(asb.getApproved().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				approvedTime = sdf.format(dt);
			}else{
				approvedTime="NULL";
			}
			if(asb.getWithdrawn().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				withdrawnTime = sdf.format(dt);	
			}
			else{
				withdrawnTime ="NULL";
			}
			if(asb.getAccepted_con().equals("YES")){
				java.util.Date dt = new java.util.Date();
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				accepted_conTime = sdf.format(dt);
			}else{
				accepted_conTime="NULL";
			}
		int i=0;
		Connection con=null;
		try{
			con= DbConn.getConnection();
			PreparedStatement ps =con.prepareStatement("update student set fname=?, lname=?, ucmid=?, address=?,"
					+ "phone=?, uemail=?, non_uemail=?, concentration=?, entry_date=?, quant=?, verbal=?, gpa=?,"
					+ "acc=?, approved=?, approvedDate=?, withdrawn=?, withdrawnDate=?, accepted=?, acceptedTime=?,"
					+ "accepted_con=?, accepted_conTime=? where ucmid=?");
			System.out.println(ps);
			ps.setString(1, asb.getFname());
			ps.setString(2, asb.getLname());
			ps.setString(3, asb.getUcmid());
			ps.setString(4, asb.getAdd());
			ps.setString(5, asb.getPhone());
			ps.setString(6, asb.getUemail());
			ps.setString(7, asb.getNon_uemail());
			ps.setString(8, asb.getConcentration());
			ps.setString(9, asb.getEntry_date());
			ps.setString(10, asb.getQunat());
			ps.setString(11, asb.getVerbal());
			ps.setString(12, asb.getGpa());
			ps.setString(13, asb.getAcc());
			ps.setString(14, asb.getApproved());
			ps.setString(15, approvedTime);
			ps.setString(16, asb.getWithdrawn());
			ps.setString(17, withdrawnTime);
			ps.setString(18, asb.getAccepted());
			ps.setString(19, acceptedTime);
			ps.setString(20, asb.getAccepted_con());
			ps.setString(21, accepted_conTime);
			ps.setString(22, asb.getUcmid());
			
			i=ps.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return i;
	}
	
	public List<AddConcentrationBean> showAllConcentration(){
		ArrayList<AddConcentrationBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try{
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from concentration");
			rs=ps.executeQuery();
			if(rs.next()){
				al = new ArrayList<AddConcentrationBean>();
				do{
					AddConcentrationBean acb = new AddConcentrationBean(rs.getString("cid"),rs.getString("cname"),rs.getString("status"));
					al.add(acb);
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}
	
	public List<AddCourseBean> showAllCourse(){
		ArrayList<AddCourseBean> al = null;
		Connection con=null;
		ResultSet rs=null;
		try {
			con = DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from course");
			rs=ps.executeQuery();
			if(rs.next()){
				al = new ArrayList<AddCourseBean>();
				do{
					AddCourseBean acb = new AddCourseBean(rs.getString("id"),rs.getString("program"),rs.getString("prefix"),
							rs.getString("name"),rs.getString("concentration"),rs.getString("status"),rs.getString("type"));
					al.add(acb);
				}while(rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	
	public ResultSet editCourse(String id){
		ResultSet rs=null;
		Connection con=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from course where id=?");
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return rs;
	}
	public ResultSet editConcentration(String cid){
		ResultSet rs=null;
		Connection con=null;
		try {
			con=DbConn.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from concentration where cid=?");
			ps.setString(1, cid);
			rs=ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return rs;
	}
	
	
	

}
