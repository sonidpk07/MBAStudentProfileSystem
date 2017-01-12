package com.spring.mvc.controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.model.AdvisorModel;
import com.spring.mvc.pojo.AddStuBean;

@Controller
public class AdvisorController {
	@Autowired
	private AdvisorModel adm;
	
	
	@RequestMapping("/changePwd")
	public ModelAndView changePwd(){
		ModelAndView mav = new ModelAndView("setAdvPwd1");
		return mav;
	}
	
	@RequestMapping("/changePwdAct")
	public ModelAndView changePwdAct(@RequestParam("uname")String uname,@RequestParam("newPwd")String pwd,@RequestParam("newPwd1")String pwd1){
		ModelAndView mav= null;
		int i=0;
		if(pwd.equals(pwd1)){
		AdvisorModel am = new AdvisorModel();
		i=am.updateAdvPwd(uname,pwd);
		if(i!=0){
			mav = new ModelAndView("setAdvPwd1");
			mav.addObject("msg", "Password Updated Successfully");
		}else{
			mav = new ModelAndView("setAdvPwd1");
			mav.addObject("err", "Password did not change");
		}
			
		}else{
			mav = new ModelAndView("setAdvPwd1");
			mav.addObject("err", "Passwords did not match.");
		}
		return mav;
	}
	
	@RequestMapping("/showAdvisorStudent")
	public ModelAndView showStudents(@RequestParam("concentration")String concentration){
		ModelAndView mav= new ModelAndView("showAdvStudent");
		mav.addObject("showAdvStudent", adm.showAdvStudent(concentration));
		return mav;
		
	}
	@RequestMapping("/show_answers")
	public ModelAndView show_answers(@RequestParam("id")String ucmid){
		ModelAndView mav = new ModelAndView("showAnswers");
		mav.addObject("ans", adm.showAnswers(ucmid));
		return mav;
		
	}
	@RequestMapping("/editAdvStu")
	public ModelAndView editAdvStu(@RequestParam("id")String ucmid){
		ModelAndView mav = new ModelAndView();
		ResultSet rs=null;
		rs=adm.editAdvStu(ucmid);
		AddStuBean asb = new AddStuBean();
		try{
			if(rs.next()){
				asb.setFname(rs.getString(1));
				asb.setUcmid(rs.getString(3));
				asb.setConcentration(rs.getString(7));
				asb.setPrereq(rs.getString(23));
				
				mav= new ModelAndView("showEditAdvStu", "editStu", asb);
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("/editAdvStuAct")
	public ModelAndView editAdvStuAct(@ModelAttribute("editStu")AddStuBean asb){
		int i=0;
		ModelAndView mav = new ModelAndView();
		i=adm.editAdvStuAct(asb);
		if(i!=0){
			mav=new ModelAndView("showEditAdvStu");
			mav.addObject("msg", "Pre-requisite status updated.");
		}else{
		mav=new ModelAndView("showEditAdvStu");
		mav.addObject("err", "Failed Try again");
		}
		return mav;
		
	}
	 @RequestMapping("/studentNote")
	 public ModelAndView studentNote(@RequestParam("concentration")String concentration){
		 ModelAndView mav = new ModelAndView("studentNotes");
		 mav.addObject("studentNote", adm.studentNote(concentration));
		return mav;
	}
	 @RequestMapping("/editNote")
	 public ModelAndView editNote(@RequestParam("id")String ucmid){
		 ResultSet rs=null;
		 ModelAndView mav= null;
		 rs=adm.editNote(ucmid);
		 AddStuBean asb = new AddStuBean();
		  try {
			if(rs.next()){
				asb.setUcmid(rs.getString(1));
				asb.setNote(rs.getString(2));;
				mav= new ModelAndView("editNotes","editNotes",asb); 
			 }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return mav;
		 
	 }
	
	 @RequestMapping("/editNoteAct")
	 public ModelAndView editNoteAct(@RequestParam("note")String note,@RequestParam("ucmid")String ucmid){
		 ModelAndView mav = null;
		 int i=0;
		 i=adm.editNoteAct(note,ucmid);
		 if(i!=0){
			 mav=new ModelAndView("advisorHome");
		 }
		 return mav;
	 }
	
}
