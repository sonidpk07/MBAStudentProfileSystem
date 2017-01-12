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

<title>Questions</title>
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
s.setAttribute("uname", uname);
%>

<div class="content container">

<form:form action="saveAns" modelAttribute="ques"  align="left">
<h2 class="title" align="center">Complete the questionnaires<br>
<small>Please provide <strong>NIL</strong> when you don't know the answer</small></h2>
<br>
<mark>Student Id: </mark> <form:input path="student_id" value="<%=uname%>" readonly="true"></form:input><hr><br>
<div class="form-group">
    <label for="fname"><strong>Question 1 : </strong>Enter ZIP code</label><br>
    <strong>Answer 1 :</strong><form:input path="ans1" placeholder="Answer your question 1 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
  	<p><strong>ACCT 2101: </strong> Master the technical skills needed to analyze financial statements and disclosures for use
  	 in financial analysis, and learn how accounting standards and managerial incentives affect the
  	  financial reporting process.</p>
  	 <p><strong>Finance: </strong>It is a broad term that describes two related activities: the study of how money is managed and the
  	  actual process of acquiring needed funds</p>
  	  <p><strong>Marketing: </strong>It is a crucial function in all businesses and organizations, and is becoming increasingly crucial to success 
  	  in our modern global economy. This course, regardless of your industry background, will teach you core concepts and tools
  	   to help you better understand and excel in marketing.</p> 
    <label for="fname"><strong>Question 2 : </strong>Have you taken a course like this?<br>
    <small>If so, please provide  at what school? What was the course prefix, number and title?</small></label><br>
    <strong>Answer 2 : </strong><form:input path="ans2" placeholder="Seprate each Answer by Comma ( , )" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 3 : </strong>How many classes do you plan to take each fall / spring semester?</label><br>
   <strong>Answer 3 : </strong><form:input path="ans3" placeholder="Answer your question 3 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 4 : </strong>How many classes to you plan to take in the summer?</label><br>
    <strong>Answer 4 : </strong><form:input path="ans4" placeholder="Answer your question 4 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 5 : </strong>Do you plan to work while pursuing your MBA?<br>
    <small>If so, how many hours a week do you plan to work?</small></label><br>
    <strong>Answer 5 : </strong><form:input path="ans5" placeholder="Answer your question 5 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 6 : </strong>If currently employed<br>
    <small>For whom do you work?</small><br>
    <small>What is your position?</small></label><br>
    <strong>Answer 6 : </strong><form:input path="ans6" placeholder="Seperte your answers With Comma ( , )" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 7 : </strong>How far is your residence from UCM’s Warrensburg campus?</label><br>
    <strong>Answer 7 : </strong><form:input path="ans7" placeholder="Answer your question 7 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 8 : </strong>How far is your work location from UCM’s Warresnburg campus?</label><br>
    <strong>Answer 8 : </strong><form:input path="ans8" placeholder="Answer your question 8 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 9 : </strong>Do you have children for whom you are responsible?</label><br>
    <strong>Answer 9 : </strong><form:input path="ans9" placeholder="Answer your question 9 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 10 : </strong>Are you a single parent?</label><br>
    <strong>Answer 10 : </strong><form:input path="ans10" placeholder="Answer your question 10 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 11 : </strong>Will you have difficulty scheduling morning classes?</label><br>
    <strong>Answer 11 : </strong><form:input path="ans11" placeholder="Answer your question 11 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 12 : </strong>Will you have difficulty scheduling afternoon classes?</label><br>
    <strong>Answer 12 : </strong><form:input path="ans12" placeholder="Answer your question 12 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 13 : </strong>Will you have difficulty scheduling night classes?</label><br>
    <strong>Answer 13 : </strong><form:input path="ans13" placeholder="Answer your question 13 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 14 : </strong>Will you have difficulty scheduling weekend classes?</label><br>
    <strong>Answer 14 : </strong><form:input path="ans14" placeholder="Answer your question 14 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 15 : </strong>What is your motivation in pursing an MBA?</label><br>
    <strong>Answer 15 : </strong><form:input path="ans15" placeholder="Answer your question 15 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  <div class="form-group">
    <label for="fname"><strong>Question 16 : </strong>What type of position do you plan to seek after obtaining your MBA?</label><br>
    <strong>Answer 16 : </strong><form:input path="ans16" placeholder="Answer your question 16 here" required="true"
    class="form-control" style="width:30%;" id="fname"/>
  </div><hr>
  
  <div class="form-group">
    <label for="lname"><strong>Question 17 : </strong>How did you become aware of the MBA program at UCM?</label>
    <form:select  path="ans17" required="true"  class="form-control" 
    placeholder="Status" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="Internet search">Internet search</option>
		<option value="Referral by a friend/co-worker">Referral by a friend/co-worker</option>
		<option value="Referral by a manager at work">Referral by a manager at work</option>
		<option value="Attended UCM before">Attended UCM before</option>
		<option value="Other">Other</option>
    </form:select>
</div><hr>
<div class="form-group">
    <label for="lname"><strong>Question 18 : </strong>What attracted you to the MBA program at UCM?</label>
    <form:select  path="ans18" required="true"  class="form-control" 
    placeholder="Status" style="width:60%;" id="lname">
    	<option value="">Select</option>
		<option value="Cost">Cost</option>
		<option value="Entrance requirements">Entrance requirements</option>
		<option value="Reputation">Reputation</option>
		<option value="Proximity to work">Proximity to work</option>
		<option value="Proximity to home">Proximity to home</option>
		<option value="Familiarity with UCM">Familiarity with UCM</option>
		<option value="Know other students">Know other students</option>
		<option value="AACSB Accreditation">AACSB Accreditation</option>
		<option value="Other">Other</option>
    </form:select>
</div><hr>

<br>

 <button type="submit" class="btn btn-success">Next Page</button><hr>


</form:form>
</div>

	<script src="bootstrap/js/jquery-3.1.0.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/script.js"></script>
</body>
</html>