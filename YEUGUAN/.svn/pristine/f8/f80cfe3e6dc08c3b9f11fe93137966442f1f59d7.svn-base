<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<style>
body, html {
    height: 100%;
}
.bg {
    /* The image used */
    background-image: url("https://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img(11).jpg");

    /* Half height */
    height: 50%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
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


<style type="text/css">



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
				<a href="/TA_Gradle/TA/default" class="list-group-item"   id="viewvacancies" >View Applications</a>
					<a href="/TA_Gradle/TA/professor/create" class="list-group-item" id="Create_a_vacancy">Open an application</a> 
					<a href="/TA_Gradle/TA/endorsement" class="list-group-item" id="edit_detail">Candidate Evaluation </a> 
					<a href="/TA_Gradle/TA/edit/personal" class="list-group-item" id="edit_detail">Edit detail</a> 

						
				</div>

			</div><!-- /.col-lg-3 the category -->
			 <div class="col-lg-9">
			 
	
				
				
				
				  <div class="card mt-4" id="enroll_view_candidates_frame">
 
 <div class="card-body">
<h3 class="card-title">Application </h3>
	<div>						
<div id="table_vacancies_div" ></div>
<br>
<input type="button"  class="btn btn-third " id="show_pending" value="Awaiting for Allocation Processes &raquo"><br>
<div id="table_pending" style="display:None;"></div>
<br>
<input type="button"  class="btn btn-third " id="show_allocated" value="Detail of Allocations &raquo"><br>

<div id="table_allocated" style="display:None;"></div>
</div>

<script>
$(document).ready (function () {
	

	$("#show_pending").click(function(){
		
		$("#table_pending").toggle();
		
		
	});
		$("#show_allocated").click(function(){
			
			$("#table_allocated").toggle();
			
			
		});
	
	
	
	
	var professor="${candidates.get().id}";

$.ajax({
    url:  "/TA_Gradle/TA/findbyprofessor",
    type: "Get",           
    data:{professor:professor},
    dataType: "Json",         
    success: function( data ) { 	
    	
    	
    	
            var table = $('<table class="table " id="">').appendTo($('#table_vacancies_div'));
            
            $('<thead>').appendTo(table)
        	.append($('<th class="width20-column"/>').text("Code"))        
            .append($('<th class="width30-column"/>').text("Module"))         
            .append($('<th class="width20-column"/>').text("Year"))
            .append($('<th class="width30-column"/>').text("Applied Candidates"))
            .append($('<th class="width20-column"/>').text("Deadline"))
            .append($('<th/>').text("  "))
            ;
            
            
var table_pending = $('<table class="table " id="">').appendTo($('#table_pending'));
            
            $('<thead>').appendTo(table_pending)
  			.append($('<th class="width20-column"/>').text("Code"))        
            .append($('<th class="width30-column"/>').text("Module"))         
            .append($('<th class="width20-column"/>').text("Year"))
            .append($('<th class="width30-column"/>').text("Applied Candidates"))
            .append($('<th class="width20-column"/>').text("Deadline"))
            .append($('<th/>').text("  "))
            ;
            
var table_allocated = $('<table class="table " id="">').appendTo($('#table_allocated'));
            
            $('<thead>').appendTo(table_allocated)
  			.append($('<th class="width20-column"/>').text("Code"))        
            .append($('<th class="width30-column"/>').text("Module"))         
            .append($('<th class="width20-column"/>').text("Year"))
            .append($('<th class="width20-column"/>').text("Deadline"))
            .append($('<th/>').text("  "))

            ;         
           
            $(data).each(function(i, data) {
            	var deadline = new Date(data.application_deadline);
            	var Date_now=Date.now();
            	var result = "";
                result += deadline.format("ddd dd mmm yyyy");
               
                var candidates="123"
                var modulecode=data.modulecode;
                var status=data.status_of_allocation;
                var time=data.time.split(",")
                var time_str;
              //  alert(status);
               $.each(time, function(key, value) {
            	  
            	   if(key==0)
            	   time_str=value+"<br>";
            	   else
            		   time_str+=value+"<br>"
    	 
    	}); 
                if(Date_now<deadline&&status=="0"){
                	
                	
                	
                	
                	$('<tr'+' id="tr'+data.modulecode+data.year+'">').appendTo(table)
                    .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
                    .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))          	                                
                    .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                    .append($('<td id='+"sumapplied"+data.modulecode+'>').text(SumCandidatesApplied(data.modulecode+data.year)))
                    .append($('<td name='+data.modulecode+'>').text(result))
                    .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Detail'>"+"<input type='button' class='btn btn-third btnAdd Edit_btn' style='color:Green;' id='"+"Edit_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Edit'>"+"<input type='button' class='btn btn-third btnAdd Delete_btn' style='color:Red;' id='"+"Delete_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete'>"))

            	 ;
               	
               	
                }
                else

                {
                	if(Date_now>deadline&&status=="0"){
                    	
                    	
                    	
                    	
                    	
                    	$('<tr'+' id="'+"tr"+data.modulecode+data.year+'">').appendTo(table_pending)
    	                 
                        .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
                        .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))          	                                
                        .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                         .append($('<td id='+"sumapplied"+data.modulecode+'>').text(SumCandidatesApplied(data.modulecode+data.year)))
                        .append($('<td name='+data.modulecode+'>').text(result))
                        .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"|"+data.year+"' value='Detail'>"+"<input type='button' class='btn btn-third btnAdd Allocation_btn' style='color:Green;' id='"+"Allocation_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Allocation'>"+"<input type='button' class='btn btn-third btnAdd Delete_btn' style='color:Red;' id='"+"Delete_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete'>"))
                     
                	 ;
                    }
                	

                	
                	if(status=="1"){ //has been allocated
                	var chosen_candidates;
                	
                    $.ajax({
                        type: "POST",
                         url: "/TA_Gradle/TA/find/allocated/candidates/byyear/module",
                         data:{modulecode:data.modulecode,year:data.year},
                         dataType: "Json", 
                         success: function(data1){
                        	 $('<tr>').appendTo(table_allocated)
         	                
                             .append($('<td name='+data.modulecode+'>').text(data.modulecode))                          
                             .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))
                             .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                             .append($('<td name='+data.modulecode+'>').text(result))
                             .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_allocated_btn' style='color:Blue;' id='"+"detail_allocated"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Detail'>"+"<input type='button' class='btn btn-third btnAdd apply_btn' id='"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Edit' disabled>"+"<input type='button' class='btn btn-third btnAdd apply_btn' id='"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete' disabled>"))
                             ;  
                     	
                     
                     
                     
                    },
                    error: function(){alert("failure");}
                    });

                   // alert(chosen_candidates);
                		
                
                
                }	
                	
                }
            	

            });
            
            
       
            
            
      
    	
    	
    	
},
    error: function (error) {alert('error: ' + error);},

});        




