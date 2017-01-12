package com.spring.mvc.pojo;

import javax.validation.constraints.Size;

public class LoginBean {
	@Size(min=1,max=3)
	private String uname;
	private String pwd;
	private String role;
	public LoginBean(String fname, String acc) {
		super();
		this.fname = fname;
		this.acc = acc;
	}
	private String fname;
	private String acc;
	public LoginBean(String uname, String pwd, String role, String fname, String acc) {
		super();
		this.uname = uname;
		this.pwd = pwd;
		this.role = role;
		this.fname = fname;
		this.acc = acc;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getAcc() {
		return acc;
	}
	public void setAcc(String acc) {
		this.acc = acc;
	}
	public LoginBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
