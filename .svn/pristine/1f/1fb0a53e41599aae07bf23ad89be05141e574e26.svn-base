<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Teaching Assistant Allocation System</title>
<!-- Bootstrap core CSS -->
<link href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.min.css" rel="stylesheet">

	 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!-- Custom styles for this template -->
<link href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/shop-item.css" rel="stylesheet">

<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.min.css"
	rel="stylesheet" type="text/css" />
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
	
	<link rel="stylesheet" href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.js"></script>
<script
	src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/date.format.js"></script>
	<script src="https://cdn.jsdelivr.net/underscorejs/1.8.3/underscore-min.js"></script>
<!-- time picker  -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
	
<!-- time picker  -->

<style>


table .width15-column {
    width: 15%;
}
table .width30-column {
    width: 30%;
}
table .width20-column {
    width: 20%;
}
table .width25-column {
    width: 25%;
}
</style>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/TA_Gradle/TA/default">Teaching Assistant Allocation System</a>
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
				<h1 class="my-4">${candidates.get().id} ${candidates.get().name}</h1>
				<div class="list-group">	
						<a href="/TA_Gradle/TA/default?CanView=1" class="list-group-item"   id="viewvacancies" >View Applications</a> 
						<a href="/TA_Gradle/TA/edit/personal" class="list-group-item" id="edit_detail">Edit detail</a> 
						<a href="/TA_Gradle/TA/default?CV=1" class="list-group-item" id="edit_detail">Upload CV</a> 
						
						
				</div>

			</div><!-- /.col-lg-3 the category -->
			 <div class="col-lg-9">
			 
	
	<c:if test="${CanView==true}">			
			 	
				
				  <div  style="display: yes;" class="card mt-4" id="enroll_view_candidates_frame">
 
 <div class="card-body">
							<h3 class="card-title">Applications </h3>
		<br>			
<div id="table_vacancies_div" ></div>
<br>
<br>
<input type="button"  class="btn btn-third " id="show_allocated" value="Congratulations! You are chosen as a Teaching Assistant &raquo"><br>
<div id="table_allocated" style="display:None;"></div>
<br>
<br>
<input type="button"  class="btn btn-third " id="show_pending" value="Awaiting for Allocation Processes &raquo"><br>
<div id="pending_vacancies_div"style="display:None;"></div>


<div id="dialog-confirm">  


  <a class="dont_want_to_see_u">Please answer the following questions depending on the experience you have had before</a>
  <div id="table_requriment_div" ></div> 
   <div id="table_tools_div" ></div> 
 <br>
<a class="dont_want_to_see_u">Please fill the grade in this field if you have taken any similar modules
<input class="dont want to see u form-control col-lg-3" type="number" id="grade_module" placeholder="can be empty"/>
 
  
  </a><br>
  <a class="dont_want_to_see_u">Introduce yourself either experience of being a Teaching Assistant or any other requirements</a> 
  <br>
 <textarea rows="4" cols="50"  class="form-control dont_want_to_see_u" id="experience"></textarea><br>
  <br>
  <div id="masteronly_warning" style="color:Red;"></div>
  <br> <br> <div id="applying_module" class="want_to_see_u"></div> <br> <br>
<div id="conflict_warning" style="color:Red;" class="want_to_see_u"></div> <br>
<div class="want_to_see_u" id="showconflict"></div>
  
  
  
</div>

<script>
$(document).ready (function () {
	$("#show_allocated").click(function(){
		
		$("#table_allocated").toggle();
		
		
	});
	
	
	$("#show_pending").click(function(){
		
		$("#pending_vacancies_div").toggle();
        
		
	});
	
/* 	
	
	
$("#viewvacancies").click(
        function() {
            $("#enroll_view_candidates_frame").toggle();
            $("#Create_a_vacancy_frame").hide();         
        }); */
        
//applicable     
$.ajax({
    url:  "/TA_Gradle/TA/findvacancies/Candidates",
    type: "Post",
    dataType: "Json",         
    success: function( data ) { 
    	
    	$('#table_vacancies_div').empty();
    	
            var table = $('<table class="table">').appendTo($('#table_vacancies_div'));
            
            $('<thead>').appendTo(table)
            .append($('<th class="width20-column"/>').text("Code"))        
            .append($('<th class="width30-column"/>').text("Module"))
            .append($('<th class="width15-column"/>').text("Professor"))
            .append($('<th class="width15-column"/>').text("Year"))
            .append($('<th class="width20-column"/>').text("Deadline"))
            .append($('<th class="width15-column"/>').text("  "))
            ;
            
            $(data).each(function(i, data) {
            	var abc_allocated_status=data.status_of_allocation;
            	var deadline = new Date(data.application_deadline);
            	var Date_now=Date.now();
            	var result = "";
            	
                result += deadline.format("ddd dd mmm yyyy");
               
                var candidates="${candidates.get().id}";
                var modulecode=data.modulecode;

                
                

	            if(data.enrolStatus==false)
	            	{
	            	 $('<tbody><tr>').appendTo(table)
	                 
	                    .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
	                    .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))  
	                    .append($('<td id='+"title"+data.modulecode+'>').html("<a style='color:blue;' href='mailto:"+data.professor.email+"'>"+getProfessorname(data.professor.id)+"<a/>" ))  
	                    .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
	                    .append($('<td name='+data.modulecode+'>').text(result))
	                    .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"_"+data.year+"' name='"+data.modulecode+"' value='Detail'>"+"<input type='button' class='btn btn-third btnAdd apply_btn' id='"+data.modulecode+"_"+data.year+"' name='"+data.modulecode+"' value='Apply'>"))
	                  
	            	 ;
	            	}
	            else{
	            	$('<tbody><tr>').appendTo(table)
            	                
                    .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
                    .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))
	                    .append($('<td id='+"title"+data.modulecode+'>').html("<a style='color:blue;' href='mailto:"+data.professor.email+"'>"+getProfessorname(data.professor.id)+"<a/>"))
                    .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                    .append($('<td name='+data.modulecode+'>').text(result))
                    .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"_"+data.year+"' name='"+data.modulecode+"' value='Detail'>"+"<input type='button' class='btn btn-third btnAdd apply_btn' id='"+data.modulecode+"_"+data.year+"' name='"+data.modulecode+"' value='Cancel request'>"))
                ;}
                
            });

},
    error: function (error) {alert('error: ' + error);},

}); 

