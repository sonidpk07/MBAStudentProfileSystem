package com.spring.mvc.pojo;

public class AddCourseBean {
	
	private String id;
	private String prgm;
	private String prefix;
	private String name;
	private String concentration;
	private String status;
	private String type;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPrgm() {
		return prgm;
	}
	public void setPrgm(String prgm) {
		this.prgm = prgm;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public AddCourseBean(String id, String prgm, String prefix, String name, String concentration, String status,
			String type) {
		super();
		this.id = id;
		this.prgm = prgm;
		this.prefix = prefix;
		this.name = name;
		this.concentration = concentration;
		this.status = status;
		this.type = type;
	}
	public AddCourseBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
