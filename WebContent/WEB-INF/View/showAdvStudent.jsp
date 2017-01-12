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
<script>
function goBack() {
    window.history.back();
}
</script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/styles.css">

<title>Show Student</title>
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
					<!-- <li class="active"><a href="#">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li> 
					<li><a href="courseMngt">Courses</a></li> -->
					<li><a href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>

	<div class="content"><br>
	<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<form:form>
<br><h3 class="title" align ="center"><strong>Note:</strong> You can only see those student profiles who are having same concentration as yours.</h3><hr><br><br>
<table class="table table-hover table-bordered" >
<tr class="danger">
	<th class="tableheading">First Name</th>
	<th class="tableheading">Last_Name</th>
	<th class="tableheading">700#</th>
	<th class="tableheading">UCMO Email</th>
	<th class="tableheading">Concentration</th>
	<th class="tableheading">Notes</th>
	<th class="tableheading">Completed ACC?</th>
	<th class="tableheading">Pre-req status</th>
	<th class="tableheading">Pre Requisite mfd-Date</th>
	
	<th class="tableheading" colspan="2">Operation</th>

 <c:forEach var="showStu" items="${showAdvStudent}">	 	
    <tr>
    	<td>${showStu.fname}</td>
    	<td>${showStu.lname}</td>
    	<td>${showStu.ucmid}</td>
    	<td>${showStu.uemail}</td>
    	<td>${showStu.concentration}</td>
    	<td>${showStu.note}</td>
    	<td>${showStu.acc}</td>
    	<td>${showStu.prereq}</td>
    	<td>${showStu.prereq_date}</td>
    	<td><a href="editAdvStu?id=${showStu.ucmid}" title="Edit">Edit</a></td>
		<td><a href="show_answers?id=${showStu.ucmid}" title="show Answers to question">Answers</a></td>
	</tr>
</c:forEach>
    	
  

</table>
</form:form>
</div>

<div class="navbar navbar-default navbar-fixed">
		<div class="container-fluid">
			<div class="row">
				<!-- <a href="disclaimer.html"
					class="navbar-btn btn btn-primary pull-left">Disclaimer</a> 
					<a href="https://www.facebook.com/iasickularism"
					class="navbar-btn btn btn-primary pull-right">Facebook Page</a> -->
			</div>
		</div>
	</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>