//pending  
$.ajax({
    url:  "/TA_Gradle/TA/findPendings/Candidates",
    type: "Post",
    success: function( data ) { 
    	$('#pending_vacancies_div').empty();
    	
		var pending = $('<table class="table" id="pending_vacancies">').appendTo($('#pending_vacancies_div'));
        
        $('<thead>').appendTo(pending)

        .append($('<th class="width20-column"/>').text("Code"))        
        .append($('<th class="width30-column"/>').text("Module"))
        .append($('<th class="width20-column"/>').text("Professor"))
        .append($('<th class="width20-column"/>').text("Year"))
        .append($('<th/>').text("  "))
        ;
    
    	  $(data).each(function(i, data) {
          	var abc_allocated_status=data.status_of_allocation;
          	var Date_now=Date.now();
              var candidates="${candidates.get().id}";
              var modulecode=data.modulecode;

            	 $('<tbody><tr>').appendTo(pending)
                 
                    .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
            .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))
                .append($('<td id='+"title"+data.modulecode+'>').html("<a style='color:blue;' href='mailto:"+data.professor.email+"'>"+getProfessorname(data.professor.id)+"<a/>" ))
            .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                 .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"_"+data.year+"' name='"+data.modulecode+"' value='Status'>"))
            	 ;
    	  });
},
    error: function (error) {alert('error: ' + error);},


});  







function getProfessorname(id){
	var aa;
	 $.ajax({
	        type: "POST",
	         url: "/TA_Gradle/TA/find/candidate",
	         data:{id:id},
	         success: function(data){

	               aa=data.name;
	    },
	    error: function(){alert("failure");},
	    async:false
	    });  	
	
	return aa;
	
}





