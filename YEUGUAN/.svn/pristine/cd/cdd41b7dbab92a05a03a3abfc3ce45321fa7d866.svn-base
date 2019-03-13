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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
* {
  box-sizing: border-box;
}

#search_vacancy_bar {
 background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 50%;
  font-size: 16px;
  padding: 12px 15px 12px 30px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
.table {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

.table th, #myTable td {
  text-align: left;
  padding: 12px;
}

.table tr {
  border-bottom: 1px solid #ddd;
}

.table tr.header, #myTable tr:hover {
  background-color: #F0F0F0;
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
				<a href="/TA_Gradle/TA/default?view=1" class="list-group-item"   id="viewvacancies" >View Applications</a> 
					<a href="/TA_Gradle/TA/default?search=1" class="list-group-item" id="serch_a_candidates">Search Members</a>
					<a href="/TA_Gradle/TA/default?history=1" class="list-group-item" id="serch_a_candidates">Delete History</a>
					<a href="/TA_Gradle/TA/default?CreateSubject=1" class="list-group-item" id="serch_a_candidates">Create Subjects</a>
					<a href="/TA_Gradle/TA/professor/create" class="list-group-item" id="Create_a_vacancy">Open Applications</a>
					<a href="/TA_Gradle/TA/endorsement" class="list-group-item" id="edit_detail">Candidate Evaluation</a> 
					<a href="/TA_Gradle/TA/edit/personal" class="list-group-item" id="edit_detail">Update Manager Detail</a> 

						
				</div>

			</div><!-- /.col-lg-3 the category -->
			 <div class="col-lg-9">
			 
	
<c:choose>
    <c:when test="${status==true}">
 
 			 <div class="card mt-4" id="delete_history">
 
 <div class="card-body">
<h3 class="card-title">Delete History</h3>

<br>
<br>
<br>
<br>


	<div>	
						
<c:choose>
    <c:when test="${!empty history}">
    <br><br><br><br><br>
    <div class="form-inline">
       					<select id="history_value" name="roleName" class="form-control">
					<c:forEach items="${history}" var="history">
						<option value="${history}">${history}</option>
						</c:forEach>
						</select>
						
					<input type="button"  class="btn btn-third " id="delete_histiry_btn" value="Delete &raquo">
 					<img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading" alt="">
						</div>	
				<br><br><br><br>		
    </c:when>    
    <c:otherwise>
     <br>
 <br>
    <div>Once you do the deleting action the data which relates to the chosen year will be erased. </div>
<div style="color:red;">Notice!The action cannot be rolled back</div> 
 <br>
 <br>
 <br>
 <br>
   
      <div>No history has found</div>
    </c:otherwise>
</c:choose>
<br>


</div>

	</div>		 
	</div>		<!-- find candidates details --> 
					
    </c:when>    
    <c:when test="${view==true}">
 
 
 <div class="card mt-4" id="enroll_view_candidates_frame">
 
 <div class="card-body">
<h3 class="card-title">Application </h3>
	<div>		
	<div class="form-inline"><i class="fa w3-xxlarge fa-search"></i>&#160;&#160;
	<input  type="text"  id="search_vacancy_bar" onkeyup="findvacancy()" placeholder="Search by Module Code or Module" title="">
             	</div>			
<div id="table_vacancies_div" ></div>
<br>
<div id="table_allocated" style="display:None;"></div>
</div>

						</div>
						<!--card-body  -->
 
 
 
          </div>

    </c:when>
    <c:when test="${search==true}">
    			 <div class="card mt-4" id="find_candidates_detail">
 
 <div class="card-body">
<h3 class="card-title">Search a member</h3>
	<div>						

<div class="form-inline">
<input type="text" class="form-control col-lg-3"  id="search" placeholder="ID or Name" required>&#160;&#160;&#160; <a>*Enter space will show all members</a><br><br>
</div>
<br>
<div id="candidate_detail_table_div">

</div>


</div>

	</div>		 
	</div>		<!-- find candidates details --> 
    </c:when>
    
    <c:when test="${CreateSubject==true}">
    <div class="card mt-4" id="add_a_subject_div">
 
 <div class="card-body">
