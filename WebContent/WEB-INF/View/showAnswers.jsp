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

<title>Show Student's Answer</title>
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
<div class="content">
<div class="row">
<div class="col-lg-10"><br>
<button class="bg-primary" style="font-size:15px" onclick="goBack()" type="button" class="btn btn-link">Go Back</button>
<h2 align="center" class="title">Student Answers</h2><br>
<c:if test="${empty ans }">
	<div align="center" class="alert alert-danger">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Student did not complete questionnaires. </strong> 
</div>
</c:if>

<c:forEach var="show" items="${ans}">
<form:form>
<div align="center"><button  type="button" class="btn btn-success">Student Id: <span class="badge">${show.student_id}</span></button><hr><br></div>

  <div class="form-group">
     <label for="fname"><strong>Question 1 : </strong>Enter ZIP code</label><br>
    <strong>Answer 1 :</strong><input value="${show.ans1}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <p style="font-style:italic"><strong>ACCT 2101: </strong> Master the technical skills needed to analyze financial statements and disclosures for use
  	 in financial analysis, and learn how accounting standards and managerial incentives affect the
  	  financial reporting process.</p>
  	 <p style="font-style:italic"><strong>Finance: </strong>It is a broad term that describes two related activities: the study of how money is managed and the
  	  actual process of acquiring needed funds</p>
  	  <p style="font-style:italic"><strong>Marketing: </strong>It is a crucial function in all businesses and organizations, and is becoming increasingly crucial to success 
  	  in our modern global economy. This course, regardless of your industry background, will teach you core concepts and tools
  	   to help you better understand and excel in marketing.</p> <br>
    <label for="fname"><strong>Question 2 : </strong>Have you taken a course like this?<br>
    <small>If so, please provide  at what school? What was the course prefix, number and title?</small></label><br>
    <strong>Answer 2 :</strong><input value="${show.ans2}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 3 : </strong>How many classes do you plan to take each fall / spring semester?</label><br>
   <strong>Answer 3 :</strong><input value="${show.ans3}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 4 : </strong>How many classes to you plan to take in the summer?</label><br>
    <strong>Answer 4 :</strong><input value="${show.ans4}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
     <label for="fname"><strong>Question 5 : </strong>Do you plan to work while pursuing your MBA?<br>
    <small>If so, how many hours a week do you plan to work?</small></label><br>
    <strong>Answer 5 :</strong><input value="${show.ans5}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 6 : </strong>If currently employed<br>
    <small>For whom do you work?</small><br>
    <small>What is your position?</small></label><br>
    <strong>Answer 6 : </strong><input value="${show.ans6}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 7 : </strong>How far is your residence from UCM’s Warrensburg campus?</label><br>
    <strong>Answer 7 : </strong><input value="${show.ans7}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 8 : </strong>How far is your work location from UCM’s Warresnburg campus?</label><br>
    <strong>Answer 8 : </strong><input value="${show.ans8}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 9 : </strong>Do you have children for whom you are responsible?</label><br>
    <strong>Answer 9 : </strong><input value="${show.ans9}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 10 : </strong>Are you a single parent?</label><br>
    <strong>Answer 10 : </strong><input value="${show.ans10}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 11 : </strong>Will you have difficulty scheduling morning classes?</label><br>
    <strong>Answer 11 : </strong><input value="${show.ans11}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 12 : </strong>Will you have difficulty scheduling afternoon classes?</label><br>
    <strong>Answer 12 : </strong><input value="${show.ans12}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 13 : </strong>Will you have difficulty scheduling night classes?</label><br>
    <strong>Answer 13 : </strong><input value="${show.ans13}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 14 : </strong>Will you have difficulty scheduling weekend classes?</label><br>
    <strong>Answer 14 : </strong><input value="${show.ans14}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 15 : </strong>What is your motivation in pursing an MBA?</label><br>
    <strong>Answer 15 : </strong><input value="${show.ans15}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 16 : </strong>What type of position do you plan to seek after obtaining your MBA?</label><br>
    <strong>Answer 16 : </strong><input value="${show.ans16}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="lname"><strong>Question 17 : </strong>How did you become aware of the MBA program at UCM?</label>
    <strong>Answer 17 : </strong><input value="${show.ans17}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="lname"><strong>Question 18 : </strong>What attracted you to the MBA program at UCM?</label>
  	<strong>Answer 18 : </strong><input value="${show.ans18}" readonly="readonly"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  
 
  
</form:form>
</c:forEach>
</div>
</div>
</div>


	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>