$(document).on("click",".apply_btn", function() {
	var special_btn=$("#"+this.id);
	if(this.value=="Apply")
	{
	
	
	Sk="skills"+this.id;
	id="ides"+this.id;
	   var candidates="${candidates.get().id}";
 	   var modulecode=this.id.split("_")[0];
 	   var year=this.id.split("_")[1];
 	  // alert(modulecode+ " "+year);
 	  // var appying_time=$("#"+"time"+this.id).html();
 	 // alert(appying_time);
 	   var master_status=false;
 	  // var masteronly=$("#"+"masteronly"+this.id).
	var masteronly;
 	  
 	  /* skills*/
     var skills,skill_split;
    var ides,ides_split;
	 $.ajax({
  	    url:  "/TA_Gradle/TA/find/module",
  	    type: "Post",             
  	  data:{year:year,modulecode:modulecode},
  	    success: function( data ) {
  	    	skills=data.skills;
  	    	skill_split=skills.split(',');
  	    	ides=data.iDE;
  	    	ides_split=ides.split(',');
  	    	 masteronly=data.masterphdonly;

  	},
  	    error: function (error) {alert('error: ' + error);},
  	  async:false
	   
	   
  });  
 	  
 	  
 	  
 	  
	$("#masteronly_warning").empty();

 		    $("#dialog-confirm").dialog({
 		        resizable: true,
 		        modal: true,
 		        title: $("#"+"title"+modulecode+year).html(),
 		        height: 600,
 		        width: 800,
 		       minWidth: 800,
 		      minHeight: 600,
 		     close: function(e, ui) {
 		    	
 				$("#table_tools_div").empty();
 				$("#table_requriment_div").empty();
 		    },
 		      overlay: {
 		          opacity: 0.5,
 		          background: "black"
 		          },
 		        open: function (e, ui) {
 		            var pane = $(this).dialog("widget").find(".ui-dialog-buttonpane")      
 		            
 	  		if(masteronly==1){
 	  			
 		        		   $.ajax({
 	    	    url:  "/TA_Gradle/TA/find/candidate",
 	    	    type: "Post",             
 	    	  data:{id:"${candidates.get().id}"},
 	    	    success: function( data ) { 		
 	    	          // alert(data.yearofuni);
 	    	          
			if(data.yearofuni==1||data.yearofuni==2||data.yearofuni==3){
				//alert("year of uni"+data.yearofuni);
				master_status=true;
				//alert("master_status in year of uni"+master_status)
				$(".want_to_see_u").hide();	
   	    		$(".dont_want_to_see_u").hide();
				$("#masteronly_warning").show();
				$("#masteronly_warning").html("Oops!The application seems only for Master/PhD candidates");
				$('#dialog-confirm').dialog("option",{buttons:{"Close":function () {
		               $(this).dialog('close');
		            },  }});
				
			}
			else {
				
				 var candidates="${candidates.get().id}";
				 $.ajax({
					 	
		   	    		url:  "/TA_Gradle/TA/check/overlap",
		   	    		type: "Post",     
		   	  			data:{candidates:candidates,modulecode:modulecode,year:year},
		   	  			datatype:"map",
		   	    		success: function( conflict ) 
		   	    		{ 
		   	    			
		   	    			$("#masteronly_warning").hide();
		   	    			$(".want_to_see_u").empty();	
			   	    		$(".dont_want_to_see_u").hide();
			   	    	if(jQuery.isEmptyObject(conflict)){
			   	    		$(".want_to_see_u").hide();	
			   	    		$(".dont_want_to_see_u").show();
			   	    		   	    		
			   	    		conflict_status=false;//enable
			   	    		
							var table_skills_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_requriment_div'));
		 		            
		 		            $('<thead>').appendTo(table_skills_tick)
		 		            .append($('<th/>').text("Skills"))
		 		        	.append($('<th/>').text("No experience"))
		 		         
		 		            .append($('<th/>').text("Beginners"))
		 		          
		 		            .append($('<th/>').text("Intermediate"))
		 		    
		 		            .append($('<th/>').text("Advanced"))
		 		       
		 		            .append($('<th/>').text("Professional"))
		 		            ;
		 		            
		 		            
		 		           var table_ide_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_tools_div'));
				            
				            $('<thead>').appendTo(table_ide_tick)
				            .append($('<th/>').text("Tools"))
				        	.append($('<th/>').text("No experience"))
				         
				            .append($('<th/>').text("Beginners"))
				          
				            .append($('<th/>').text("Intermediate"))
				    
				            .append($('<th/>').text("Advanced"))
				       
				            .append($('<th/>').text("Professional"))
				            ;  
		 					
		 		         
		 		            
		 		            
		  		          $.each(skill_split, function(key, value) {
		  		        	var str1=value.split("/");
		  		        	

		  		        	 $('<tbody>').appendTo(table_skills_tick)
			                  .append($('<td id="'+str1[0]+'">').text(str1[0]))
				               .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="0">'))
			                   .append($('<td>').html('<input type="radio"  class="requbtn" name="skill'+str1[0]+'" value="30">'))
			                    .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="60" checked>'))
			                     .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="80">'))
			                      .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="100">'))
			          
			             
			            
			            	 ;
	            	         	
		 		        	//skill_html+= '<a class="knowledge_skills">'+str1[0]+'<div><input type="radio" name="skill'+str1[0]+'" value="0">Has not learnt<input type="radio" name="skill'+str1[0]+'" value="30">Beginners<input type="radio" name="skill'+str1[0]+'" value="60">Intermediate<br><input type="radio" name="skill'+str1[0]+'" value="80">Advanced<input type="radio" name="skill'+str1[0]+'" value="100">Professional <br></div>'; 
		 		        	});	           
						
							 /* skills*/
							 
		 		            /* ides*/
			 		          $.each(ides_split, function(key, value) {
			 		        	 str1=value.split("/");
		            	        
			 		        	 $('<tbody>').appendTo(table_ide_tick)
				                  .append($('<td id="'+str1[0]+'">').text(str1[0]))
					               .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="0">'))
				                   .append($('<td>').html('<input type="radio"  class="requbtnides" name="skill'+str1[0]+'" value="30">'))
				                    .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="60" checked>'))
				                     .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="80">'))
				                      .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="100">'))
				          
				                     ;
			 	 		          
			 		        	 
			 		        	 
			 		        	 
			 		        	 
			 		        	 //ides_html+= '<a class="knowledge_ides">'+str1[0]+'</a><input type="text" class="knowledge_ides form-control col-lg-1" />'; 
			 		        	});	           
								// $("#ides_dialog").html(ides_html);
								 /* ides*/
								 
								
			   	    	}
			   	    	
			   	    	else{
			   	    		$(".dont_want_to_see_u").hide();
			   	    		$(".want_to_see_u").show();	
			   	    		conflict_status=true;
			   	    		
			   	    		//$("#applying_module").html("The timeslots of the module you are applying for <br>"+appying_time);
			   	    		
			   	    		$("#conflict_warning").html("Conflict modules:"+"<a size='2'>the following time slots show the overlaps with your Teaching Assistants timetable</a>"+"<br>");
			   	    		$.map(conflict, function(value, index){ 
			   	    		$("#showconflict").html(index+" "+value+"<br>");
			   	    		$('#dialog-confirm').dialog("option",{buttons:{"Close":function () {
		 		               $(this).dialog('close');
		 		            },  }});
			   	         // the map method applied funciton to each item in array
			   	     		//alert(value+" "+index)  // sqrt of array numbers
			   	        		});	   	    		
			   	    		}	
		  			 	},
		   	    error: function (error) {alert('error: ' + error);},

		  			 });
				
			
			}
 	    	},
 	    	    error: function (error) {alert('error: ' + error);},

 	 	   
 	 	   
 	    }); 
         
 	  		}     
 	  		else{
 	  			var candidates="${candidates.get().id}";
 	  		 $.ajax({
 	  			 
    	    		url:  "/TA_Gradle/TA/check/overlap",
    	    		type: "Post",     
    	  			data:{candidates:candidates,modulecode:modulecode,year:year},
    	  			datatype:"map",
    	    		success: function( conflict ) 
    	    		{ 
    	    			
    	    			$("#masteronly_warning").hide();
    	    			$(".want_to_see_u").empty();	
 	   	    		$(".dont_want_to_see_u").hide();
 	   	    	if(jQuery.isEmptyObject(conflict)){
 	   	    		$(".want_to_see_u").hide();	
 	   	    		$(".dont_want_to_see_u").show();
 	   	    		   	    		
 	   	    		conflict_status=false;//enable
 	   	    	
 					var table_skills_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_requriment_div'));
 		            
 		            $('<thead>').appendTo(table_skills_tick)
 		            .append($('<th/>').text("Skills"))
 		        	.append($('<th/>').text("No experience"))
 		         
 		            .append($('<th/>').text("Beginners"))
 		          
 		            .append($('<th/>').text("Intermediate"))
 		    
 		            .append($('<th/>').text("Advanced"))
 		       
 		            .append($('<th/>').text("Professional"))
 		            ;
 		            
 		            
 		           var table_ide_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_tools_div'));
		            
		            $('<thead>').appendTo(table_ide_tick)
		            .append($('<th/>').text("Tools"))
		        	.append($('<th/>').text("No experience"))
		         
		            .append($('<th/>').text("Beginners"))
		          
		            .append($('<th/>').text("Intermediate"))
		    
		            .append($('<th/>').text("Advanced"))
		       
		            .append($('<th/>').text("Professional"))
		            ;  
 					
  		          $.each(skill_split, function(key, value) {
  		        	var str1=value.split("/");
  		        	
  		        	 $('<tbody><tr>').appendTo(table_skills_tick)
	                  .append($('<td id="'+str1[0]+'">').text(str1[0]))
		               .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="0">'))
	                   .append($('<td>').html('<input type="radio"  class="requbtn" name="skill'+str1[0]+'" value="30">'))
	                    .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="60" checked>'))
	                     .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="80">'))
	                      .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="100">'))
	          
	             
	            
	            	 ;
  		          });
 	 		          $.each(ides_split, function(key, value) {
 	 		        	var str1=value.split("/");
 	 		     	 $('<tbody><tr>').appendTo(table_ide_tick)
	                  .append($('<td id="'+str1[0]+'">').text(str1[0]))
		               .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="0">'))
	                   .append($('<td>').html('<input type="radio"  class="requbtnides" name="skill'+str1[0]+'" value="30">'))
	                    .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="60" checked>'))
	                     .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="80">'))
	                      .append($('<td>').html('<input type="radio" class="requbtnides" name="skill'+str1[0]+'" value="100">'))
	          
	                     ;
 	 		          });	           
 						
 						 /* ides*/
 	   	    	
 	   	    	}
 	   	    	else{
 	   	    		$(".dont_want_to_see_u").hide();
 	   	    		$(".want_to_see_u").show();	
 	   	    		conflict_status=true;
 	   	    		
 	   	    		//$("#applying_module").html("The timeslots of the module you are applying for <br>"+appying_time);
 	   	    		
 	   	    		$("#conflict_warning").html("Conflict modules:"+"<a size='2'>the following time slots show the overlaps with your Teaching Assistants shift</a>"+"<br>");
 	   	    		$.map(conflict, function(value, index){ 
 	   	    		$("#showconflict").html(index+" "+value+"<br>");
 	   	    		$('#dialog-confirm').dialog("option",{buttons:{"Close":function () {
  		               $(this).dialog('close');
  		            },  }});
 	   	         // the map method applied funciton to each item in array
 	   	     		//alert(value+" "+index)  // sqrt of array numbers
 	   	        		});	   	    		
 	   	    		}	
   			 	},
    	    error: function (error) {alert('error: ' + error);},

   			 });
 	  			
 	  			
 	  			
 	  		}    
 		            
 		        	
 		  		 
 		            /*
 		            $("<label class='shut-up' ><input  type='checkbox'/> Stop asking!</label>").prependTo(pane)
 		        $("<label class='shut-up' ><input  type='checkbox'/></label>").prependTo(pane)*/
 		 		
 		       
 		       
 		        },
 		        
 		 
 		        
 		        buttons: {
 		            "Apply":function (aa) {                   
 		               var buttonElement = aa.id;		                           
 		               callback(true);
 		               $(this).dialog('close');
 		            },
 		           "Close":function () {
 		               $(this).dialog('close');
 		               empty_items(true);
 		            }, 
 		          /*  "test":function (aa) {                   
 		               	                           
 		               test1(true);
 		               //$(this).dialog('close');
 		            }, */
 		            
 		        }
 		        
 		    });
function empty_items(value){
	if(value){
		
		$("#table_tools_div").empty();
		$("#table_requriment_div").empty();
		
	}
}
 			/* function test1(value) {
 				if(value){
 					var str_skills;
 	 		    	var str_ides;
 					var check_skills_empty=$("input[type='radio'].requbtn:checked").val();
 					var check_ides_empty=$("input[type='radio'].requbtnides:checked").val();
 				
 				
 				
 					
 	 		    	$("input[type='radio'].requbtn:checked").each(function(index) {
 	 					
 	 		    		var a=0;
 			    			if(this.value=='') this.value=parseFloat(0);
 			    		if(index>0) str_skills+=","+this.value; 
 			    		else 	str_skills=this.value; 
 			    		 
 			    			
 	 	 					
 	 	 				});

 	 		    		
 	 		    		
 	 		    		$("input[type='radio'].requbtnides:checked").each(function(index) {
 	 		    			if(this.value=='') this.value=0;
 	 		    			if(index>0) str_ides+=","+this.value; 
 	 		    			else  str_ides=this.value;
 	 		    		});
 	 		    		
 	 		    		alert(str_skills+"|"+str_ides);
 	 		    		
 			}
 			} */
 		    
 		function callback(value) {
 		    if (value) {
 		    	var str_skills;
 		    	var str_ides;
 		    	var grade=$("#grade_module").val();
 		    	var experience=$("#experience").val();
					var check_skills_empty=$("input[type='radio'].requbtn:checked").val();
					var check_ides_empty=$("input[type='radio'].requbtnides:checked").val();
				
				
				
					
	 		    	$("input[type='radio'].requbtn:checked").each(function(index) {
	 					
	 		    		var a=0;
			    			if(this.value=='') this.value=parseFloat(0);
			    		if(index>0) str_skills+=","+this.value; 
			    		else 	str_skills=this.value; 
			    		 
			    			
	 	 					
	 	 				});

	 		    		
	 		    		
	 		    		$("input[type='radio'].requbtnides:checked").each(function(index) {
	 		    			if(this.value=='') this.value=0;
	 		    			if(index>0) str_ides+=","+this.value; 
	 		    			else  str_ides=this.value;
	 		    		});
	 		    		
	 		    		//alert(str_skills+"|"+str_ides);
 		    	
 		

 		    		
 		    		if(grade=="")grade=0;
 		    		//alert(str_skills+"|"+str_ides);
 		    		
 		    		
 		    		
 		    		
 		    		
    $.ajax({
 	    	    url:  "/TA_Gradle/TA/enrol/candidates",
 	    	    type: "Post",             
 	    	  data:{candidates:"${candidates.get().id}",year:year,modulecode:modulecode,grade:grade,skills:str_skills,ides:str_ides,experience:experience},
 	    	    success: function( data ) { 		
 	    	           
 	    	            if(data==true)
 	    	            	{
 	    	            	//special_btn.attr("disabled", true);
 	    	            	$("#grade_module").val("");
 	    	            	
 	    	            	 alert("thanks for your application")
 	    	            	special_btn.val("Cancel request");
 	    	            	}
 	    	            else{
 	    	            	alert("Try it again or refresh the page")
 	    	            }
 		
 	    	},
 	    	    error: function (error) {alert('error: ' + error);},

 	 	   
 	 	   
 	    });   
 		    
 		    
 		    
	
 		    }
 		}
 	   
 	   
    	/*
    	
    */
      
	} 
	
	else if((this.value=="Cancel request")){

	 	   var modulecode=this.id.split("_")[0];
	 	   var year=this.id.split("_")[1];
		
	 	    $.ajax({
 	    	    url:  "/TA_Gradle/TA/cancel/Application",
 	    	    type: "Post",             
 	    	  data:{moduleid:modulecode+year},
 	    	    success: function( data ) { 		
 	    	           
 	    	            if(data==true)
 	    	            	{
 	    	            	$("#grade_module").val("");
 	    	            	
 	    	            	 alert("The enrol has been cancelled")
 	    	            	special_btn.val("Apply");
 	    	            	}
 	    	            else{
 	    	            	alert("Try it again or refresh the page")
 	    	            }
 		
 	    	},
 	    	    error: function (error) {alert('error: ' + error);},

 	 	   
 	 	   
 	    }); 
		
		
	}
	
    
});
        
});
</script>











