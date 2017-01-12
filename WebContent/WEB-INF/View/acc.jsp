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

<title>Read Academic Code of Conduct</title>
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
					<!-- <li><a href="StuMgnt">Student</a></li>
					<li><a href="advMgnt">Advisor</a></li> 
					<li class="active"><a href="#">Courses</a></li> -->
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
System.out.println(uname);
%>
<div class="content">
<form:form action="accdone" class="content">

 <input type="hidden" name="ucmid" value="<%= uname%>">  

<div class="container-fluid">
<div class="row">
<div class="col-lg-8">

<div class="panel panel-danger">
      <div class="panel-heading" style="text-align: center">Please read University's Academic Code of Conduct</div>
      <div class="panel-body">
      
      
Honesty in all endeavors is essential to the functioning of society. Honesty in the classroom among students and between students 
and faculty is a matter that should concern everyone in the university community. Indeed, academic honesty is one of the most 
important qualities influencing the character and image of an educational institution. As higher education is challenged to improve 
the quality of its programs, there is great value in emphasizing academic standards and integrity.
<br><br>
<b>I. Honesty</b>
<p>

A. University Responsibility: It is the university's responsibility to provide an educational process that informs both students and 
faculty of their rights and responsibilities regarding such important matters as cheating, plagiarism, and professional ethics. 
Most of what is considered unethical or dishonest behavior can be avoided if faculty and students clearly understand both what 
constitutes these practices and their consequences. The university community should also be aware of the procedures to be followed
 should a breach of academic honesty occur.
</p><p>
B. Student Responsibilities. Students must be aware that the consequences of violating standards of academic honesty are extremely
 serious and costly and may result in the loss of academic and career opportunities. Students found to have committed violations 
 against academic honesty face removal from university classes and degree programs, and/or suspension from the university, while 
 remaining fully responsible for payment of current and any past due tuition and fees.
</p>
 <button type="submit" class="btn btn-success pull-right">I agree & Submit</button><br>
    
      
      </div>
</div>
</div>
</div>
</div>

  
  


</form:form></div>

<div class="navbar navbar-default navbar-fixed">
		
	</div>
	
	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>