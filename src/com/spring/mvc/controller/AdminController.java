package com.spring.mvc.controller;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.model.AdminModel;
import com.spring.mvc.pojo.AddAdvBean;
import com.spring.mvc.pojo.AddConcentrationBean;
import com.spring.mvc.pojo.AddCourseBean;
import com.spring.mvc.pojo.AddStuBean;

@Controller
public class AdminController {
	@Autowired
	private AdminModel am;

	@RequestMapping("/addStudentPage")
	public ModelAndView addStudentPage() {
		AddStuBean asb = new AddStuBean();
		ModelAndView mav = new ModelAndView("addStudent", "addStuObj", asb);
		return mav;
	}

	@RequestMapping("/addStudentAct")
	public ModelAndView addStudentAct(@ModelAttribute("addStuObj") AddStuBean asb, HttpServletRequest request) {
		ModelAndView mav = null;
		String id = asb.getUcmid();
		if (id.equals(am.checkStudentId(id))) {
			mav = new ModelAndView("addStudent");
			mav.addObject("msg", "700# already exist student record");
			return mav;
		}
		if (id.equals(am.checkAdvisorId(id))) {
			mav = new ModelAndView("addStudent");
			mav.addObject("msg", "700# already exist advisor record");
			return mav;
		}else{
//			System.out.println(asb.getPhone());
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

		Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg = cfg.configure();

		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();

		Transaction tx = s.beginTransaction();
		asb.setAcceptedTime(acceptedTime);
		asb.setApprovedDate(approvedTime);
		asb.setWithdrawnDate(withdrawnTime);
		asb.setAccepted_conTime(accepted_conTime);
		asb.setPrereq("NOT MET");
		s.saveOrUpdate(asb);
		tx.commit();

			HttpSession hs = request.getSession();
			hs.setAttribute("700#", asb.getUcmid());
			hs.setAttribute("uemail", asb.getUemail());
			hs.setAttribute("pwd", asb.getPassword());
			hs.setAttribute("name", asb.getFname());
			hs.setAttribute("address", asb.getAdd());
			hs.setAttribute("concentration", asb.getConcentration());
			mav = new ModelAndView("sendEmail");
			return mav;
		}
	}


	@RequestMapping("/sendEmail")
	public ModelAndView sendEmail(@RequestParam("detail") String detail, @RequestParam("uemail") String uemail) {
		ModelAndView mav = new ModelAndView();
		am.sendMail(uemail, detail);
		mav = new ModelAndView("directorHome");
		mav.addObject("msg", "Email sent successfully");
		return mav;
	}

	@RequestMapping("/showAllStudentPage")
	public ModelAndView showAllStudentPage() {
		ModelAndView mav = new ModelAndView("showAllStudent");
		mav.addObject("showStudent", am.showAllStundet());
		return mav;
	}

	@RequestMapping("/nonAcademicList")
	public ModelAndView nonAcademicList() {
		ModelAndView mav = new ModelAndView("nonAccList");
		mav.addObject("showStu", am.nonAcademicList());
		return mav;
	}

