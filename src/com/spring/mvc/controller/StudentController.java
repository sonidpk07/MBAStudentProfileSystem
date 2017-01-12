package com.spring.mvc.controller;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.model.StudentModel;
import com.spring.mvc.pojo.QuestionBean;


@Controller
public class StudentController {
	
@RequestMapping("/questions")
public ModelAndView questions(){
	QuestionBean qb = new QuestionBean();
	ModelAndView mav = new ModelAndView("question","ques",qb);
	return mav;
}
@RequestMapping("/saveAns")
public ModelAndView saveAns(@ModelAttribute("ques")QuestionBean qb){
	ModelAndView mav = null;
	
	Configuration cfg = new org.hibernate.cfg.Configuration();
	cfg=cfg.configure();
	
	SessionFactory sf=cfg.buildSessionFactory();
	Session s=sf.openSession();
	
	Transaction tx=s.beginTransaction();
	System.out.println(qb.getAns5());
	System.out.println(qb.getAns6());
	System.out.println(qb.getAns7());
	System.out.println(qb.getAns8());
	System.out.println(qb.getAns9());
	System.out.println(qb.getAns10());
	System.out.println(qb.getAns11());
	System.out.println(qb.getAns12());
	System.out.println(qb.getAns13());
	System.out.println(qb.getAns14());
	System.out.println(qb.getAns15());
	System.out.println(qb.getAns16());
	System.out.println(qb.getAns17());
	System.out.println(qb.getAns18());
	s.saveOrUpdate(qb);
	tx.commit();
	mav=new ModelAndView("acc");
	return mav;
	
}
@RequestMapping("/accdone")
public ModelAndView accdone(@RequestParam("ucmid")String uname){
	ModelAndView mav = null;
	int i=0;
	StudentModel sm = new StudentModel();
	
	i=sm.accUpdate(uname);
	if(i!=0){
		mav = new ModelAndView("studentHome");
		mav.addObject("msg", "You have completed both questionnaire and Academic code of conduct. :) ");
	}else{
		System.out.println("failed");	
	}
	return mav;
}




	
	
	
	
	
	
}