<div id="show_detail_dialog"> 
<div id="statusBarDiv"></div>
<div id="detail_div" ></div>
<br>
<div id="detail_div3" ></div>
<br>
<div id="detail_div2" ></div>
</div>

<div id="dialog-allocated"> 
<div id="detail_div33" ></div>
<br>
<div id="detail_div00" ></div>
<br>

<div id="detail_div11" ></div>
<br> 
<div id="detail_div22" ></div>


</div>
<script>
$(document).ready (function () {
	
    $.ajax({
 	    url:  "/TA_Gradle/TA/findchosenCandidate/CandiID",
 	    type: "Post",
 	    success: function( data ) { 		
 	        
 	    	$('#table_allocated').empty();
 	   	var table_allocated = $('<table class="table">').appendTo($('#table_allocated'));
 	    
 	    $('<thead>').appendTo(table_allocated)
 	    .append($('<th class="width20-column"/>').text("Code"))        
 	    .append($('<th class="width30-column"/>').text("Module"))
 	    .append($('<th class="width20-column"/>').text("Professor"))
 	    .append($('<th class="width20-column"/>').text("Year"))
 	    .append($('<th/>').text("  "))
 	    ; 
 	    	
 	    $(data).each(function(index,value){
 	    	
 	    	 $('<tr>').appendTo(table_allocated)
 	 	       
  	    	.append($('<td id='+"modulecode"+value.modulecode+'>').text(value.moduleid.modulecode))
  	  	.append($('<td id='+"title"+value.modulecode+value.year+'>').text(value.title))
  	  	.append($('<td id='+"title"+value.modulecode+'>').html("<a style='color:blue;' href='mailto:"+getProfessoremail(value.professor)+"'>"+getProfessorname(value.professor)+"<a/>" ))
  	  	.append($('<td id='+"year"+value.modulecode+'>').text(value.year))
  	  	.append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_allocated_btn' style='color:Blue;' id='"+"detail_allocated"+value.modulecode+"|"+value.year+"' name='"+value.modulecode+"' value='Detail'>"));	
 	    	
 	    	
 	    	
 	    });	 
 	  	
         
 	},
 	    error: function (error) {alert('error: ' + error);},

	   
	   
 });   

    
    function getProfessoremail(id){
    	var aa;
    	 $.ajax({
    	        type: "POST",
    	         url: "/TA_Gradle/TA/find/candidate",
    	         data:{id:id},
    	         success: function(data){

    	               aa=data.email;
    	    },
    	    error: function(){alert("failure");},
    	    async:false
    	    });  	
    	
    	return aa;
    	
    }
    
    $(document).on("click",".Detail_allocated_btn", function() {
    	
    	
    	var array1=this.id.split("detail_allocated")[1].split("|");
    	var modulecode=array1[0];
    	   var year=array1[1];
    	$("#dialog-allocated").dialog({
    	     resizable: true,
    	     modal: true,
    	     title: $("#"+"title"+modulecode+year).html(),
    	     height: 600,
    	     width: 800,
    	    minWidth: 700,
    	   minHeight: 500,
    	  close: function(e, ui) {
    	 	

    		  $("#detail_div00").empty();
    			$("#detail_div11").empty();
    			$("#detail_div22").empty();
    			$("#detail_div33").empty();
    	 },
    	   overlay: {
    	       opacity: 0.5,
    	       background: "black"
    	       },
    	     open: function (e, ui) {
    	    	 var time;
    	    	 var skill;
    	    	 var ide;
    	    	   $.ajax({
    	 	    	    url:  "/TA_Gradle/TA/find/module",
    	 	    	    type: "Post",             
    	 	    	  data:{year:year,modulecode:modulecode},
    	 	    	    success: function( data ) {
    	 	    	    	


    	 	    	    	var masterphdonly;
    	 	    	    	if(data.masterphdonly==1) masterphdonly="Master&PhD only"; 
    	 	    	    	else masterphdonly="All candidates";
    	 	            	var subject;
    	 	    	    	aa=data.time.split(",");
    	 	    	    	bb=data.skills.split(",");
    	 	    	    	cc=data.iDE.split(",");
    	 	    	    	//alert(data.subject);
    	 	    	    	
    	 	    	    	$(aa).each(function(i, data){
    	 	    	    		
    	 	    	    		if(i>0)time+=data+"<br>"
    	 	    	    		else time=data+"<br>";
    	 	    	    	});
    	 	    	    	$(bb).each(function(i, data){
    	 	    	    		dd=data.split("/")[0];
    	 	    	    		if(i>0)skill+=dd+"<br>"
    	 	    	    		else skill=dd+"<br>";
    	 	    	    	});
    	 	    	    	$(cc).each(function(i, data){
    	 	    	    		dd=data.split("/")[0];
    	 	    	    		if(i>0)ide+=dd+"<br>"
    	 	    	    		else ide=dd+"<br>";
    	 	    	    	});	    
    	 	    	    	

    	 	    	   	if(data.subject.length>1)
	 	    	    	{
	 	    	    		dd=data.subject.split(",");
	 	    	    		$(dd).each(function(i, data){
    	 	    	    		if(i>0)subject+=data+"<br>"
    	 	    	    		else subject=data+"<br>";   	 	    	    		
    	 	    	    	});
 
	 	    	    		
	 	    	    	}else
	 	    	    		subject=data.subject;
    	 	    	    	
    	
    	 	    	   var detail = $('<table class="table" id="">').appendTo($('#detail_div22')); 	               

    	 	    	   		$('<thead>').appendTo(detail)
    	 	    	   		.append($('<th/>').text("Applicable Candidates"))
    	 	               .append($('<th/>').text("Total Hours"))
    	 	               
    	 	               
    	 	               ;            
    	 	    	         
    	 	    	   	var detail2 = $('<table class="table">').appendTo($('#detail_div33')); 
    	 	               $('<thead>').appendTo(detail2)
    	 	              .append($('<th style="width: 30%;" />').text("Teaching Assistants"))
    	 	              .append($('<th style="width: 30%;"/>').text("Applicable department"))
    	 	               
    	 	               ;   
    	 	    	   
    	 	    	   		
    	 	    	   		
    	 	              var detail4 = $('<table class="table">').appendTo($('#detail_div00')); 
    	 	               $('<thead>').appendTo(detail4)	  
    	 	               .append($('<th style="width: 30%;"/>').text("Description"))
    	 	               ;        

    	 	              var detail3 = $('<table class="table">').appendTo($('#detail_div11')); 	               

    	 	    	   		$('<thead>').appendTo(detail3)	
    	 	    	   		.append($('<th/>').text("Time Slots"))
    	 	    	   		.append($('<th >').text("Required Skills"))
    	 	    	   		 .append($('<th >').text("Required Tools"))
    	 	               
    	 	               ;   
    	 	    	   		
    	 	              $('<tr/>').appendTo(detail)
    	 	             .append($('<td>').text(masterphdonly)) 
                          .append($('<td>').text(data.total_hours)) 
                          ;
                          
                  	

    	 	               
    	 	            $('<tr/>').appendTo(detail3)
    	 	            .append($('<td id='+"time"+data.modulecode+'>').html(time))
    	 	            .append($('<td name='+data.modulecode+'>').html(skill))
    	 	             .append($('<td name='+data.modulecode+'>').html(ide));
    	 	            
    	 	            
    	 	           $('<tr/>').appendTo(detail4) 
                        .append($('<td  name='+data.modulecode+'>').text(data.description))
    	 	            
     	    	    	
                        $.ajax({
                            type: "POST",
                             url: "/TA_Gradle/TA/find/allocated/candidates/byyear/module",
                             data:{modulecode:data.modulecode,year:data.year},
                             dataType: "Json", 
                             success: function(data1){

         	 	    	    	var chosen_candidates;
        	 	    	    	
       	 	    	    	 if(data1!==null){
                               	 $(data1).each(function(i, data) {
                               		//alert(data.candidates.id+" "+data.candidates.email);
                               		 if(i>0) chosen_candidates+="<a style='color:blue;' href='mailto:"+data.candidates.email+"'>"+data.candidates.name+"<a/>"+"<br>";
                               		 else chosen_candidates= "<a style='color:blue;' href='mailto:"+data.candidates.email+"'>"+data.candidates.name+"<a/>"+"<br>";
                               	 });
                               	 
                               	 }
                            	 
       	 	    	    	
            	 	             $('<tr/>').appendTo(detail2) 
                                .append($('<td>').html(chosen_candidates))
                        		 .append($('<td  name='+data.modulecode+'>').html(subject)); 
                         
                         
                        },
                        error: function(){alert("failure");}
                        });
    	 	            
    	 	            
    	 	            
    	 	               
    	 		
    	 	    	},
    	 	    	    error: function (error) {alert('error: ' + error);},

    	 	 	   
    	 	 	   
    	 	    });  
    	    	 
    	     },
    	        
     		 
    	        
    	        buttons: {
    	           "Close":function () {
    	               $(this).dialog('close');
    	               empty_detail(true);
    	            },             
    	        }
    	
    	});
    	
    });


    function empty_detail(value){
    	if(value){
    		
    		$("#detail_div00").empty();
    		$("#detail_div11").empty();
    		$("#detail_div22").empty();
    		$("#detail_div33").empty();
    	}
    }


    function findTA(id){
    	var aa;
        $.ajax({
            type: "POST",
             url: "/TA_Gradle/TA/find/candidate",
             data:{id:id},
             dataType: "Json", 
             success: function(data){
    	//alert(data.name)
            	 aa=data.name;   	 
            	 
        },
       
        error: function(){alert("failure");},
        async:false
        
        });
    	
    	
    	return aa;
    	
    }


    function getProfessorname(id){
    	var aa;
    	 $.ajax({
    	        type: "POST",
    	         url: "/TA_Gradle/TA/find/candidate",
    	         data:{id:id},
    	         success: function(data){

    	               aa=data.name;
    	    },
    	    error: function(){alert("failure");},
    	    async:false
    	    });  	
    	
    	return aa;
    	
    }   
   
    
    
});
</script>