<h3 class="card-title">Add Subjects </h3>
<br>
<br>
<br>
<br>
    <p>Dear Manager </p><br><p> Before you add the subject the people (candidates and professors) who belongs to the subject go to the registration</p>
     <br> <br> <br> <br> <br>
     <div  class="form-inline">
            <input type="text" class="findide form-control  col-lg-3"  id="bar_add_subject" placeholder="Subject"> 
            <div id="add_subjects_status"></div>   
             <input type="button" class="btn btn-third btn-md btnAddsubject" id="btnAddsubject" value="Add a Subject &raquo"><br>
         </div>
         <br> <br> <br> <br> <br> <br> <br> <br> <br>
       </div>
       </div>  
    </c:when>
    
</c:choose>				
				
          
          	
          
          
          
          <!-- /.card enrol -->	
<script>	//table


function findvacancy() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("search_vacancy_bar");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("vacancytable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    td1 = tr[i].getElementsByTagName("td")[1];
	    //alert(td1);
	    if (td||td1) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1||td1.innerHTML.toUpperCase().indexOf(filter) >-1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
$(document).ready (function () {
	

	$("#show_pending").click(function(){
		
		$("#table_pending").toggle();
		
		
	});
		$("#show_allocated").click(function(){
			
			$("#table_allocated").toggle();
			
			
		});
	
	
	
	
	var professor="${candidates.get().id}";
	var view_status="${view}"+"nodata";
	
if(view_status=="truenodata")
	{
$.ajax({
    url:  "/TA_Gradle/TA/findallvacancies",
    type: "Get",           
    dataType: "Json",         
    success: function( data ) { 	
    	
    	
    	
            var table = $('<table class="table " id="vacancytable">').appendTo($('#table_vacancies_div'));
            
            $('<thead>').appendTo(table)
        	.append($('<th class="width20-column"/>').text("Code"))        
            .append($('<th class="width30-column"/>').text("Module")) 
            .append($('<th class="width20-column"/>').text("Professor"))
            .append($('<th class="width20-column"/>').text("Year"))
            .append($('<th class="width20-column"/>').text("Deadline"))
            .append($('<th class="width20-column"/>').text("Department"))
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
              var str_subject=data.subject.split(",");
              
               $.each(time, function(key, value) {
            	  
            	   if(key==0)
            	   time_str=value+"<br>";
            	   else
            		   time_str+=value+"<br>"
    	 
    	}); 
               
               
               $.each(str_subject, function(key, value) {
             	  
            	   if(key==0)
            		   data.subject=value+",<br>";
            	   else
            		   data.subject+=value+",<br>"
    	 
    	}); 
               
               
                if(Date_now<deadline&&status=="0"){
                	
                	
                	
                	
                	
                	$('<tr'+' id="tr'+data.modulecode+data.year+'">').appendTo(table)
	                 
                    .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
                    .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))
                    .append($('<td id='+"title"+data.modulecode+'>').text(data.professor.name))
                    .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                    .append($('<td name='+data.modulecode+'>').text(result))
                    .append($('<td name='+data.modulecode+'>').html(data.subject))
                    .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Detail'><br><br>"+"<input type='button' class='btn btn-third btnAdd Edit_btn' style='color:Green;' id='"+"Edit_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Edit'><br><br>"+"<input type='button' class='btn btn-third btnAdd Delete_btn' style='color:Red;' id='"+"Delete_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete'><br>"))

            	 ;
               	
               	
                }
                else

                {
                	if(Date_now>deadline&&status=="0"){
                    	
                    	
                    	
                    	
                    	
                    	$('<tr id="tr'+data.modulecode+data.year+'">').appendTo(table)
    	                 
                        .append($('<td id='+"modulecode"+data.modulecode+'>').text(data.modulecode))
                        .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))  
                        .append($('<td id='+"title"+data.modulecode+'>').text(data.professor.name))
                        .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                        .append($('<td name='+data.modulecode+'>').text(result))
                        .append($('<td name='+data.modulecode+'>').html(data.subject))
                        .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Status'><br><br>"+"<input type='button' class='btn btn-third btnAdd Allocation_btn' style='color:Brown;' id='"+"Allocation_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Allocation'><br><br>"+"<input type='button' class='btn btn-third btnAdd Edit_btn' style='color:Green;' id='"+"Edit_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Edit'><br><br>"+"<input type='button' class='btn btn-third btnAdd Delete_btn' style='color:Red;' id='"+"Delete_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete'><br>"))
                     
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
                        	 $('<tr id="tr'+data.modulecode+data.year+'">').appendTo(table)
         	                
                             .append($('<td name='+data.modulecode+'>').text(data.modulecode))                          
                             .append($('<td id='+"title"+data.modulecode+data.year+'>').text(data.title))
                             .append($('<td id='+"title"+data.modulecode+'>').text(data.professor.name))
                             .append($('<td id='+"year"+data.modulecode+'>').text(data.year))
                             .append($('<td name='+data.modulecode+'>').text(result))
                             .append($('<td name='+data.modulecode+'>').html(data.subject))
                             .append($('<td>').html("<input type='button' class='btn btn-third btnAdd Detail_allocated_btn' style='color:Blue;' id='"+"detail"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Detail'><br><br>"+"<input type='button' style='color:Red;' class='btn btn-third btnAdd Allocated_delete_btn' id='Allocated_delete_btn"+data.modulecode+"|"+data.year+"' name='"+data.modulecode+"' value='Delete'><br>"))
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


$(document).on("click",".Delete_btn", function() {
 	   	var delete_btn_id=this.id.split("Delete_btn")[1].split("|");
 	   var modulecode=delete_btn_id[0];
 	   var year_str=delete_btn_id[1];
 	   
 		var frame=("#"+"tr"+modulecode+year_str);
 		 var confirmation = confirm('Are you sure you want to delete this application/s?');
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
	var str_split=this.id.split("Edit_btn")[1].split("|");
	   	var modulecode=str_split[0];
		var year=str_split[1];	
		var myWindow = window.open("edit?modulecode="+modulecode+"&&year="+year+"&&professor="+"${candidates.get().id}", "MsgWindow", "width=800,height=800");
		
    
});

$(document).on("click",".Allocation_btn", function() {
	var str_split=this.id.split("Allocation_btn")[1].split("|");
   	var modulecode=str_split[0];
	var year=str_split[1];
	var myWindow = window.open("professor/allocation?modulecode="+modulecode+"&&year="+year, "MsgWindow", "width=900,height=800");
	

});


});
</script>

<script>//delete allocated data
$(document).ready (function () {
	
$(document).on("click",".Allocated_delete_btn", function() {
	var confirmation = confirm('The module has been allocated Teaching Assistants!! Are you sure you want to delete this record?');
    if (confirmation == true) {
      
    	var confirmation1 = confirm('It is just a double check. Are you sure?');
        if (confirmation1 == true) 
    	{
    	var delete_btn_id=this.id.split("Allocated_delete_btn")[1].split("|");
  	   var modulecode=delete_btn_id[0];
  	   var year_str=delete_btn_id[1];
  	   
  		var frame=("#"+"tr"+modulecode+year_str);
      		 $.ajax({
       	        type: "POST",
       	         url: "/TA_Gradle/TA/delete/vacancy/",
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
    	}
    
});

});


</script>



<div id="show_detail_dialog">
<div id="statusBarDiv"></div> 
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
	   var ValueOfDetail=this.value;
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
	 	            	
	 	    	    	aa=data.time.split(",");
	 	    	    	bb=data.skills.split(",");
	 	    	    	cc=data.iDE.split(",");
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
	 	    	    	
	 	    	    	
	 	    	    	
	 	    	   var detail = $('<table class="table" id="">').appendTo($('#detail_div')); 	               

	 	    	   		$('<thead>').appendTo(detail)
	 	    	   		.append($('<th/>').text("Applicable Candidates"))
	 	               .append($('<th/>').text("Total Hours"))
	 	               .append($('<th/>').text("Number of TAs"))
	 	               
	 	               
	 	               ;            
	 	    	         
	 	              var detail2 = $('<table class="table">').appendTo($('#detail_div2')); 
	 	               $('<thead>').appendTo(detail2)
	 	              
	 	               .append($('<th/>').text("Description"))
	 	               .append($('<th class="width30-column"/>').text("Applied Candidates"))
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
                     .append($('<td  name='+data.modulecode+'>').text(SumCandidatesApplied(data.modulecode+data.year)))
                     ; 
                 
	 	               
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
		$('#statusBarDiv').empty();
		$("#detail_div").empty();
		$("#detail_div2").empty();
		$("#detail_div3").empty();
	}
}
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

</script>
<script>//detail allocation
$(document).on("click",".Detail_allocated_btn", function() {
	var array1=this.id.split("detail")[1].split("|");
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
	 	    	    	


	 	    	    	var masterphdonly;
	 	    	    	if(data.masterphdonly==1) masterphdonly="Master&PhD only"; 
	 	    	    	else masterphdonly="All candidates";
	 	            	
	 	    	    	aa=data.time.split(",");
	 	    	    	bb=data.skills.split(",");
	 	    	    	cc=data.iDE.split(",");
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
    	
	 	    	   var detail = $('<table class="table" id="">').appendTo($('#detail_div22')); 	               

	 	    	   		$('<thead>').appendTo(detail)
	 	    	   		.append($('<th/>').text("Applicable Candidates"))
	 	               .append($('<th/>').text("Total Hours"))
	 	               .append($('<th/>').text("Number of TAs"))
	 	               
	 	               
	 	               ;            
	 	    	         
	 	              var detail2 = $('<table class="table">').appendTo($('#detail_div00')); 
	 	               $('<thead>').appendTo(detail2)
	 	               .append($('<th class="width20-column"/>').text("Description"))	    
	 	               ;        

	 	              var detail3 = $('<table class="table">').appendTo($('#detail_div11')); 	               

	 	    	   		$('<thead>').appendTo(detail3)	
	 	    	   		.append($('<th/>').text("Time Slots"))
	 	    	   		.append($('<th >').text("Required Skills"))
	 	    	   		 .append($('<th >').text("Required Tools"))
	 	               
	 	               ;   
	 	    	   		
	 	    	   	 var detail4 = $('<table class="table">').appendTo($('#detail_div33')); 
	 	               $('<thead>').appendTo(detail4)
	 	              .append($('<th  class="width25-column"/>').text("Teaching Assistants"))    
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
	 	            

	 	             $('<tr/>').appendTo(detail2) 
                    .append($('<td  name='+data.modulecode+'>').text(data.description));
	 	            
	 	            
 	    	    	
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
                           		if(i>0) chosen_candidates+=data.candidates.id+" "+"<a style='color:blue;' href='mailto:"+data.candidates.email+"'>"+data.candidates.name+"<a/>"+"<br>";
                          		 else chosen_candidates= data.candidates.id+" "+"<a style='color:blue;' href='mailto:"+data.candidates.email+"'>"+data.candidates.name+"<a/>"+"<br>";
                          	 });
                           	 
                           	 }
   	 	    	    	 else(chosen_candidates="No candidates are found")
       	 	              
        	 	             $('<tr/>').appendTo(detail4) 
                            .append($('<td>').html(chosen_candidates)); 
                     
                     
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

		<br>
	<!--  <input type="button"class="form-control col-lg-4" id="Candidates_details" value="Candidates details" > -->

	
	

		

<script>//Candidates detail

$(document).ready (function () {
	
/* 	function getParam(param){
		  return new URLSearchParams(window.location.search).get(param);
		}
	if(getParam("search")=='1'){
		$("#find_candidates_detail").show();
		$("#enroll_view_candidates_frame").hide();
		$("#delete_history").hide();
	}
	else if(getParam("history")=='1'){
		$("#find_candidates_detail").hide();
		$("#enroll_view_candidates_frame").hide();
		$("#delete_history").show();
	}
	
	else{
		$("#find_candidates_detail").hide();
		$("#delete_history").hide();
		
	} */
	
	var status_search="${search}"+"nodata";
	
if(status_search="truenodata"){
var table = $('<table class="table " id="table_detail">').appendTo($('#candidate_detail_table_div'));

$('<thead>').appendTo(table)
.append($('<th/>').text("ID"))        
.append($('<th/>').text("NAME"))         
.append($('<th/>').text("Mobile"))
.append($('<th/>').text("Eamil"))
.append($('<th/>').text("Subject"))
.append($('<th/>').text("Year of university"))
;
}


	$("#search").keyup(function(){
		$(".tr_class").empty();
 		var candidates=$("#search").val();
 		
 		if(candidates.length==0)
			{
			$(".tr_class").empty();
			return;
			}
 		if(candidates.trim()=="")candidates="";

 		
 		//alert(candidates);
 		
        $.ajax({
            url:  "/TA_Gradle/TA/find/like/member",
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
                	case 6:value.yearofuni="Professors";break;	
                	case 7:value.yearofuni="Manager";break;	
                	}
            		 $('<tr class="tr_class">').appendTo(table)
            	        .append($('<td>').text(value.id))
            	        .append($('<td>').text(value.name))  
            	        .append($('<td>').text(value.mobile))
            	        .append($('<td>').html("<a style='color:blue;' href='mailto:"+value.email+"'>"+value.email+"<a/>"))
            	        .append($('<td>').text(value.subject))       
            	        .append($('<td>').text(value.yearofuni))
            	        ; 
            		 
            		 
            		
            		
            		
            		
            		
            	});
        		
       
        	 	
        	 	
        	 	
        	 	
        	}
        	
        	
        
        
        
        
        },
            error: function (error) {alert('error: ' + error);},
  
        });		
 		
 		
 		
 		
 		
 		
 		
 		
	}); 



/* $(document).on("click",".Delete_candidate_btn", function() {
	id=this.id.split("Delete_candidate_btn")[1];
	//alert(id);
		 var confirmation = confirm('Are you sure you want to delete the account?');
         if (confirmation == true) {
 	$.ajax({
        url:  "/TA_Gradle/TA/delete/cadidates",
        type: "POST",
        data: {candidates:id},
    success: function( data ) {
    	alert("Sorry to say good bye");
    },
    
        error: function (error) {alert('error: ' + error);},
    });	
	 
         }	
	
});
 */





});
</script>
<script>//delete history

