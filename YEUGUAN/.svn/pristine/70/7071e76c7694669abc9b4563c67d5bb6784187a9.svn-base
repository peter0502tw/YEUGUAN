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

.button4:hover {background-color: #e7e7e7;}

.rating {
  margin: 10px 0;
}

.rating i {
  display: inline-block;
  width: 0;
  height: 1.5em;
  border-width: 0 0.75em;
  border-style: solid;
  border-color: #eee;
  border-radius: .22em;
  color: white;
  background: #eee;
  font-style: normal;
  line-height: 1.6em;
  text-indent: -0.5em;
  text-shadow: 1px 0 1px #b3b3b3;
}

/** Colors */
.rating-1 .star-1, .rating-1 .is_half {
  border-color: #f26a2c;
  background: #f26a2c;
}

.rating-2 .star-1, .rating-2 .star-2, .rating-2 .is_half {
  border-color: #f26a2c;
  background: #f26a2c;
}

.rating-3 .star-1, .rating-3 .star-2, .rating-3 .star-3, .rating-3 .is_half {
  border-color: #f26a2c;
  background: #f26a2c;
}

.rating-4 .star-1, .rating-4 .star-2, .rating-4 .star-3, .rating-4 .star-4, .rating-4 .is_half {
  border-color: #f26a2c;
  background: #f26a2c;
}

.rating-5 .star-1, .rating-5 .star-2, .rating-5 .star-3, .rating-5 .star-4, .rating-5 .star-5 {
  border-color: #f26a2c;
  background: #f26a2c;
}

.rating-1 .is_half, .rating-2 .is_half, .rating-3 .is_half, .rating-4 .is_half {
  border-right-color: #eee;
}

@media print {
  .rating {
    -webkit-print-color-adjust: exact;
  }
  .rating i {
    text-shadow: none;
  }
  
  
  
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
				<div class="list-group">
					<a href="javascript:history.go(-1)" class="list-group-item"
						id="viewvacancies">Back&#xab;</a>

				</div>

			</div>
			<!-- /.col-lg-3 the category -->

			<div class="col-lg-9">
			<div class="card mt-4" id="do_endorse">
			<div>
	<p class="width30-column">Module Code:${modulecode}</p>
	<p class="width20-column">Title:${title}</p>
	<p class="width30-column">Year:${year}</p>
	<p class="width20-column">Candidates ID:${id}</p>
	<p class="width20-column">Candidates:${candidates}</p>
			</div>
			</div><!-- <div class="card mt-4" id="do_endorse"> -->
<div class="card mt-4" id="do_endorse">

<br>
		<div id="table_allocated" style="">
			<table class="table">
				<thead>
				<tr>
				<td>High to Low </td>
				<td class="width20-column"><span style="font-size:100%;color:#f4d142;">&starf;&starf;&starf;&starf;&starf;</span></td>
					
					<td class="width20-column"><span style="font-size:100%;color:#f4d142;">&starf;&starf;&starf;&starf;</span></td>
					<td class="width30-column"><span style="font-size:100%;color:#f4d142;">&starf;&starf;&starf;  </span></td>
					<td class="width20-column"><span style="font-size:100%;color:#f4d142;">&starf;&starf;</span></td>
					<td class="width20-column"><span style="font-size:100%;color:#f4d142;">&starf;</span></td>
					<td class="width20-column"><span style="font-size:100%;color:#f4d142;">&#9734;</span></td>				
					<td></td>
					</tr>
				</thead>
				<tbody>
					
					<tr>
											<td>Attitude<br><p id="star_Attitude"></p><p style="display: none" id="score_Attitude"></p></td>
											
											<td><input type="radio" class="Attitude" name="Attitude" value="5"></td>
											<td><input type="radio" class="Attitude" name="Attitude" value="4"checked="checked"></td>
											<td><input type="radio" class="Attitude" name="Attitude" value="3"></td>
											<td><input type="radio" class="Attitude" name="Attitude" value="2"></td>
											<td><input type="radio" class="Attitude" name="Attitude" value="1"></td>
											<td><input type="radio" class="Attitude" name="Attitude" value="0"></td>
											
											</tr>
											
											<tr>
											<td>Punctuality<br>	<p id="star_Punctuality"></p><p style="display: none" id="score_Punctuality"></p></td>
										
											<td><input type="radio" class="Punctuality" name="Punctuality" value="5"></td>
											<td><input type="radio" class="Punctuality" name="Punctuality" value="4" checked="checked"></td>
											<td><input type="radio" class="Punctuality" name="Punctuality" value="3" ></td>
											<td><input type="radio" class="Punctuality" name="Punctuality" value="2"></td>
											<td><input type="radio" class="Punctuality" name="Punctuality" value="1"></td>
											<td><input type="radio" class="Punctuality" name="Punctuality" value="0"></td>
											
											</tr>
											<tr>
											<td>Problem Solving<br><p id="star_Solving"></p><p style="display: none" id="score_Solving"></p></td>
											
											<td><input type="radio" class="Solving" name="Solving" value="5"></td>
											<td><input type="radio" class="Solving" name="Solving" value="4"checked="checked"></td>
											<td><input type="radio" class="Solving" name="Solving" value="3" ></td>
											<td><input type="radio" class="Solving" name="Solving" value="2" ></td>
											<td><input type="radio" class="Solving" name="Solving" value="1"></td>
											<td><input type="radio" class="Solving" name="Solving" value="0"></td>
											
											</tr>
											<tr>
											<td>Co-operation with professor(You)<br><p id="star_professors"></p><p style="display: none" id="score_professors"></p></td>
											
											<td><input type="radio" class="professors" name="professors" value="5"></td>
											<td><input type="radio" class="professors" name="professors" value="4" checked="checked"></td>
											<td><input type="radio" class="professors" name="professors" value="3" ></td>
											<td><input type="radio" class="professors" name="professors" value="2"></td>
											<td><input type="radio" class="professors" name="professors" value="1"></td>
											<td><input type="radio" class="professors" name="professors" value="0"></td>
											
											</tr>
						
				</tbody>
				
			</table>
			<div style="color:red;">*The stars shown before selecting the radio buttons are the rating which has been done by other professors</div>
			<div style="color:red;">*The candidate has not evaluated if no stars appear</div>
			
	&#160;&#160;		<input type="button"  class="button button4 save_endorse btn-third " id="save_endorse" value="Give a thumb up &raquo"><br>
	<br>
	<br>
	<br>
	<br>
		</div>

<script>//page layers

$(document).ready(function(){
	var modulecode="${modulecode}";
	var year="${year}";
	var candidates="${id}";
	var title="${title}";

	$(document).on("click","#save_endorse", function() {
	var Attitude=$(".Attitude:checked").val();
	var Punctuality=$(".Punctuality:checked").val();
	var ProblemSolving=$(".Solving:checked").val();
	 var Cooperation=$(".professors:checked").val();
	 //alert(attidude+" "+Punctuality+" "+Solving+" "+Professors+" "+Students);
	 
	 //alert(modulecode+year+candidates+title);
		 $.ajax({
   	        type: "POST",
   	         url: "/TA_Gradle/TA/save/endorsement",
   	         data:{modulecode:modulecode,year:year,candidates:candidates,Attitude:Attitude,Punctuality:Punctuality,ProblemSolving:ProblemSolving,Cooperation:Cooperation},
   	         success: function(data){
			if(data==true)
				{
				alert("You have done it Please click Yes to be redirected");
				window.location.href = "/TA_Gradle/TA/endorsement";
				
				
				}
			
   	        	 
   	             else{
   	                  alert("please refresh the page and delete it again"); 	                 
   	             }           
   	    },
   	    error: function(){alert("failure");}
   	    });
	 
	 
	
});



});

</script>
</div>
<script>

$(document).ready(function(){
	
	  $.ajax({
	        url:  "/TA_Gradle/TA/find/endorsement",
	        type: "POST",
	        data: {candidates:"${id}"},
	        dataType: "Json",								          
	    success: function( data ) {
	    	if(!data=='')
	    		{
	    		var array_data=[data.attitude,data.problemSolving
	    		,data.punctuality,data.cooperation];
				
	    		var stars_array=[];
	    		//alert(data.attitude+data.problemSolving+data.punctuality+data.cooperation);
	    		
	    		
	    		$(array_data).each(function(index,value){
	    		var star,element;
	    			//alert(index+" "+value);
	    		if(value<0.5)
	    		stars_array[index]='<div class="rating rating-1"><i class="star-1 is_half">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>0.5&&value<=1)
	    		stars_array[index]='<div class="rating rating-1"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	
	    		else if(value>1&&value<=1.5)
	    		stars_array[index]='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2 is_half">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>1.5&&value<=2)
	    		stars_array[index]='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>2&&value<=2.5)
	    		stars_array[index]='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3  is_half">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    	
	    		else if(value>2.5&&value<=3)
	    		stars_array[index]='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3&&value<=3.5)
	    		stars_array[index]='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 is_half">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3.5&&value<=4)
	    		stars_array[index]='<div class="rating rating-4"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5 ">&starf;</i></div>';
	    		else if(value>4&&value<=4.5)
	    		stars_array[index]='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 ">&starf;</i>&#160;<i class="star-5 is_half">&starf;</i></div>';
	    		else if(value>4.5)
		    		stars_array[index]='<div class="rating rating-5"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	    
	    		
	    		
	    		if(index==0)
	    			$("#score_Attitude").val(value);
	    		if(index==1)
	    			$("#score_Punctuality").val(value);
	    		if(index==2)
	    			$("#score_Solving").val(value);
	    		if(index==3)
	    			$("#score_professors").val(value);
	    		
	    		});

	    	$("#star_Attitude").html(stars_array[0]);
	    	$("#star_Punctuality").html(stars_array[1]);
	    	$("#star_Solving").html(stars_array[2]);
	    	$("#star_professors").html(stars_array[3]);
	    		
	    }
	    	else{

		    	$("#star_Attitude").html('<div class="rating rating-1"><i class="star-2">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>');
		    	$("#star_Punctuality").html('<div class="rating rating-1"><i class="star-2">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>');
		    	$("#star_Solving").html('<div class="rating rating-1"><i class="star-2">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>');
		    	$("#star_professors").html('<div class="rating rating-1"><i class="star-2">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>');
		    	$("#score_Attitude").val("0");
	    		$("#score_Punctuality").val("0");
	    		$("#score_Solving").val("0");
	    		$("#score_professors").val("0");
	    		
	    		
	    	}
	    	
	    },
	        error: function (error) {alert('error: ' + error);},
	        async:false
	    });  	

	  
	  $(".Attitude").change(function(){
		  ValueDatabase=$("#score_Attitude").val();
		  valueTicked=this.value;
		  var star_html;
		  if(parseFloat(ValueDatabase)==0)
			  	var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase)));
			  else
				var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase))/2);
		  if(value<0.5)
			  star_html='<div class="rating rating-1"><i class="star-1 is_half">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>0.5&&value<=1)
	    			star_html='<div class="rating rating-1"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	
	    		else if(value>1&&value<=1.5)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2 is_half">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>1.5&&value<=2)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>2&&value<=2.5)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3  is_half">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    	
	    		else if(value>2.5&&value<=3)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3&&value<=3.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 is_half">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3.5&&value<=4)
	    		star_html='<div class="rating rating-4"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5 ">&starf;</i></div>';
	    		else if(value>4&&value<=4.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 ">&starf;</i>&#160;<i class="star-5 is_half">&starf;</i></div>';
	    		else if(value>4.5)
		    	star_html='<div class="rating rating-5"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	    

		  $("#star_Attitude").empty();
		  $("#star_Attitude").html(star_html);
	  });
	  
	  $(".Punctuality").change(function(){
		  ValueDatabase=$("#score_Punctuality").val();
		  valueTicked=this.value;
		  var star_html;
		  if(parseFloat(ValueDatabase)==0)
			  	var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase)));
			  else
				var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase))/2);
		  if(value<0.5)
			  star_html='<div class="rating rating-1"><i class="star-1 is_half">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>0.5&&value<=1)
	    			star_html='<div class="rating rating-1"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	
	    		else if(value>1&&value<=1.5)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2 is_half">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>1.5&&value<=2)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>2&&value<=2.5)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3  is_half">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    	
	    		else if(value>2.5&&value<=3)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3&&value<=3.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 is_half">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3.5&&value<=4)
	    		star_html='<div class="rating rating-4"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5 ">&starf;</i></div>';
	    		else if(value>4&&value<=4.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 ">&starf;</i>&#160;<i class="star-5 is_half">&starf;</i></div>';
	    		else if(value>4.5)
		    	star_html='<div class="rating rating-5"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	    

		  $("#star_Punctuality").empty();
		  $("#star_Punctuality").html(star_html);
	  });
	  
	 
	  $(".Solving").change(function(){
		  ValueDatabase=$("#score_Solving").val();
		  valueTicked=this.value;
		  var star_html;
		  if(parseFloat(ValueDatabase)==0)
			  	var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase)));
			  else
				var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase))/2);
		  if(value<0.5)
			  star_html='<div class="rating rating-1"><i class="star-1 is_half">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>0.5&&value<=1)
	    			star_html='<div class="rating rating-1"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	
	    		else if(value>1&&value<=1.5)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2 is_half">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>1.5&&value<=2)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>2&&value<=2.5)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3  is_half">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    	
	    		else if(value>2.5&&value<=3)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3&&value<=3.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 is_half">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3.5&&value<=4)
	    		star_html='<div class="rating rating-4"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5 ">&starf;</i></div>';
	    		else if(value>4&&value<=4.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 ">&starf;</i>&#160;<i class="star-5 is_half">&starf;</i></div>';
	    		else if(value>4.5)
		    	star_html='<div class="rating rating-5"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	    

		  $("#star_Solving").empty();
		  $("#star_Solving").html(star_html);
	  });
	  
	  
	  $(".professors").change(function(){
		  ValueDatabase=$("#score_professors").val();
		  valueTicked=this.value;
		  var star_html;
		  if(parseFloat(ValueDatabase)==0)
		  	var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase)));
		  else
			var value=((parseFloat(valueTicked)+parseFloat(ValueDatabase))/2);
		  if(value<0.5)
			  star_html='<div class="rating rating-1"><i class="star-1 is_half">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>0.5&&value<=1)
	    			star_html='<div class="rating rating-1"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	
	    		else if(value>1&&value<=1.5)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2 is_half">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>1.5&&value<=2)
	    			star_html='<div class="rating rating-2"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>2&&value<=2.5)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3  is_half">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    	
	    		else if(value>2.5&&value<=3)
	    		star_html='<div class="rating rating-3"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3&&value<=3.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 is_half">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';
	    		else if(value>3.5&&value<=4)
	    		star_html='<div class="rating rating-4"><i class="star-1 ">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5 ">&starf;</i></div>';
	    		else if(value>4&&value<=4.5)
	    		star_html='<div class="rating rating-4"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4 ">&starf;</i>&#160;<i class="star-5 is_half">&starf;</i></div>';
	    		else if(value>4.5)
		    	star_html='<div class="rating rating-5"><i class="star-1">&starf;</i>&#160;<i class="star-2">&starf;</i>&#160;<i class="star-3">&starf;</i>&#160;<i class="star-4">&starf;</i>&#160;<i class="star-5">&starf;</i></div>';	    

		  $("#star_professors").empty();
		  $("#star_professors").html(star_html);
	  }); 
	  
	  
	  
	  
});
</script>





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
