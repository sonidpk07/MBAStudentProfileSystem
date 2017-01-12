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

<title>Set Advisor Password</title>
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
					<li class="active"><a href="advMgnt">Advisor</a></li> 
					<li><a href="courseMngt">Courses</a></li>
					<li><a href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
<%
Connection con = DbConn.getConnection();
PreparedStatement ps = con.prepareStatement("select uname from advisor");
ResultSet rs=ps.executeQuery();
%>

<div class="content container">
<br>
<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<h2 class="title" align="center">Set a new password for Advisor</h2><hr><br>

<form:form action="advisorPwd" method="post">
<c:if test="${!empty msg }">
	<div class="alert alert-success">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> ${msg}
</div>
</c:if>
<c:if test="${!empty err }">
	<div class="alert alert-danger">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>err</strong> ${err}
</div>
</c:if>


 <div class="form-group">
    <label for="exampleSelect1">Select Advisor Id :</label>
    <select  name="advisor" required="true" class="form-control" id="exampleSelect1" style="width:60%;">
      <option value="">Select</option>
      <%
		while (rs.next()) {
    	%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%
			}
		%>
    </select>
</div>
  <div class="form-group">
    <label for="password">Enter New Password :</label>
    <input name="newPwd" pattern="[A-Za-z0-9]{6}" title="Password should be Alphanumeric. Max lenght must be 6, lower and upper case" 
   required="true" class="form-control"  placeholder="Password" style="width:60%;" id="password"/>
  </div>
  
  <div class="form-group">
    <label for="password">Confirm password :</label>
    <input name="newPwd1" pattern="[A-Za-z0-9]{6}" title="Password should be Alphanumeric. Max lenght must be 6, lower and upper case" 
   required="true" class="form-control"  placeholder="Confirm Password" style="width:60%;" id="password"/>
  </div>

 <button type="submit" class="btn btn-success">Set Password</button>
</form:form></div>

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