$(document).ready (function () {
	
	$("#delete_histiry_btn").click(function(){
		var value=$("#history_value").val();
		 var confirmation = confirm('Are you sure you want to erase the history of '+value);
	        if (confirmation == true) {
	        	 var confirmation1 = confirm('Are you sure?  Notice:The action can not be rollback');
	        	 if (confirmation1 == true) {
	        		 
	        		 $("#loading").show(); 
	        		 
	        		 
	        		 
	        		 
		$.ajax({
            url:  "/TA_Gradle/TA/delete/history",
            type: "POST",
            data: {year:value},							          
        success: function( data ) {
        	
        	$("#loading").hide();
        	alert("The action has done");
        	location.reload();
        	
        },
            error: function (error) {alert('error: ' + error);},
  
        });
	        	 }
	        }
		
		
		
	});
	
    
		        
});

</script>
<script>//add subjects

$(document).ready (function () {
	
	
	$("#bar_add_subject").change(function(){
		
		$.ajax({
	        type: "POST",
	         url: "/TA_Gradle/TA/find/subjects",
	         data:{subject:this.value.trim()},
	         success: function(data){
	                 if(data==false){
	                 
	                	 $("#add_subjects_status").html("&#10008");
	                 $("#btnAddsubject").prop('disabled', true);
	             
	             }
	            
	             else{
	            	 $("#add_subjects_status").html("&#x2714");
	                    $("#btnAddsubject").prop('disabled', false);
	                 
	             }           
	    },
	    error: function(){alert("failure");}
	    });	
		
	});

	
	
	
	$("#btnAddsubject").click(function(){
		var subject=$("#bar_add_subject").val().trim();
		
		
		if(subject.trim()==''){
			

			alert("Do not be naughty Please enter the subject");
			return false;
		}
		var confirmation=confirm("Is the name of the subject typed right? Subjects can not be deleted after saving it");
		if(confirmation==true){
		
			$.ajax({
	            url:  "/TA_Gradle/TA/save/subjects",
	            type: "POST",
	            data: {subject:subject},							          
	        success: function( data ) {
	        	if(data==true)
	        	alert("They can now register as a member!!");
	        	else
	        		alert("Oops It seems the subject has been added before");	
	        },
	            error: function (error) {alert('error: ' + error);},
	  
	        });
		
		
		
		
		}
		
		
		
	});
	
	
	
});


</script>

			 
			 
			 </div>		
			
			
		</div><!-- /.row -->
		
	</div><!-- /.container -->






	<!-- Bootstrap core JavaScript -->
	<script src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
