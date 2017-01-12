<%@page import="com.spring.mvc.dbcon.DbConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/styles.css">
<script>
function goBack() {
    window.history.back();
}
</script>
<title>Edit Student Details</title>
<link rel="icon" type="image/icon" href="images/icon.ico">
</head>
<body>

<nav class="navbar navbar-default  navbar-fixed-top head "
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>

				<a class="navbar-brand menuitems" href="#">University of Central<br />
				<b class="mainlogo">&nbsp &nbsp &nbspMissouri</b><br> 
				<small class="small">Learning to a greater degree</small></a>
			</div>
			<!-- navbar-header -->

			<div class="collapse navbar-collapse" id="collapse">
				<ul class="nav navbar-nav navbar-right">
					<%-- <li class="active"><a href="<c:url value="./directorHome"/>">Home</a>
					<li><a href="<c:url value="/WebContent/WEB-INF/View/directorHome.jsp"/>">TEST</a></li>--%>
					<li class="active"><a href="#">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li> 
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
<%
HttpSession s=request.getSession();
String student_Id=(String)s.getAttribute("stu_Id");

Connection con=DbConn.getConnection();
PreparedStatement ps = con.prepareStatement("select * from concentration");
ResultSet rs=ps.executeQuery();

%>
<div class="content container">
<br>
<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<h2 align="center" class="title">Edit Student Record.</h2><br>
<div align="center" class="alert alert-info" >
  You are editing student details with id <strong><%=student_Id%></strong>
</div><br><br>

<form:form action="editStuAct" modelAttribute="edit_Stu">

<div class="form-group">
    <label for="fname">First name :</label>
    <form:input path="fname" pattern="[a-zA-Z ]+" title="It should contain only alphabets" required="true"
    class="form-control" placeholder="First name" style="width:60%;" id="fname"/>
  </div>
  
  <div class="form-group">
    <label for="lname">Last name :</label>
    <form:input path="lname" pattern="[a-zA-Z ]+" title="It should contain only alphabets" required="true"
	 class="form-control"  placeholder="Last name" style="width:60%;" id="lname"/>
  </div>
  
  <div class="form-group">
    <label for="700#">700# :</label>
    <form:input path="ucmid" pattern="[0-9]{9}" title="It Should not contain Alphabets. lenght must be 9" required="true"
    class="form-control" readonly="true" placeholder="700#" style="width:60%;" id="700#"/>
  </div>
  
  <div class="form-group">
    <label for="lname">Mailing address :</label>
    <form:input path="add" required="true"
	 class="form-control"  placeholder="Mailing address" style="width:60%;" id="lname"/>
  </div>
   <div class="form-group">
    <label for="phone">Phone Number :</label>
    <form:input path="phone" pattern="[0-9]{10}" title="It Should not contain Alphabets. lenght must be 10" required="true"
    class="form-control" placeholder="Phone" style="width:60%;" id="phone#"/>
  </div>
  
  <div class="form-group">
    <label for="lname">UCM Email :</label>
    <form:input path="uemail" required="true" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,3}$" 
    title="It must include special characters(@ and .)"
	 class="form-control"  placeholder="UCM Email" style="width:60%;" id="lname"/>
  </div>
  
  <div class="form-group">
    <label for="lname">Non-UCM Email :</label>
    <form:input path="non_uemail" required="true" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,3}$"
	title="It must include special characters(@ and .)" class="form-control"  
	placeholder="Non-UCM Email" style="width:60%;" id="lname"/>
  </div>
  
  <div class="form-group">
    <label for="exampleSelect1">Concentration :</label>
    <form:select  path="concentration" required="true" class="form-control" id="exampleSelect1" style="width:60%;">
      <option value="">Select</option>
      <%
		while (rs.next()) {
    	%>
		<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
		<%
			}
		%>
    </form:select>
  </div>
  
   <div class="form-group">
  <label for="example-date-input">Program Entry Date :</label>
  <form:input path="entry_date" class="form-control" required="true" type="date" value="" id="example-date-input" style="width:60%;"/>
  </div>
  
  <div class="form-group">
    <label for="Quant">GRE/GMAT: Quant Score :</label>
    <form:input path="qunat" required="true" placeholder="Quant Score" pattern="[0-9]{3}"
    title="Should contain only digits. Max length:3" 
    class="form-control" style="width:60%;" id="Quant"/>
  </div>
  
  <div class="form-group">
    <label for="lname">Verbal Score :</label>
    <form:input path="verbal" required="true" placeholder="Verbal Score" pattern="[0-9]{3}"
	title="Should contain only digits. Max length:3"
    class="form-control" style="width:60%;" id="lname"/>
  </div>
  
  <div class="form-group">
    <label for="lname">GPA :</label>
    <form:input path="gpa" required="true" pattern="[0-9.]{4}" title="Max length:4"
    class="form-control" placeholder="GPA" style="width:60%;" id="lname"/>
  </div>
  
  <div class="form-group">
    <label for="lname">Academic Code of Conduct completed? :</label>
    <form:select path="acc" required="true"  class="form-control" 
    placeholder="secondary email" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
    </form:select>
  </div>
  
  <div class="form-group">
    <label for="lname">Approved for graduation? :</label>
    <form:select  path="approved" required="true"  class="form-control" 
    placeholder="secondary email" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
    </form:select>
  </div>
  
    <div class="form-group">
    <label for="lname">Withdrawn from program? :</label>
    <form:select  path="withdrawn" required="true"  class="form-control" 
    placeholder="secondary email" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
    </form:select>
  </div>
  
  <div class="form-group">
    <label for="lname">Accepted into program? :</label>
    <form:select path="accepted" required="true"  class="form-control" 
    placeholder="secondary email" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
    </form:select>
  </div>
  
   <div class="form-group">
    <label for="lname">Accepted into program with conditions? :</label>
    <form:select path="accepted_con" required="true"  class="form-control" 
    placeholder="secondary email" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="YES">Yes</option>
		<option value="NO">No</option>
    </form:select>
  </div>
  
  <div class="form-group">
    <label for="exampleTextarea">Extra Notes :</label>
    <form:textarea path="note" style="width:60%;" class="form-control" id="exampleTextarea" rows="3"></form:textarea>
  </div>
  <button type="submit" class="btn btn-success">edit Student</button><br><br>


</form:form>
</div>

<div class="navbar navbar-default navbar-fixed  ">
</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>

</body>
</html>