<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.spring.mvc.dbcon.DbConn"%>
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

<title>Show All Students</title>
<script>
function goBack() {
    window.history.back();
}
</script>


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
					<li class="active"><a href="StuMgnt">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li> 
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>


	<div class="container-fluid content">
	<div class="row"><br>
&nbsp&nbsp&nbsp<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
	<br><h2 align="center" style="color:#800000"><b></b><u>List of all students registered with the system</u></b></h2>
	<p style="padding-left:10px"><a href="addStudentPage" class="navbar-btn btn btn-success text-center">Add new Student</a>
		
	</p>
	
<c:if test="${not empty showStu }">
	<h2>We have found record..</h2>
</c:if>
<div class="table-responsive">
<form:form>
<table class="table table-hover table-bordered" >
<tr class="danger">
	<th class="tableheading">First Name</th>
	<th class="tableheading">Last Name</th>
	<th class="tableheading">700#</th>
	<th class="tableheading">Mailing_Address</th>
	<th class="tableheading">Phone Number</th>
	<th class="tableheading">UCMO Email</th>
	<th class="tableheading">Non-UCMO Email</th>
	<th class="tableheading">Concentration</th>
	<th class="tableheading">Program Entry Date</th>
	<th class="tableheading">Quantitative</th>
	<th class="tableheading">Verbal</th>
	<th class="tableheading">GPA</th>
	<th class="tableheading">Approved for_grad</th>
	<th class="tableheading">Approved Date</th>
	<th class="tableheading">Withdrawn from_prog</th>
	<th class="tableheading">Withdrawn Date</th>
	<th class="tableheading">Accepted into_prog</th>
	<th class="tableheading">Accepted Date</th>
	<th class="tableheading">Accepted_with condition</th>
	<th class="tableheading">Accepted_with condition_Date</th>
	<th class="tableheading">Extra_Notes</th>
	<th class="tableheading">ACC</th>
	<th class="tableheading">Operation</th>
</tr>

 <c:forEach var="showStu" items="${showStudent}">	 	
  <tbody>
    <tr>
    	<td>${showStu.fname}</td>
    	<td>${showStu.lname}</td>
    	<td>${showStu.ucmid}</td>
    	<td>${showStu.add}</td>
    	<td>${showStu.phone}</td>
    	<td>${showStu.uemail}</td>
    	<td>${showStu.non_uemail}</td>
    	<td>${showStu.concentration}</td>
    	<td>${showStu.entry_date}</td>
    	<td>${showStu.qunat}</td>
    	<td>${showStu.verbal}</td>
    	<td>${showStu.gpa}</td>
    	<td>${showStu.approved}</td>
    	<td>${showStu.approvedDate}</td>
    	<td>${showStu.withdrawn}</td>
    	<td>${showStu.withdrawnDate}</td>
    	<td>${showStu.accepted}</td>
    	<td>${showStu.acceptedTime}</td>
    	<td>${showStu.accepted_con}</td>
    	<td>${showStu.accepted_conTime}</td>
    	<td>${showStu.note}</td>
    	<td>${showStu.acc}</td>
    	<td><a href="edit_Stu?id=${showStu.ucmid }" class="navbar-btn btn btn-danger text-center" title="Edit">Edit Profile</a></td>
	</tr>
</tbody>
</c:forEach>
    	
  

</table>
</form:form>
</div>
</div>
</div>

<div class="navbar navbar-default bottom">
		<div class="container-fluid">
			<div class="row">
				
			</div>
		</div>
	</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>