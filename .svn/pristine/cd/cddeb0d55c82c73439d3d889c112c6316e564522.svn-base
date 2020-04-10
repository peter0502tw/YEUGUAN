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
<style type="text/css">
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button4 {
	background-color: white;
	color: black;
	border: 2px solid #e7e7e7;
}

.button4:hover {
	background-color: #e7e7e7;
}
</style>


</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/TA_Gradle/TA/default">Teacher
				assistants Allocation</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="/TA_Gradle/TA/logout">Logout <span class="sr-only">(current)</span>
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
				<h1>Candidate Evaluation</h1>
				<br>
				<div class="list-group">
					<a href="/TA_Gradle/TA/default" class="list-group-item"
						id="viewvacancies">Back&#xab;</a>

				</div>

			</div>
			<!-- /.col-lg-3 the category -->

			<div class="col-lg-9">
				<div class="card mt-4" id="endorsement">


					<div class="card-body">

						<div>
							<%-- ${endorselist} --%>

							<div id="table_vacancies_div">
								<table class="table " id="vacancytable">
									<thead>
										<tr>
											<th class="width30-column">Module</th>
											<th class="width20-column">Title</th>
											<th class="width20-column">Year</th>
											<th class="width20-column">Candidates</th>
											<th class="width20-column">    </th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${endorselist}" var="endorselist">
											<tr>
												<td><c:out value="${endorselist.modulecode}"></c:out></td>
												<td><c:out value="${endorselist.title}"></c:out></td>
												<td><c:out value="${endorselist.year}"></c:out></td>
												<td><c:out value="${endorselist.candidates.name}"></c:out></td>
												<td><input type="button"
													class="btn open_btn btn-third "
													id="${endorselist.modulecode}/${endorselist.year}/${endorselist.candidates.name}/${endorselist.title}/${endorselist.candidates.id}"
													value="Click &raquo"></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>


<div style="color:red;">*You will be able to evaluate a Teaching Assistants who has been chosen after 90 days the allocation process has been done</div>
							</div>

							<script>
								//page layers

								$(document)
										.ready(
												function() {

													$(document)
															.on(
																	"click",
																	".open_btn",
																	function() {
																		var id = this.id
																				.split("/");
																		var modulecode = id[0];
																		var year = id[1];
																		var candidates = id[2];
																		var title = id[3];
																		var id = id[4];
																		window.location.href = "/TA_Gradle/TA/endorsement/survey?modulecode="
																				+ modulecode
																				+ "&&year="
																				+ year
																				+ "&&candidates="
																				+ candidates
																				+ "&&title="
																				+ title
																				+"&&id="
																				+id
																				;

																	});

												});
							</script>
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
