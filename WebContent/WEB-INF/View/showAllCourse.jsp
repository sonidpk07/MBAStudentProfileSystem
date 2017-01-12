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
<title>Show All Courses</title>
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
					<li><a href="advMgnt">Advisor</a></li> 
					<li class="active"><a href="courseMngt">Courses</a></li>
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

<c:if test="${not empty showCourse}">
<br><h2 align="center" style="color:#800000"><b></b><u>List of all available courses</u></b></h2><br><br>
</c:if>
<div class="table-responsive">
<form:form>
<table class="table table-hover table-bordered" >
<tr class="danger">
	<th class="tableheading">Course ID</th>
	<th class="tableheading">Program</th>
	<th class="tableheading">Prefix</th>
	<th class="tableheading">Course Name</th>
	<th class="tableheading">Concentration</th>
	<th class="tableheading">Is Active?</th>
	<th class="tableheading">Core Subject</th>
	<th class="tableheading">Edit</th>
</tr>

<c:forEach var="show" items="${showCourse}">
 <tbody>
    <tr>
    	<td>${show.id}</td>
    	<td>${show.prgm}</td>
    	<td>${show.prefix}</td>
    	<td>${show.name}</td>
    	<td>${show.concentration}</td>
    	<td>${show.status}</td>
    	<td>${show.type}</td>
    	<td><a href="editCourse?id=${show.id}" title="Edit">Edit</a></td>
</tr>
</c:forEach>


</table>
</form:form>
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