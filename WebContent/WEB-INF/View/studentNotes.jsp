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

<title>Add Student Note</title>
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
<button class="bg-primary" style="font-size:15px" 
onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<h2 align="center" style="color:#800000"><b>Click on Enter Note to insert a note for student</b></h2><hr><br><br>


<div class="table-responsive">
<form:form>
<table class="table table-hover table-bordered" >
<tr class="danger">
	<th class="tableheading">Student Name</th>
	<th class="tableheading">Student 700#</th>
	<th class="tableheading">Student's Note</th>
	<th class="tableheading">Modified Date</th>
	<th class="tableheading">Operation</th>
</tr>
<c:forEach var="note" items="${studentNote}">
<tr>
	<td>${note.fname}</td>
	<td>${note.ucmid}</td>
	<td>${note.note}</td>
	<td>${note.note_date}</td>
	<td><a href="editNote?id=${note.ucmid}">Enter Note</a></td>
</tr>

</c:forEach>


</table>


</form:form>
</div>
</div>


	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>