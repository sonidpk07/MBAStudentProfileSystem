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

<title>Welcome Student</title>
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

<%
HttpSession s=request.getSession();
String uname=(String)s.getAttribute("uname");
%>
<div class="content"><br>
<button  type="button" class="btn btn-success">Student Id: <span class="badge"><%=uname%></span></button><hr><br>
<div align ="center">
<c:if test="${!empty msg }">
	<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> ${msg}
</div>
</c:if>
<c:forEach var="show" items="${data}">
<div align="center" class="alert alert-danger">
			Welcome <strong>${show.fname}!</strong>
		</div>
  <c:if test="${show.acc eq 'NO'}">
  <h3 id="note">You did not complete questionnaire and Academic code of conduct. Please complete it here. </h3><br>
	<a href="questions"><button  class="btn btn-success">Complete your questionnaire</button></a><br><br>
</c:if>
<c:if test="${show.acc eq 'YES'}">
 <h3>Congratulations!! You have completed both Questionnaires and Academic code of conduct.</h3>
</c:if>
  
</c:forEach>
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