<script>//detail
$(document).on("click",".Detail_btn", function() {
	var array1=this.id.split("detail")[1].split("_");
	modulecode=array1[0];
	var ValueOfDetail=this.value;
	   var year=array1[1];
	 //  alert(modulecode+" "+year);
	$("#show_detail_dialog").dialog({
	     resizable: true,
	     modal: true,
	     title: $("#"+"title"+modulecode+year).html(),
	     height: 600,
	     width: 800,
	    minWidth: 700,
	   minHeight: 500,
	  close: function(e, ui) {
	 	
		  $('#statusBarDiv').empty();
			$("#detail_div").empty();
			$("#detail_div2").empty();
			$("#detail_div3").empty();
	 },
	   overlay: {
	       opacity: 0.5,
	       background: "black"
	       },
	     open: function (e, ui) {
	    	 
	    	   $.ajax({
	 	    	    url:  "/TA_Gradle/TA/find/module",
	 	    	    type: "Post",             
	 	    	  data:{year:year,modulecode:modulecode},
	 	    	    success: function( data ) {
	 	    	    	aa=data.time.split(",");
	 	    	    	bb=data.skills.split(",");
	 	    	    	cc=data.iDE.split(",");
	 	    	    	var time,skill,ide,subject;
	 	    	    	$(aa).each(function(i, data){
	 	    	    		if(i>0)time+=data+"<br>"
	 	    	    		else time=data+"<br>";
	 	    	    	});
	 	    	    	$(bb).each(function(i, data){
	 	    	    		
	 	    	    		dd=data.split("/")[0];
	 	    	    		
	 	    	    		if(i>0)skill+=dd+"<br>"
	 	    	    		else skill=dd+"<br>";
	 	    	    	});
	 	    	    	$(cc).each(function(i, data){
	 	    	    		dd=data.split("/")[0];
	 	    	    		if(i>0)ide+=dd+"<br>"
	 	    	    		else ide=dd+"<br>";
	 	    	    	});
	 	    	    	if(data.subject.length>1)
	 	    	    	{
	 	    	    		dd=data.subject.split(",");
	 	    	    		$(dd).each(function(i, data){
    	 	    	    		if(i>0)subject+=data+"<br>"
    	 	    	    		else subject=data+"<br>";
    	 	    	    		
    	 	    	    	});
        	
	 	    	    		
	 	    	    		
	 	    	    	}
	 	    	    	
	 	    	    	if(data.masterphdonly==1) var masterphdonly="Master and PhD only"; else  var masterphdonly="All candidates";
	 	            	//alert(time+" "+skill+" "+ide);
	 	    	    	
	 	    	   
	 	 	    	   if(ValueOfDetail=="Status"){
	 	 	    		  var detail4 = $('<table class="table table_customised" id="table_customised">').appendTo($('#statusBarDiv'));
		 	    	   		$('<thead>').appendTo(detail4)
		 	    	   		.append($('<th/>').text("Status"))
		 	               ;            
		 	    	   
	 	 	    	
		 	            if(data.currentStatus==0)
		 	           	$('<tbody>').appendTo(detail4)
		 	             .append($('<td>').html('<div class="progress"><div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width:30%; background-color:#5cb85c;">Awaiting Allocation</div></div>'));
		 	            
		 	            else if(data.currentStatus==1)
		 	            	$('<tbody>').appendTo(detail4)
		 	            	.append($('<td>').html(' <div class="progress"><div class="progress-bar progress-bar-success" role="progressbar" style="width:30%; background-color:#5cb85c;">Awaiting Allocation</div><div class="progress-bar progress-bar-warning" role="progressbar" style="width:30%; background-color:#f0ad4e;">Choosing Suitable Candidates</div> </div>' ));
		 	            	
		 	           else if(data.currentStatus==2)
		 	            	$('<tbody>').appendTo(detail4)
		 	            	.append($('<td>').html(' <div class="progress"><div class="progress-bar progress-bar-success" role="progressbar" style="width:30%; background-color:#5cb85c;">Awaiting Allocation</div><div class="progress-bar progress-bar-warning" role="progressbar" style="width:30%; background-color:#f0ad4e;">Choosing Suitable Candidates</div><div class="progress-bar progress-bar-danger" role="progressbar" style="width:30%;background-color:#d9534f; ">Interviewing</div> </div>'));
	 	 	    	 
	 	 	    	   
	 	 	    	   }
	 	 	    	  
	 	            	
	 	            	
	 	            	
	 	    	   var detail = $('<table class="table table_customised" id="table_customised">').appendTo($('#detail_div')); 	               
				
	 	    	   
	 	    	   		$('<thead>').appendTo(detail)
	 	    	   		.append($('<th/>').text("Applicable Candidates"))
	 	               .append($('<th/>').text("Total Hours"))
	 	               .append($('<th/>').text("Number of TAs"))
	 	               ;            
	 	    	         
	 	              var detail2 = $('<table class="table table_customised" id="table_customised">').appendTo($('#detail_div2')); 
	 	               $('<thead>').appendTo(detail2)
	 	               .append($('<th/>').text("Description"))
	 	               .append($('<th/>').text("Applicable department"))	    
	 	               ;        

	 	              var detail3 = $('<table class="table table_customised" id="table_customised">').appendTo($('#detail_div3')); 	               

	 	    	   		$('<thead>').appendTo(detail3)	
	 	               
	 	               	
	 	    	   		.append($('<th/>').text("Time Slots"))
	 	    	   		.append($('<th >').text("Required Skills"))
	 	    	   		 .append($('<th >').text("Required Tools"))
	 	               ;   
	 	    	   		
	 	              $('<tbody>').appendTo(detail)
		 	             .append($('<td>').text(masterphdonly)) 
	                      .append($('<td>').text(data.total_hours)) 
	                      .append($('<td>').text(data.quntities_TA))
                      
                      
              	
	 	             $('<tbody>').appendTo(detail3) 
                    
	 	            .append($('<td id='+"time"+data.modulecode+'>').html(time))
	 	            .append($('<td name='+data.modulecode+'>').html(skill))
	 	             .append($('<td name='+data.modulecode+'>').html(ide));
                     
                 
	 	               
	 	            $('<tbody>').appendTo(detail2)
	 	            .append($('<td  name='+data.modulecode+'>').text(data.description))
	 	           .append($('<td  name='+data.modulecode+'>').html(subject));
	 	            
	 	    	},
	 	    	    error: function (error) {alert('error: ' + error);},

	 	 	   
	 	 	   
	 	    });  
	    	 
	     },
	        
 		 
	        
	        buttons: {
	           "Close":function () {
	               $(this).dialog('close');
	               empty_detail(true);
	            },             
	        }
	
	});
	
});