	@RequestMapping("/edit_Stu")
	public ModelAndView edit_Student(@RequestParam("id") String id, HttpServletRequest request) {
		ResultSet rs = null;
		ModelAndView mav = null;

		HttpSession hs = request.getSession();
		hs.setAttribute("stu_Id", id);
		rs = am.editStudent(id);
		
		AddStuBean asb = new AddStuBean();
		try {
			while (rs.next()) {
				asb.setFname(rs.getString(1));
				asb.setLname(rs.getString(2));
				asb.setUcmid(rs.getString(3));
				asb.setAdd(rs.getString(4));
				asb.setPhone(rs.getString(26));
				asb.setUemail(rs.getString(5));
				asb.setNon_uemail(rs.getString(6));
				asb.setConcentration(rs.getString(7));
				asb.setEntry_date(rs.getString(8));
				asb.setQunat(rs.getString(9));
				asb.setVerbal(rs.getString(10));
				asb.setGpa(rs.getString(11));
				asb.setApproved(rs.getString(12));
				asb.setApprovedDate(rs.getString(13));
				asb.setWithdrawn(rs.getString(14));
				asb.setWithdrawnDate(rs.getString(15));
				asb.setAccepted(rs.getString(16));
				asb.setAcceptedTime(rs.getString(17));
				asb.setAccepted_con(rs.getString(18));
				asb.setAccepted_conTime(rs.getString(19));
				asb.setNote(rs.getString(20));
				asb.setAcc(rs.getString(21));
				
				mav = new ModelAndView("editStudent", "edit_Stu", asb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/editStuAct")
	public String editStuAct(@ModelAttribute("edit_Stu") AddStuBean asb) {
		
			AdminModel am = new AdminModel();
			int i=0;
			i=am.EditStudentAct(asb);
			if(i!=0){
				return "redirect:/showAllStudentPage";
			}else{
				System.out.println("Failed");
			}
		return null;
		

	}

	// advisor functionalities

	@RequestMapping("/addAdvisorPage")
	public ModelAndView addAdvisorPage() {
		AddAdvBean aab = new AddAdvBean();
		ModelAndView mav = new ModelAndView("addAdvisor", "addAdvObj", aab);
		return mav;
	}

	@RequestMapping("/addAdvAct")
	public ModelAndView addAdvAct(@ModelAttribute("addAdvObj") AddAdvBean aab) {
		ModelAndView mav = null;
		String id = aab.getAdvisor_userId();

		if (id.equals(am.checkAdvisorId(id))) {
			mav = new ModelAndView("addAdvisor");
			mav.addObject("err", "700# already exist advisor record");
			return mav;
		}
		if (id.equals(am.checkStudentId(id))) {
			mav = new ModelAndView("addAdvisor");
			mav.addObject("err", "700# already exist student record");
			return mav;
		}

		int i = 0;

		AdminModel am = new AdminModel();
		i = am.addAdvisor(aab);
		if (i != 0) {
			mav = new ModelAndView("addAdvisor");
			mav.addObject("msg", "Advisor added successfully!!");
		} else {
			mav = new ModelAndView("addAdvisor");
			mav.addObject("err", "Operation could not be completed. Please try again");
		}

		return mav;
	}

	@RequestMapping("/advMgnt")
	public ModelAndView advMgnt() {
		ModelAndView mav = new ModelAndView("advisorManagement");
		return mav;
	}
	
	@RequestMapping("/StuMgnt")
	public ModelAndView StuMgnt() {
		ModelAndView mav = new ModelAndView("StudentManagement");
		return mav;
	}
	
	@RequestMapping("/courseMngt")
	public ModelAndView courseMngt() {
		ModelAndView mav = new ModelAndView("CourseManagement");
		return mav;
	}

	@RequestMapping("/setPwd")
	public ModelAndView setPwd() {
		ModelAndView mav = new ModelAndView("setAdvPwd");
		return mav;
	}

	@RequestMapping("/advisorPwd")
	public ModelAndView advisorPwd(@RequestParam("advisor") String advisor, @RequestParam("newPwd") String pwd,
			@RequestParam("newPwd1") String pwd1) {
		int i = 0;
		ModelAndView mav = null;
		if (pwd.equals(pwd1)) {
			i = am.AdvupdatePwd(advisor, pwd);
			if (i != 0) {
				mav = new ModelAndView("setAdvPwd");
				mav.addObject("msg", "Password changed for Advisor");
			}
		} else {
			mav = new ModelAndView("setAdvPwd");
			mav.addObject("err", "Password did not matched. Please input password again");
		}
		return mav;
	}

	// @RequestMapping("/newAdv")
	// public ModelAndView newAdv(){
	// ModelAndView mav = new ModelAndView("newAdvisor");
	// return mav;
	//
	// }

	// @RequestMapping("/addAdvisor")
	// public ModelAndView addAdvisor(@RequestParam("advName")String advName,
	// @RequestParam("pwd")String pwd,@RequestParam("pwd1")String pwd1){
	// ModelAndView mav = null;
	// int i=0;
	// if(pwd.equals(pwd1)){
	// i=am.createAdvisor(advName,pwd);
	// if(i!=0){
	// mav = new ModelAndView("newAdvisor");
	// mav.addObject("msg", "New Advisor has been created!!");
	// }
	// }else{
	// mav = new ModelAndView("newAdvisor");
	// mav.addObject("msg"," Passwords did not match. Please try again");
	// }
	//
	// return mav;
	// }

	@RequestMapping("/addConcentrationPage")
	public ModelAndView addConcentrationPage() {
		AddConcentrationBean acb = new AddConcentrationBean();
		ModelAndView mav = new ModelAndView("addConcentration", "addConObj", acb);
		return mav;
	}

	@RequestMapping("/addConcentration")
	public ModelAndView addConcentration(@ModelAttribute("addConObj") AddConcentrationBean acb) {
		ModelAndView mav = null;
		int i = 0;
		AdminModel cm = new AdminModel();
		i = cm.addConcentration(acb);
		if (i != 0) {
			mav = new ModelAndView("addConcentration");
			mav.addObject("msg", "Concentration added successfully");
		} else {
			mav = new ModelAndView("addConcentration");
			mav.addObject("err", "Try again");
		}
		return mav;
	}

	@RequestMapping("/showAllCon")
	public ModelAndView editConcentrationPage() {
		ModelAndView mav = new ModelAndView("showAllConcentration");
		mav.addObject("showCon", am.showAllConcentration());

		return mav;
	}

	@RequestMapping("editConcentration")
	public ModelAndView editConcentration(@RequestParam("id") String cid, HttpServletRequest request) {
		ResultSet rs = null;
		ModelAndView mav = null;

		HttpSession hs = request.getSession();
		hs.setAttribute("concentration_Id", cid);

		rs = am.editConcentration(cid);
		AddConcentrationBean acb = new AddConcentrationBean();
		try {
			while (rs.next()) {
				acb.setCid(rs.getString(1));
				acb.setCname(rs.getString(2));
				acb.setStatus(rs.getString(3));
				mav = new ModelAndView("editConcentration", "edit_Concentration", acb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/editConAct")
	public String editConAct(@ModelAttribute("edit_Con") AddConcentrationBean acb) {

		Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg = cfg.configure();

		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();

		Transaction tx = s.beginTransaction();
		s.saveOrUpdate(acb);
		tx.commit();

		return "redirect:/showAllCon";

	}

	@RequestMapping("/addCourse")
	public ModelAndView addCourse() {
		ModelAndView mav = null;
		AddCourseBean acb = new AddCourseBean();
		mav = new ModelAndView("addCourse", "courseBean", acb);
		return mav;

	}

	@RequestMapping("/addCourseAct")
	public ModelAndView addCourseAct(@ModelAttribute("courseBean") AddCourseBean acb) {
		ModelAndView mav = null;
		int i = 0;
		AdminModel am = new AdminModel();
		i = am.addCourse(acb);
		if (i != 0) {
			mav = new ModelAndView("directorHome");
		} else {
			System.out.println("Not Successful");
		}
		return mav;
	}

	@RequestMapping("/showAllCourse")
	public ModelAndView showAllCourse() {
		ModelAndView mav = new ModelAndView("showAllCourse");
		mav.addObject("showCourse", am.showAllCourse());
		return mav;
	}

	@RequestMapping("/editCourse")
	public ModelAndView editCourse(@RequestParam("id") String id, HttpServletRequest request) {
		ResultSet rs = null;
		ModelAndView mav = null;

		HttpSession hs = request.getSession();
		hs.setAttribute("course_Id", id);

		rs = am.editCourse(id);
		AddCourseBean acb = new AddCourseBean();
		try {
			while (rs.next()) {
				acb.setId(rs.getString(1));
				acb.setPrgm(rs.getString(2));
				acb.setPrefix(rs.getString(3));
				acb.setName(rs.getString(4));
				acb.setConcentration(rs.getString(5));
				acb.setStatus(rs.getString(6));
				acb.setType(rs.getString(7));
				mav = new ModelAndView("editCourse", "edit_Course", acb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/editCourseAct")
	public String editCourseAct(@ModelAttribute("edit_Course") AddCourseBean acb) {

		Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg = cfg.configure();

		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();

		Transaction tx = s.beginTransaction();
		s.saveOrUpdate(acb);
		tx.commit();

		return "redirect:/showAllCourse";
	}

}
