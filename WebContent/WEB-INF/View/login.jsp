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

<title>Login into your Account</title>
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

				<a class="navbar-brand menuitems" href="index.jsp">University of Central<br />
					<b class="mainlogo">&nbsp &nbsp &nbspMissouri</b><br>
				<small class="small">Learning to a greater degree</small></a>


			</div>
			<!-- navbar-header -->

			<div class="collapse navbar-collapse" id="collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
					<li class="active"><a href="#">Login</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
	
	<div class="container">
	<div class="content">
		<h2 align="center" class="title" >University of Central Missouri</h2>
		<h3 align="center">Please Login into your account</h3><hr>
		<c:if test="${!empty msg }">
	<div class="alert alert-danger">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 <p align="center">  <strong>Failed !</strong> ${msg}</p>
</div>
</c:if>
		<br>
		<form:form action="loginSubmit" modelAttribute="loginObj" class="form-horizontal">
			<div class="row">
			<div class="col-lg-11">
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Student/Employee ID</label>
				<div class="col-sm-10">
					<form:input path="uname" required="true" id="email"
						class="form-control" placeholder="Enter ID" />
				</div>
			</div>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-11">
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-10">
					<form:input path="pwd" required="true" type="password" id=""
						class="form-control" placeholder="Enter password" />
				</div>
			</div>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-11">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Login as :</label> 
				<div class="col-sm-10">
				<select class="form-control" required
					id="name" name="role">
					<option value="">Select</option>
					<option value="Director">Director</option>
					<option value="Advisor">Advisor</option>
					<option value="Student">Student</option>
				</select>
				</div>
			</div>
			</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-lg btn-success"> Submit </button>
				</div>
			</div>
		</form:form>
		
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



</body>
</html>