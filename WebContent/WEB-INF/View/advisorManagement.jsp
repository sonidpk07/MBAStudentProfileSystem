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

<title>Advisor Management Page</title>
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
					<li><a href="StuMgnt">Student</a></li>
					<li  class="active"><a href="#">Advisor</a></li> 
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
	
	
	
<div class="content">
<div class="container content" align="center">
<div class="row">
<div class="col-lg-12">
<br>
<a href="addAdvisorPage" class="navbar-btn btn btn-success text-center">Add New Advisor</a> <br>
<a href="setPwd" class="navbar-btn btn btn-primary text-center">Set New Password for Advisor</a><br>

<hr>
</div>
</div>
</div>

	<div class="navbar navbar-default navbar-fixed-bottom bottom">
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