$(document).on("click",".Delete_btn", function() {
 	   	var delete_btn_id=this.id.split("Delete_btn")[1].split("|");
 	   var modulecode=delete_btn_id[0];
 	   var year_str=delete_btn_id[1];
 	  var frame=("#"+"tr"+modulecode+year_str);
 
 		//alert(frame.id);
 		 var confirmation = confirm('Are you sure you want to delete the application?');
         if (confirmation == true) {
        	 
      		 $.ajax({
      	        type: "POST",
      	         url: "/TA_Gradle/TA/delete/vacancy",
      	         data:{modulecode:modulecode,year_str:year_str},
      	         success: function(data){
      
      	                 if(data==true){    	                 
      	                	$(frame).remove();	             
      	             }
      	            
      	             else{
      	                  alert("please refresh the page and delete it again"); 	                 
      	             }           
      	    },
      	    error: function(){alert("failure");}
      	    });         
         }

 		
 		
        
});
$(document).on("click",".Edit_btn", function() {
	   	var modulecode=this.id.split("Edit_btn")[1].split("|")[0];
		var year=this.id.split("Edit_btn")[1].split("|")[1];
		var myWindow = window.open("edit?modulecode="+modulecode+"&&year="+year+"&&professor="+"${candidates.get().id}", "MsgWindow", "width=800,height=800");
		
    
});

$(document).on("click",".Allocation_btn", function() {
   	var modulecode=this.id.split("Allocation_btn")[1].split("|")[0];
	var year=this.id.split("Allocation_btn")[1].split("|")[1];
//	alert(modulecode+" "+year);
 //	$(this.id).attr("disabled", true);
	var myWindow = window.open("professor/allocation?modulecode="+modulecode+"&&year="+year, "MsgWindow", "width=900,height=800");
	

});

function SumCandidatesApplied(modulecode){
	var aa;
    $.ajax({
        type: "POST",
         url: "/TA_Gradle/TA/CountApplied",
         data:{id:modulecode}, 
         success: function(data){
        	 aa=data;   	 
    },
   
    error: function(){alert("failure");},
    async:false
    
    });
	
	
	return aa;
	
}

});
</script>





<div id="show_detail_dialog"> 

<div id="detail_div3" ></div>
<br> 
<div id="detail_div" ></div>
<br>
<div id="detail_div2" ></div>

