package com.spring.mvc.pojo;

public class AddStuBean {
	
private String fname;
private String lname;
private String ucmid;
private String add;
private String phone;
private String uemail;
private String non_uemail;
private String concentration;
private String entry_date;
private String qunat;
private String verbal;
private String gpa;
private String approved;
private String approvedDate;
private String withdrawn;
private String withdrawnDate;
private String accepted;
private String acceptedTime;
private String accepted_con;
private String accepted_conTime;
private String note;
private String acc;
private String password;
private String prereq;
private String note_date;
private String prereq_date;


public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getPrereq_date() {
	return prereq_date;
}
public void setPrereq_date(String prereq_date) {
	this.prereq_date = prereq_date;
}
public String getNote_date() {
	return note_date;
}
public void setNote_date(String note_date) {
	this.note_date = note_date;
}
public String getPrereq() {
	return prereq;
}
public void setPrereq(String prereq) {
	this.prereq = prereq;
}
public AddStuBean() {
	super();
	// TODO Auto-generated constructor stub
}
//public AddStuBean(String fname, String lname, String ucmid, String add, String uemail, String non_uemail,
//		String concentration, String entry_date, String qunat, String verbal, String gpa, String approved,
//		String approvedDate, String withdrawn, String withdrawnDate, String accepted, String acceptedTime,
//		String accepted_con, String accepted_conTime, String note, String acc, String password) {
//	super();
//	this.fname = fname;
//	this.lname = lname;
//	this.ucmid = ucmid;
//	this.add = add;
//	this.uemail = uemail;
//	this.non_uemail = non_uemail;
//	this.concentration = concentration;
//	this.entry_date = entry_date;
//	this.qunat = qunat;
//	this.verbal = verbal;
//	this.gpa = gpa;
//	this.approved = approved;
//	this.approvedDate = approvedDate;
//	this.withdrawn = withdrawn;
//	this.withdrawnDate = withdrawnDate;
//	this.accepted = accepted;
//	this.acceptedTime = acceptedTime;
//	this.accepted_con = accepted_con;
//	this.accepted_conTime = accepted_conTime;
//	this.note = note;
//	this.acc = acc;
//	this.password = password;
//}


public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getUcmid() {
	return ucmid;
}
public void setUcmid(String ucmid) {
	this.ucmid = ucmid;
}
public String getAdd() {
	return add;
}
public void setAdd(String add) {
	this.add = add;
}
public String getUemail() {
	return uemail;
}
public void setUemail(String uemail) {
	this.uemail = uemail;
}
public String getNon_uemail() {
	return non_uemail;
}
public void setNon_uemail(String non_uemail) {
	this.non_uemail = non_uemail;
}
public String getConcentration() {
	return concentration;
}
public void setConcentration(String concentration) {
	this.concentration = concentration;
}
public String getEntry_date() {
	return entry_date;
}
public void setEntry_date(String entry_date) {
	this.entry_date = entry_date;
}
public String getQunat() {
	return qunat;
}
public void setQunat(String qunat) {
	this.qunat = qunat;
}
public String getVerbal() {
	return verbal;
}
public void setVerbal(String verbal) {
	this.verbal = verbal;
}
public String getGpa() {
	return gpa;
}
public void setGpa(String gpa) {
	this.gpa = gpa;
}
public String getApproved() {
	return approved;
}
public void setApproved(String approved) {
	this.approved = approved;
}
public String getApprovedDate() {
	return approvedDate;
}
public void setApprovedDate(String approvedDate) {
	this.approvedDate = approvedDate;
}
public String getWithdrawn() {
	return withdrawn;
}
public void setWithdrawn(String withdrawn) {
	this.withdrawn = withdrawn;
}
public String getWithdrawnDate() {
	return withdrawnDate;
}
public void setWithdrawnDate(String withdrawnDate) {
	this.withdrawnDate = withdrawnDate;
}
public String getAccepted() {
	return accepted;
}
public void setAccepted(String accepted) {
	this.accepted = accepted;
}
public String getAcceptedTime() {
	return acceptedTime;
}
public void setAcceptedTime(String acceptedTime) {
	this.acceptedTime = acceptedTime;
}
public String getAccepted_con() {
	return accepted_con;
}
public void setAccepted_con(String accepted_con) {
	this.accepted_con = accepted_con;
}
public String getAccepted_conTime() {
	return accepted_conTime;
}
public void setAccepted_conTime(String accepted_conTime) {
	this.accepted_conTime = accepted_conTime;
}
public String getNote() {
	return note;
}
public void setNote(String note) {
	this.note = note;
}
public String getAcc() {
	return acc;
}
public void setAcc(String acc) {
	this.acc = acc;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



public AddStuBean(String fname, String lname, String ucmid, String add, String phone, String uemail, String non_uemail,
		String concentration, String entry_date, String qunat, String verbal, String gpa, String approved,
		String approvedDate, String withdrawn, String withdrawnDate, String accepted, String acceptedTime,
		String accepted_con, String accepted_conTime, String note, String acc) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.ucmid = ucmid;
	this.add = add;
	this.phone = phone;
	this.uemail = uemail;
	this.non_uemail = non_uemail;
	this.concentration = concentration;
	this.entry_date = entry_date;
	this.qunat = qunat;
	this.verbal = verbal;
	this.gpa = gpa;
	this.approved = approved;
	this.approvedDate = approvedDate;
	this.withdrawn = withdrawn;
	this.withdrawnDate = withdrawnDate;
	this.accepted = accepted;
	this.acceptedTime = acceptedTime;
	this.accepted_con = accepted_con;
	this.accepted_conTime = accepted_conTime;
	this.note = note;
	this.acc = acc;
}
public AddStuBean(String fname, String ucmid, String concentration) {
	super();
	this.fname = fname;
	this.ucmid = ucmid;
	this.concentration = concentration;
}


public AddStuBean(String fname, String lname, String ucmid, String uemail, String concentration, String note,
		String acc, String prereq) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.ucmid = ucmid;
	this.uemail = uemail;
	this.concentration = concentration;
	this.note = note;
	this.acc = acc;
	this.prereq = prereq;
}
public AddStuBean(String ucmid, String note) {
	super();
	this.ucmid = ucmid;
	this.note = note;
}
public AddStuBean(String fname, String ucmid, String note, String note_date) {
	super();
	this.fname = fname;
	this.ucmid = ucmid;
	this.note = note;
	this.note_date = note_date;
}
public AddStuBean(String fname, String lname, String ucmid, String uemail, String concentration, String note,
		String acc, String prereq, String prereq_date) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.ucmid = ucmid;
	this.uemail = uemail;
	this.concentration = concentration;
	this.note = note;
	this.acc = acc;
	this.prereq = prereq;
	this.prereq_date = prereq_date;
}
public AddStuBean(String fname, String lname, String ucmid, String add, String phone, String uemail, String non_uemail,
		String concentration, String entry_date, String qunat, String verbal, String gpa, String approved,
		String approvedDate, String withdrawn, String withdrawnDate, String accepted, String acceptedTime,
		String accepted_con, String accepted_conTime, String note, String acc, String password, String prereq) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.ucmid = ucmid;
	this.add = add;
	this.phone = phone;
	this.uemail = uemail;
	this.non_uemail = non_uemail;
	this.concentration = concentration;
	this.entry_date = entry_date;
	this.qunat = qunat;
	this.verbal = verbal;
	this.gpa = gpa;
	this.approved = approved;
	this.approvedDate = approvedDate;
	this.withdrawn = withdrawn;
	this.withdrawnDate = withdrawnDate;
	this.accepted = accepted;
	this.acceptedTime = acceptedTime;
	this.accepted_con = accepted_con;
	this.accepted_conTime = accepted_conTime;
	this.note = note;
	this.acc = acc;
	this.password = password;
	this.prereq = prereq;
}






}
