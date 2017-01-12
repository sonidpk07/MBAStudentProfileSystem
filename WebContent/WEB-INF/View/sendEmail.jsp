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

<title>Send Email to new Student</title>
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
					<li><a href="#">Logout</a></li>
				</ul>
			</div>
			<!-- collapse navbar-collapse -->
		</div>
		<!-- container -->
	</nav>
	<%
HttpSession s=request.getSession();
String uemail=(String)s.getAttribute("uemail");
String password=(String)s.getAttribute("pwd");
String ucmid=(String)s.getAttribute("700#");
String concentration=(String)s.getAttribute("concentration");
String name=(String)s.getAttribute("name");
String address=(String)s.getAttribute("address");
%>
	<div class="content container">
		<br>
		<div align="center" class="alert alert-success">
			<strong>Student records added successfully. Send an email to
				student</strong>
		</div>
		<hr>
		<form:form action="sendEmail" modelAttribute="detail">
			<h2 align="center" class="title">Student Information</h2>
			<hr>
			<br>
			<div class="messages"></div>

			<div class="controls">

				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="form_name">Student Name</label> <input id="form_name"
								type="text" readonly="readonly" value="<%=name %>"
								class="form-control" required="required">
							<div class="help-block with-errors"></div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="form_lastname">Concentration</label> <input
								id="form_lastname" type="text" readonly="readonly"
								value="<%=concentration %>" class="form-control"
								required="required">
							<div class="help-block with-errors"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="form_email">UCM Email</label> <input id="form_email"
								type="email" readonly="readonly" name='uemail' value="<%=uemail %>"
								class="form-control" placeholder="Please enter your email *"
								required="required">
							<div class="help-block with-errors"></div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="form_phone">UCM Id</label> <input id="form_phone"
								type="text" readonly="readonly" value="<%=ucmid%>"
								class="form-control">
							<div class="help-block with-errors"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="form_message">Message</label>
							<textarea id="form_message" name='detail' class="form-control"
								cols="50" rows="15" required="required">
								
Dear <%=name %>,

We are glad you have been accepted into the MBA Program - <%=concentration %> Concentration at the University of Central Missouri and are looking forward to your participation in the program.

Your next step is to access the web site linked below and answer questions which will enable your advisor to better serve you.  This information is shared between and MBA Program Director and the Program Advisors.  It is not made available to outside parties. 

Even if your plans change and you decide not to attend, we ask that you indicate such at the web site.

URL: http://localhost:8080/UCMO

Student ID: <%=ucmid%>

Password: <%=password %>

Questions about the questionnaire or the MBA program should be directed to Dr. Kerry Henson, MBA Program Director at

MBA@UCMO.EDU

Please do not reply to this message.

Thanks!

Kerry Henson, PhD
Assistant Dean
MBA Program Director
Harmon College of Business and Professional Studies
University of Central Missouri
Dockery 300C
Warrensburg, Missouri  64093

660-422-2705
mba@ucmo.edu

</textarea>
							<div class="help-block with-errors"></div>
						</div>
						<div>
							<div class="col-md-12">
								<input type="submit" class="btn btn-success btn-send"
									value="Send message">
							</div><br>
						</div><br>

					</div>
		</form:form>

	</div>

	<div class="navbar navbar-default navbar-bottom">
		<div class="container">
			<div class="row">
				
			</div>
		</div>
	</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>