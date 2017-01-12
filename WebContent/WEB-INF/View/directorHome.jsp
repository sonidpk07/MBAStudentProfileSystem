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

<title>Welcome Mr. Kerry Henson!</title>

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
					<b class="mainlogo">&nbsp &nbsp &nbspMissouri</b><br> <small
					class="small">Learning to a greater degree</small></a>
			</div>
			<!-- navbar-header -->

			<div class="collapse navbar-collapse" id="collapse">
				<ul class="nav navbar-nav navbar-right">
					<%-- <li class="active"><a href="<c:url value="./directorHome"/>">Home</a>
					<li><a href="<c:url value="/WebContent/WEB-INF/View/directorHome.jsp"/>">TEST</a></li>--%>
					<li class="active"><a href="#">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li>
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp">Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
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
					<b class="mainlogo">&nbsp &nbsp &nbspMissouri</b><br> <small
					class="small">Learning to a greater degree</small></a>
			</div>
			<!-- navbar-header -->

			<div class="collapse navbar-collapse" id="collapse">
				<ul class="nav navbar-nav navbar-right">
					<%-- <li class="active"><a href="<c:url value="./directorHome"/>">Home</a>
					<li><a href="<c:url value="/WebContent/WEB-INF/View/directorHome.jsp"/>">TEST</a></li>--%>
					<li><a href="StuMgnt">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li>
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp">Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
	<div class="content container">
		<br>
		<div align="center" class="alert alert-success">
			Welcome <strong>${uname}</strong>
		</div>
		<hr>
		<c:if test="${!empty msg }">
			<div class="alert alert-success" align="center">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Success!</strong> ${msg}
			</div>
		</c:if>
		<br>
		<div class="container">
			<h1 class="title">Brief Information about this Project</h1>
			<p class="title">To capture and manage student profile and program prerequisite data about 
			newly accepted students to the MBA program</p><br>
			<blockquote class="blockquote-reverse">
				<p>The MBA program at the University of Central Missouri is an 11 course program. All students complete a 
				six-course core and five courses for a concentration and electives. There are six concentrations available: 
				Accounting, Finance, Information Systems, Marketing, Sports Business and General.
				The MBA Program Director is responsible for MBA program as a whole which includes reviewing applications to the program.
				Once a student is accepted to the program, he or she is assigned to an advisor based upon the concentration selected.</p>
				<footer class="title">University Of Central Missouri</footer>
			</blockquote>
		</div>

	</div>

	<div class="navbar navbar-default navbar-fixed-bottom  bottom">
		<div class="container-fluid">
			<div class="row"></div>
		</div>
	</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>