</div>

<div id="dialog-confirm"> 
<div id="detail_div33" ></div>
<br>
<div id="detail_div00" ></div>
<br>

<div id="detail_div11" ></div>
<br> 
<div id="detail_div22" ></div>


</div>

<script>//detail
$(document).on("click",".Detail_btn", function() {
	var array1=this.id.split("detail")[1].split("|");
	var modulecode=array1[0];
	   var year=array1[1];
	$("#show_detail_dialog").dialog({
	     resizable: true,
	     modal: true,
	     title: $("#"+"title"+modulecode+year).html(),
	     height: 600,
	     width: 800,
	    minWidth: 700,
	   minHeight: 500,
	  close: function(e, ui) {
	 	

			$("#detail_div").empty();
			$("#detail_div2").empty();
			$("#detail_div3").empty();
	 },
	   overlay: {
	       opacity: 0.5,
	       background: "black"
	       },
	     open: function (e, ui) {
	    	 var time;
	    	 var skill;
	    	 var ide;
	    	 var subject;
  	    	var masterphdonly;
	    	   $.ajax({
	 	    	    url:  "/TA_Gradle/TA/find/module",
	 	    	    type: "Post",             
	 	    	  data:{year:year,modulecode:modulecode},
	 	    	    success: function( data ) {
	 	    	    	//alert(data.masterphdonly);
	 	    	    	if(data.masterphdonly==1) masterphdonly="Master&PhD only"; 
	 	    	    	else masterphdonly="All candidates";
	 	            	
	 	    	    	aa=data.time.split(",");
	 	    	    	bb=data.skills.split(",");
	 	    	    	cc=data.iDE.split(",");
	 	    	    	
	 	    	    	dd=data.subject.split(",");
	 	    	    	$(aa).each(function(i, data){
	 	    	    		if(i>0)time+=data+"<br>"
	 	    	    		else time=data+"<br>";
	 	    	    	});
	 	    	    	$(bb).each(function(i, data){
	 	    	    		if(i>0)skill+=data+"<br>"
	 	    	    		else skill=data+"<br>";
	 	    	    	});
	 	    	    	$(cc).each(function(i, data){
	 	    	    		if(i>0)ide+=data+"<br>"
	 	    	    		else ide=data+"<br>";
	 	    	    	});
	 	    	    	$(dd).each(function(i, data){
	 	    	    		if(i>0)subject+=data+"<br>"
	 	    	    		else subject=data+"<br>";
	 	    	    	});
	 	    	    	
	 	    	   var detail = $('<table class="table" id="">').appendTo($('#detail_div')); 	               

	 	    	   		$('<thead>').appendTo(detail)
	 	    	   		.append($('<th/>').text("Applicable Candidates"))
	 	               .append($('<th/>').text("Total Hours"))
	 	               .append($('<th/>').text("Number of TAs"))
	 	               
	 	               
	 	               ;            
	 	    	         
	 	    	   	
	 	    	   		
	 	    	   		
	 	              var detail2 = $('<table class="table">').appendTo($('#detail_div2')); 
	 	               $('<thead>').appendTo(detail2)
	 	              
	 	               .append($('<th/>').text("Description"))	
	 	                .append($('<th/>').text("Applicable department"))
	 	               ;        

	 	              var detail3 = $('<table class="table">').appendTo($('#detail_div3')); 	               

	 	    	   		$('<thead>').appendTo(detail3)	
	 	    	   		.append($('<th/>').text("Time Slots"))
	 	    	   		.append($('<th >').text("Required Skills"))
	 	    	   		 .append($('<th >').text("Required Tools"))
	 	               
	 	               ;   
	 	    	   		
	 	              $('<tbody>').appendTo(detail)
	 	             .append($('<td>').text(masterphdonly)) 
                      .append($('<td>').text(data.total_hours)) 
                      .append($('<td>').text(data.quntities_TA))
                      ;
                      
              	
	 	             $('<tbody>').appendTo(detail2) 
                    
                     .append($('<td  name='+data.modulecode+'>').text(data.description))
                     .append($('<td  name='+data.modulecode+'>').html(subject));
                 
	 	               
	 	            $('<tbody>').appendTo(detail3)
	 	            .append($('<td id='+"time"+data.modulecode+'>').html(time))
	 	            .append($('<td name='+data.modulecode+'>').html(skill))
	 	             .append($('<td name='+data.modulecode+'>').html(ide));
	 	            
	 	               
	 		
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
		
		$("#detail_div").empty();
		$("#detail_div2").empty();
		$("#detail_div3").empty();
	}
}


</script>
<script>//detail allocation
$(document).on("click",".Detail_allocated_btn", function() {
	
	
	var array1=this.id.split("detail_allocated")[1].split("|");
	var modulecode=array1[0];
	   var year=array1[1];
	   
	$("#dialog-confirm").dialog({
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
	 	    	    	var module_code_year=data.title+" "+data.year;

	 	    	    	var masterphdonly;
	 	    	    	if(data.masterphdonly==1) masterphdonly="Master&PhD only"; 
	 	    	    	else masterphdonly="All candidates";
	 	            	
	 	    	    	aa=data.time.split(",");
	 	    	    	bb=data.skills.split(",");
	 	    	    	cc=data.iDE.split(",");
	 	    	    	//alert(data.subject);
	 	    	    	dd=data.subject.split(",");
	 	    	    	
	 	    	    	$(aa).each(function(i, data){
	 	    	    		if(i>0)time+=data+"<br>"
	 	    	    		else time=data+"<br>";
	 	    	    	});
	 	    	    	$(bb).each(function(i, data){
	 	    	    		if(i>0)skill+=data+"<br>"
	 	    	    		else skill=data+"<br>";
	 	    	    	});
	 	    	    	$(cc).each(function(i, data){
	 	    	    		if(i>0)ide+=data+"<br>"
	 	    	    		else ide=data+"<br>";
	 	    	    	});
	 	    	    	$(dd).each(function(i, data){
	 	    	    		if(i>0)subject+=data+"<br>"
	 	    	    		else subject=data+"<br>";
	 	    	    	});
    	
	 	    	   var detail = $('<table class="table" id="">').appendTo($('#detail_div22')); 	               

	 	    	   		$('<thead>').appendTo(detail)
	 	    	   		.append($('<th/>').text("Applicable Candidates"))
	 	               .append($('<th/>').text("Total Hours"))
	 	               .append($('<th/>').text("Number of TAs"))
	 	               
	 	               
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
                      .append($('<td>').text(data.quntities_TA))
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
                           		//alert(data.chosen_candidates);
                           		 if(i>0) chosen_candidates+=data.candidates.id+" "+"<a style='color:blue;' href='mailto:"+data.candidates.email+"?subject=Module:"+module_code_year+" '>"+data.candidates.name+"<a/>"+"<br>";
                           		 else chosen_candidates= data.candidates.id+" "+"<a style='color:blue;' href='mailto:"+data.candidates.email+"?subject=Module:"+module_code_year+"'>"+data.candidates.name+"<a/>"+"<br>";
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



</script>

						</div>
						<!--card-body  -->
 
 
 
          </div>
          <!-- /.card enrol -->	
		<br>
	<!--  <input type="button"class="form-control col-lg-4" id="Candidates_details" value="Candidates details" > -->
			 <div class="card mt-4" id="find_candidates_detail">
 
 <div class="card-body">
<h3 class="card-title">Search for a member</h3>
	<div>						

<div class="form-inline">
<input type="text" class="form-control col-lg-4"  id="search" placeholder="Student ID or Name" required>&#160;&#160;&#160; <a>*Enter space will show all candidates</a><br>
</div>
<br>
<div id="candidate_detail_table_div">

</div>

<br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br>
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
.append($('<th/>').text("Year of university"))
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
            url:  "/TA_Gradle/TA/find/like/candidate",
            type: "POST",
            data: {id:candidates},
            dataType: "Json",								          
        success: function( data ) {

        	if(data==null){alert("Oops! It seems like We don't have the ID in our database");}
        	else{
        	
        		$(data).each(function(index,value){
        			
        			
        			
                	switch(value.yearofuni){
                	case 1: value.yearofuni="Year 1"; break;								                	
                	case 2: value.yearofuni="Year 2";break;				                	
                	case 3:value.yearofuni="Year 3";break;      	
                	case 4:value.yearofuni="Master";break;					                		
                	case 5:value.yearofuni="PhD";break;	
                	case 6:value.yearofuni="Professor";break;	
                	case 7:value.yearofuni="Manager";break;	
                	}
            		 $('<tr class="tr_class">').appendTo(table)
            	        .append($('<td>').text(value.id))
            	        .append($('<td>').text(value.name))  
            	        .append($('<td>').text(value.mobile))
            	        .append($('<td>').html("<a style='color:blue;' href='mailto:"+value.email+"'>"+value.email+"<a/>" ))
            	        .append($('<td>').text(value.subject))       
            	        .append($('<td>').text(value.yearofuni))       
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
			 
			 
			 </div>		
			
			
		</div><!-- /.row -->
		
	</div><!-- /.container -->






	<!-- Bootstrap core JavaScript -->
	<script src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
