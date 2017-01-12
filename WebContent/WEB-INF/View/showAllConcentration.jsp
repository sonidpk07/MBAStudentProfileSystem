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

<title>Student Management Page</title>
<link rel="icon" type="image/icon" href="images/icon.ico">
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
&nbsp&nbsp&nbsp<button class="bg-primary" style="font-size:15px" 
onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
	

<c:if test="${not empty showCon}">
	<br><h2 align="center" style="color:#800000"><b></b><u>List of all available Concentrations</u></b></h2><br><br>
</c:if>

<div class="table-responsive">
<form:form>
<table class="table table-hover table-bordered" >
<tr class="danger">
	<th class="tableheading">Degree Code</th>
	<th class="tableheading">Concentration Name</th>
	<th class="tableheading">Is active?</th>
	<th class="tableheading">Edit</th>
</tr>

<c:forEach var="show" items="${showCon}">
<tbody>
    <tr>
    	<td>${show.cid}</td>
    	<td>${show.cname}</td>
    	<td>${show.status}</td>
    	<td><a href="editConcentration?id=${show.cid}" title="Edit">Edit</a></td>
	</tr>
</tbody>
</c:forEach>


</table>
</form:form>
 </div></div></div>



<div class="navbar navbar-default bottom">


	</div>


	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>