function empty_detail(value){
	if(value){
		$('#statusBarDiv').empty();
		$("#detail_div").empty();
		$("#detail_div2").empty();
		$("#detail_div3").empty();
	}
}


</script>
					</div>
						<!--card-body  -->
 
 
 
          </div>
       
    
       
          <!-- /.card enrol -->	
			 <div class="card mt-4" id="find_candidates_detail">
 
 <div class="card-body">
<h3 class="card-title">Professor detail</h3>
	<div>						

<div class="form-inline">
<input type="text" class="form-control col-lg-4"  id="search" placeholder="Professor ID or name" required>&#160;&#160;&#160; <a>*Enter space will show all professors</a><br>
<br>
</div>
<br>
<div id="candidate_detail_table_div">

</div>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
</div>

<script>//table detail

$(document).ready (function () {

	
	$("#Candidates_details").click(function(){
		
		$("#find_candidates_detail").toggle();
		
		
		
	});

var table = $('<table class="table " id="table_detail">').appendTo($('#candidate_detail_table_div'));

$('<thead>').appendTo(table)
.append($('<th/>').text("ID"))        
.append($('<th/>').text("NAME"))         
.append($('<th/>').text("Mobile"))
.append($('<th/>').text("Eamil"))
.append($('<th/>').text("Subject"))
;



	$("#search").keyup(function(){
		
		$(".tr_class").empty();
		
 		var candidates=$("#search").val();
 		if(candidates.length==0)
 			{
 			$(".tr_class").empty();
 			return;
 			}
 			
 		if(candidates.trim()=="")candidates="";
 		
 		
        $.ajax({
            url:  "/TA_Gradle/TA/find/like/professor",
            type: "POST",
            data: {id:candidates},
            dataType: "Json",								          
        success: function( data ) {
        	
        	
        	if(data==null){alert("Oops! It seems like We don't have the ID in our database");}
        	else{
        		
        		
        	$(data).each(function(index,value){
        		
        		 $('<tr class="tr_class">').appendTo(table)
        	        .append($('<td>').text(value.id))
        	        .append($('<td>').text(value.name))  
        	        .append($('<td>').text(value.mobile))
        	        .append($('<td>').html("<a style='color:blue;' href='mailto:"+value.email+"'>"+value.email+"<a/>" ))
        	        .append($('<td>').text(value.subject))     
        	        ; 
 		
        		
        	});	

    		 
        	}

        },
            error: function (error) {alert('error: ' + error);},
  
        });

	}); 


});
</script>



	</div>		 
	</div>		<!-- find candidates details --> 			
			 
			 
			 
		
		</c:if>		 		 
	
	<c:if test="${CV==true}">	
	
	 <div  style="display: yes;" class="card mt-4" id="uploadCV_frame">
 
 <div class="card-body">
							<h3 class="card-title">Upload CV </h3>
							<br><br><br><br><br><br>
<form action="/TA_Gradle/TA/uploadFile" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label>Select File</label> 
        <input class="form-control" type="file" id="file" name="file">
      </div>
      <div class="form-group form-inline">
        <button class="btn btn-primary" type="submit">Upload</button>
  &#160;&#160;  <div id="Date" style="color:red;">${Message}</div>
     
      </div>
        
   
    </form>

    <!-- Alert -->
    

    <c:if test="${!empty Upload_Date}">
    <div id="Date">Last Update:${Upload_Date}</div>
    </c:if>
  
						<br><br><br><br><br>	
										
		 <div id="status"></div>					
							
							</div>
							</div><!-- <div  style="display: yes;" class="card mt-4" id="uploadCV_frame"> -->
	
	
	
	
	</c:if>
	
				 
			 </div>
			
			
			
		</div><!-- /.row -->
		
	</div><!-- /.container -->






	<!-- Bootstrap core JavaScript -->
<script src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
