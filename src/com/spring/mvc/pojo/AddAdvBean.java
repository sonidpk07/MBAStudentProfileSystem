package com.spring.mvc.pojo;

public class AddAdvBean {
	
private String advisor_userId;	
private String advisor_name;
private String concentration;
private String status;
private String password;
public AddAdvBean() {
	super();
	// TODO Auto-generated constructor stub
}
public AddAdvBean(String advisor_userId, String advisor_name, String concentration, String status, String password) {
	super();
	this.advisor_userId = advisor_userId;
	this.advisor_name = advisor_name;
	this.concentration = concentration;
	this.status = status;
	this.password = password;
}
public String getAdvisor_userId() {
	return advisor_userId;
}
public void setAdvisor_userId(String advisor_userId) {
	this.advisor_userId = advisor_userId;
}
public String getAdvisor_name() {
	return advisor_name;
}
public void setAdvisor_name(String advisor_name) {
	this.advisor_name = advisor_name;
}
public String getConcentration() {
	return concentration;
}
public void setConcentration(String concentration) {
	this.concentration = concentration;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


}
