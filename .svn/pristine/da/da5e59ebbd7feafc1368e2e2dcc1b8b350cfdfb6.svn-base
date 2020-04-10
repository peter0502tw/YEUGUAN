<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">


<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Teaching Assistants Allocation System</title>

<!-- Bootstrap core CSS -->
<link
	href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.min.css"
	rel="stylesheet">

<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!-- Custom styles for this template -->
<link
	href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/shop-item.css"
	rel="stylesheet">

<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.min.css"
	rel="stylesheet" type="text/css" />
<script
	src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<link rel="stylesheet"
	href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.js"></script>
<script
	src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/date.format.js"></script>
<script
	src="https://cdn.jsdelivr.net/underscorejs/1.8.3/underscore-min.js"></script>
<!-- time picker  -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<!-- time picker  -->



</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/TA_Gradle/TA/default">Teaching Assistants
				Allocation</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/TA_Gradle/TA/logout">Logout
							<span class="sr-only">(current)</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">
<br>
				<div class="list-group">
					<a href="/TA_Gradle/TA/default" class="list-group-item" id="viewvacancies">Back&#xab;</a>


				</div>

			</div>
			<!-- /.col-lg-3 the category -->

<div class="col-lg-9">
				<div class="card mt-4" id="registrationdiv">


						<div class="card-body">
						
						<div>
						
				<form:form method="POST" action="/TA_Gradle/TA/edit/personal"
						modelAttribute="registration">
							<h3 class="card-title">Update Personal Detail</h3>
							<h2>
								<font size="2">ID</font>
							</h2>
							<p>
								<form:input path="id" class="form-control" placeholder="ID"
									required="required"  id="id"  />
								<form:errors class="control-label text-danger" />
							<p />
							<h2>
								<font size="2">Password</font>
							</h2>
							<p>
								<form:password path="password"  class="check_password form-control"
									placeholder="Password" required="required" />
							<p />
							<h2>
								<font size="2">Name</font>
							</h2>
							<p>
								<form:input path="name" class="form-control" placeholder="Name"
									required="required"  />
							<p />
							<h2>
								<font size="2">Education status</font>
							</h2>
							<form:select path="yearofuni" class="select form-control" id="yearofuni">

							<c:choose >
							<c:when test="${user.get().yearofuni==6}">
								<form:option value="6">Professors</form:option>
							</c:when>
							<c:when test="${user.get().yearofuni==7}">
								<form:option value="7">Manager</form:option>
							</c:when>
							<c:otherwise>
								<form:option value="1">Undergraduates Year1</form:option>
								<form:option value="2">Undergraduates Year2</form:option>
								<form:option value="3">Undergraduates Year3</form:option>
								<form:option value="4">Postgraduates</form:option>
								<form:option value="5">PhD</form:option>
							</c:otherwise>
							</c:choose>
						
								
								
								
								
								
							</form:select>


							<h2>
								<font size="2">E-mail</font>
							</h2>
							<p>
								<form:input type="email" path="email" class="form-control"
									placeholder="Email"  required="required" />
							<p />
							<h2>
								<font size="2">Phone number</font>
							</h2>
							<p>
								<form:input path="mobile" type="number"  class="form-control"
									placeholder="Mobile" required="required" />
							<p />
							<h2>
								<font size="2">Subject</font>
							</h2>
					
							<form:input path="subject" class="form-control" id="subject"  />
<p><br>
							<button type="submit" id="submit" class="btn btn-secondary">Update
								&raquo;</button>

							<script>
							
								var msg = "${successMessage}";
								if (!msg == '') {
									alert("It was saved sucessfully");
								}			
								document.getElementById('id').readOnly = true;
								document.getElementById('subject').readOnly = true;
							</script>
	</form:form>
						</div>
						<!--card-body  -->
				</div>
</div>

				</div>
				<!-- /.card registrationdiv -->




		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->






	<!-- Bootstrap core JavaScript -->
	<script
		src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
