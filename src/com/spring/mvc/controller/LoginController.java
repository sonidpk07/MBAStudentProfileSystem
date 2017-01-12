package com.spring.mvc.controller;


import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.model.LoginModel;
import com.spring.mvc.pojo.LoginBean;

@Controller
//@RequestMapping("/CIS&IT")
public class LoginController {
	
	@RequestMapping("/loginPage")
	public ModelAndView loginPage(){
		LoginBean lb = new LoginBean();
			ModelAndView mav = new ModelAndView("login","loginObj",lb);
			return mav;
		}
	
	@RequestMapping("/loginSubmit")
	public ModelAndView loginSubmit(@ModelAttribute("loginObj")LoginBean lb, BindingResult result,HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		ArrayList<LoginBean> al = null;
		ResultSet rs=null;
		String role=null;
		String uname=null;
		
		LoginModel lm = new LoginModel();
		rs=lm.validateUser(lb);
		
		try{
			if(rs.next())
			{
				uname=lb.getUname();
				HttpSession hs = request.getSession();
				role= lb.getRole();
			if(role.equals("Director")){
				String name = rs.getString(4);
				mav = new ModelAndView("directorHome");
				hs.setAttribute("uname", name);
				
			}else if(role.equals("Advisor")){
				mav = new ModelAndView("advisorHome");
				hs.setAttribute("uname", uname);
			}else{
				al = new ArrayList<LoginBean>();
				LoginBean lb1 = new LoginBean(rs.getString("fname"),rs.getString("acc"));
				al.add(lb1);
				mav = new ModelAndView("studentHome");
				mav.addObject("data", al);
				hs.setAttribute("uname", uname);
			}
		}
				else{
					mav = new ModelAndView("login");
					mav.addObject("msg", "No record found!");
					
				}
				}catch(Exception e){
			e.printStackTrace();
			
	}
		return mav;
		
	}
	

	
}
