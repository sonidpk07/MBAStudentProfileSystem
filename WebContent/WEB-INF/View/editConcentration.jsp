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

<title>Edit Concentration</title>
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
<%
HttpSession s=request.getSession();
String concentration_Id=(String)s.getAttribute("concentration_Id");

%>
<div class="content container">
<br>
<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<h2 class="title" align="center">Edit Concentration</h2><br>
<%-- <div align="center" class="alert alert-info" style="size: 21">
  You are editing concentration details with id  <strong><%=concentration_Id%></strong>
</div><br><br> --%>

<form:form action="editConAct" modelAttribute="edit_Concentration">

<div class="form-group">
    <label for="fname">Degree Code :</label>
    <form:input path="cid"
     required="true"
    class="form-control"  placeholder="Degree Code" style="width:60%;" id="fname"/>
</div>

<div class="form-group">
    <label for="fname">Concentration Name :</label>
    <form:input path="cname" pattern="[a-zA-Z ]+" title="It should contain only alphabets"
     required="true" 
    class="form-control" placeholder="Concentration name" style="width:60%;" id="fname"/>
</div>

<div class="form-group">
    <label for="lname">Is active? :</label>
    <form:select  path="status" required="true"  class="form-control" 
    placeholder="Status" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="active">Yes</option>
		<option value="Inactive">No</option>
    </form:select>
</div>


<button type="submit" class="btn btn-success">Edit Concentration</button><br><br>
</form:form>
</div>
<div class="navbar navbar-default navbar-fixed-bottom bottom">
	</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>

</body>
</html>