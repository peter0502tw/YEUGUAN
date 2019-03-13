<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

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
	
<link rel="stylesheet"
	href="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/star.css">
		
	
	
	
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.js"></script>
<script
	src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/date.format.js"></script>
<script
	src="https://cdn.jsdelivr.net/underscorejs/1.8.3/underscore-min.js"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<style style="text/css">

	/* Define the hover highlight color for the table row */
    .hoverTable tbody:hover {
          background-color: #A9A9A9;
    }

.button {
  border-radius: 4px;
  background-color: #4CAF50;
  border: none;
  color: #FFFFFF;
  text-align: center;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}   



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


 .popover-all {
	  position: absolute;
	  top: 0;
	  left: 0;
	  z-index: 1010;
	  display: none;
	  padding: 5px;
	  
	}
	.popover-all.bottom {
	  margin-top: 5px ;
	}
	
	.popover-all.bottom .popover-arrow {
	  top: 0;
	  left: 50%;
	  margin-left: -5px ;
	  border-left: 5px solid transparent ;
	  border-right: 5px solid transparent ;
	  border-bottom: 5px solid #000000 ;
	}
	
	.popover-all .popover-arrow {
	  position: absolute;
	  width: 0;
	  height: 0;
	}
	
	.popover-inner {
	  padding: 3px;
	  width: 200px;
	  overflow: hidden;
	  background: #000000;
	  background: rgba(0, 0, 0, 0.8);
	  -webkit-border-radius: 6px;
	  -moz-border-radius: 6px;
	  border-radius: 6px;
	  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	}
	.popover-title {
	  padding: 8px 14px;
	  margin: 0;
	  font-size: 14px;
	  font-weight: normal;
	  line-height: 18px;
	  background-color: #f7f7f7;
	  border-bottom: 1px solid #ebebeb;
	  -webkit-border-radius: 5px 5px 0 0;
	     -moz-border-radius: 5px 5px 0 0;
	          border-radius: 5px 5px 0 0;
	
	}
	
	.popover-content {
	  padding: 9px 14px;
	  background-color: #ffffff;
	  -webkit-border-radius: 0 0 3px 3px;
	  -moz-border-radius: 0 0 3px 3px;
	  border-radius: 0 0 3px 3px;
	  -webkit-background-clip: padding-box;
	  -moz-background-clip: padding-box;
	  background-clip: padding-box;
	}
 



</style>

</head>

<body>
	<!-- Page Content -->
	<div class="container">

		<div class="row">


			<div class="col-lg-9">



<c:if test="${unauthrorised==false}">
				<div style="display: yes;" class="card mt-4" id="registrationdiv">


					<div class="card-body">

						<h3 class="card-title" id="modulecode">${module.get().modulecode}</h3>

						<br>
						<h3 id="moduleyear">${module.get().year}</h3>
						<br>
						<label>Number of Teaching Assistants needed</label>
						<p id="moduleyear">${module.get().getQuntities_TA()}</p>
						
						<div id="status_allocation">
<h2><font size="3">Available Candidate</font></h2>
<div class="form-inline">
<input type="text" class="form-control col-lg-2"  id="search_candidates" placeholder="Student ID" required>
 <a> &#160;&#160;&#160;</a>
   <input type="submit" class="form-control btn btn-secondary col-lg-3" id="add_candidates" value="Add candidates&raquo"/>
</div>&#160;&#160;
<div class="card mt-4" id="REcomen_div">
<div class="card-body">
<div  class="form-inline">
<p>Recommended candidates</p>&#160;&#160;

 <p><input type="checkbox" class="form-control" id="unallocated_student" />Unallocated students First</p>    
 </div>
 <p>The list is generated by ranking candidates' capability</p>
 <p>Please click ID to add a candidate to the list</p>
 <div id="Recommended_candi_div"></div>
<br><br>
<label>Chosen Candidates:</label>
<br>
<a><font size="2">&#8727;A candidate has applied more than 3 modules, then &#9888; will appear next to her/his name</font></a><br>
<a><font size="2">&#8727;A candidate has applied an application created by other professors also he/she is being interviewed by the professor and the module overlaps with your module then &#128293; will appear</font></a>
<br>
<br>

<br>
<br>
<div id="chosen_candidates">

</div>
</div>
</div>
<br><br>


<button class="button"  id="tem_btn"><span>Save temporary list</span></button>
<a data-toggle="popover" title="what is this?" data-content="By saving a temporary list you can interview candidates before allocating Teaching Assistants meanwhile the list will be used for detecting if there are other professors interwiewing the canididates in your list when the candidate has applied two or more overlapping modules  ">What is this?</a>
<br>
<div id="send_email"></div>
<br><button class="button"  id="Assign_btn"><span>Assign </span></button>
<img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading" alt="">

</div>


<a id="login_status"></a>
 
<script type="text/javascript">//find candidates //redirect if unauthorised
							$(document).ready(function() {
								
								
								if("${unauthrorised}"==true)
								{
									
									alert("Unauthroised");
									window.close();
								}
								
								$('[data-toggle="popover"]').popover();   
								var modulecode="${module.get().modulecode}";
								var moduleyear="${module.get().year}";
								
					            $("#search_candidates").autocomplete({
					                source: function(request, response) {     
					                }
					            }); 						
								
								
							 	$("#search_candidates").keyup(function(){
							 		var candidates=$("#search_candidates").val();
							 		if(candidates=="")candidates=" ";
							 		$("#search_candidates").autocomplete({
									    source: function(request, response) {
									        $.ajax({
									            url:  "/TA_Gradle/TA/find/registration/candidate/noconflict",
									            type: "POST",
									            data: {candidates:candidates,year:moduleyear,modulecode:modulecode},
									            dataType: "Json",								          
								            success: function( data ) {							                
									                response( $.map( data, function( item ) {								                	
									                	switch(item.yearofuni){
									                	case 1: item.yearofuni="Year 1"; break;								                	
									                	case 2: item.yearofuni="Year 2";break;				                	
									                	case 3:item.yearofuni="Year 3";break;      	
									                	case 4:item.yearofuni="Master";break;					                		
									                	case 5:item.yearofuni="PhD";break;		
									                	}
									                	var lable_item=item.id+" "+item.name+" ----"+item.yearofuni								                	
									                return {
									                    label:lable_item,
									                    value: item.id+","+item.name,							                    
									                }
									                }));
									        },
									            error: function (error) {alert('error: ' + error);},
									  
									        });
									        
									        
									    }
									});
								}); 
							
							});//document ready
						</script>
<script>//hide the application when the process has been done
$(document).ready(function() {
	
	$.ajax({
        url:  "/TA_Gradle/TA/find/module",
        type: "POST",
        data: {modulecode:"${module.get().modulecode}",year:"${module.get().year}"},							          
    success: function( data ) {
    	
    	if(data.status_of_allocation=="1"){
		$("#status_allocation").hide();
	alert("You have just done the action");
	s}
    },
    
        error: function (error) {alert('error: ' + error);},
        
    });	
	
	
	
});
</script>
<script type="text/javascript">//show suggestion
$(document).ready(function() {
	var candidate_list,candidate_list_first;
	var moduleid="${module.get().modulecode}"+"${module.get().year}";

    	var table = $('<table class="table table_customised hoverTable" id="table_customised">').appendTo($('#Recommended_candi_div'));						  
		
		$('<thead><tr>').appendTo(table)
    	.append($('<th/>').text("ID"))     
    	.append($('<th/>').text("Name")) 
        .append($('<th/>').text("Detail"))        
         .append($('<th/>').text("Rating"))  
         .append($('<th/>').text("CV"))
        ;

		$.ajax({
	        url:  "/TA_Gradle/TA/suitable/candidates/list",
	        type: "POST",
	        data: {moduleid:moduleid},
	        dataType: "Json",								          
	    success: function( data ) {
	   	 $(data).each(function(index,data) {
		 
	   		
					 $('<tbody'+'  id='+"table"+data.id+'><tr>').appendTo(table)
				        .append($('<td class="row_candidates" id='+"candidates"+data.id+'>').text(data.id))
				        .append($('<td id='+"name"+data.id+'>').text(data.name))   
				        .append($('<td>').html('<input type="button"  class="btn btn-third detail_btn " id="detail'+data.id+'" value="Detail &raquo"><br>'))
				       .append($('<td>').html('<a id="show_endorse'+data.id+'"  class="check_value" data-title="Evaluation" data-toggle="clickover" data-placement="right">click</a>'))
				        .append($('<td>').html(getCV(data.cv,data.id)))
				        
				        ; 

			 });
	    },
	        error: function (error) {alert('error: ' + error);},
	       // async:false

	    });

	$('#unallocated_student').change(function(){
		$('#Recommended_candi_div').empty();
	    if($(this).is(':checked')) {
	    	
	    	var table = $('<table class="table hoverTable table_customised" id="table_customised">').appendTo($('#Recommended_candi_div'));						  
			
	    	$('<thead><tr>').appendTo(table)
	    	.append($('<th/>').text("ID"))  
	    	.append($('<th/>').text("Name")) 
	        .append($('<th/>').text("Detail"))        
        	.append($('<th/>').text("Rating"))  
        	.append($('<th/>').text("CV"))
	        ;
			
			$.ajax({
		        url:  "/TA_Gradle/TA/find/unallocated/first",
		        type: "POST",
		        data: {moduleid:moduleid},
		        dataType: "Json",								          
		    success: function( data ) {	

				 $(data).each(function(key,value) {
					 
					 $(value).each(function(index,data) {
					
						 $('<tbody'+'  id='+"table"+data.id+'><tr>').appendTo(table)
					        .append($('<td class="row_candidates" id='+"candidates"+data.id+'>').text(data.id))
					        .append($('<td id='+"name"+data.id+'>').text(data.name))   
					        .append($('<td>').html('<input type="button"  class="btn btn-third detail_btn " id="detail'+data.id+'" value="Detail &raquo"><br>'))
					       .append($('<td>').html('<a id="show_endorse'+data.id+'"  class="check_value" data-title="Evaluation" data-toggle="clickover" data-placement="right">click</a>'))
					        .append($('<td>').html(getCV(data.cv,data.id)))
					        
					        ; 

					 });
						 });
			    },
			        error: function (error) {alert('error: ' + error);},
			       // async:false
			    });
			
			
			

	    } else {
	    	var table = $('<table class="table hoverTable table_customised" id="table_customised">').appendTo($('#Recommended_candi_div'));						  
			
			$('<thead><tr>').appendTo(table)
	    	.append($('<th/>').text("ID"))  
	    	.append($('<th/>').text("Name")) 
	        .append($('<th/>').text("Detail"))         
        	.append($('<th/>').text("Rating"))
        	.append($('<th/>').text("CV"))
	        ;

			
			
			$.ajax({
		        url:  "/TA_Gradle/TA/suitable/candidates/list",
		        type: "POST",
		        data: {moduleid:moduleid},
		        dataType: "Json",								          
		    success: function( data ) {	

				 $(data).each(function(index,data) {
							// alert(id);
					 $('<tbody'+'  id='+"table"+data.id+'><tr>').appendTo(table)
				        .append($('<td class="row_candidates" id='+"candidates"+data.id+'>').text(data.id))
				        .append($('<td id='+"name"+data.id+'>').text(data.name))   
				        .append($('<td>').html('<input type="button"  class="btn btn-third detail_btn " id="detail'+data.id+'" value="Detail &raquo"><br>'))
				       .append($('<td>').html('<a id="show_endorse'+data.id+'"  class="check_value" data-title="Evaluation" data-toggle="clickover" data-placement="right">click</a>'))
				        .append($('<td>').html(getCV(data.cv,data.id)))
				        
				        ; 

				 
				 });
		    },
		        error: function (error) {alert('error: ' + error);},
		        //async:false
		    });
			
			
	    
	    }

	});//$('#unallocated_student').change(function(){


		function getCV(status,id){

		 var tick;
		 if(status==true)
			 tick="<a href='/TA_Gradle/TA/Download/CV/"+id+"' id='CV"+id+"'>&#9745;</a>";
			 else
			tick="<a>No history</a>"; 
			return tick;	    
		}
		
		
		
		
		
		
});
							
							
</script>
<script>//stars
$(document).ready(function() {
	

/* 	$(document).on("mouseover",".check_value", function() {

	var elem = '<button id="close-popover" data-toggle="clickover" class="btn btn-small btn-primary pull-right" onclick="$(&quot;.check_value&quot;).popover(&quot;hide&quot;);">Close please!</button>';



	$('.check_value').popover({animation:true, content:elem, html:true});



	}); */
	
	
	
	 $(document).on("mouseover",".check_value", function() {
		 var id=this.id.split("show_endorse")[1];
		 var btnid=this.id;
  		  $.ajax({
		        url:  "/TA_Gradle/TA/find/endorsement",
		        type: "POST",
		        data: {candidates:id},
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
		    		});

		    	
		    		
		    		 elem = '<p>Attitude</p>'+stars_array[0]+'<br>'+'<p>Problem Solving</p>'+stars_array[1]+'<br>'+'<p>Punctuality</p>'+stars_array[2]+'<br>'+'<p>Cooperation</p>'+stars_array[3]+'<br>'+'<p>The Candidate has been evaluated by</p>'+data.times+' professors';
					//alert(stars_array[0]);
		    		 //alert("has");

		    		$("#"+btnid).popover({animation:true,title:id, content:elem, html:true});
		    		
		    }
		    	else{
		    		
		    	//alert("no");
					 elem = 'No data can be found in our database<br>';

			    		$("#"+btnid).popover({animation:true,title:id, content:elem, html:true});
		    	
		    	}
		    	
		    },
		        error: function (error) {alert('error: ' + error);},
		       // async:false
		    });  
		 
		 
		 
		 
		 
		 

	 
	 });
	 
});


</script>
<script type="text/javascript">//choose
$(document).ready(function() {
	 $(document).on("click",".row_candidates", function() {		
		var aa =this.id.split("candidates");
		var id=aa[1];
		var name=$("#"+"name"+id).text();
		var status;
		$(".chosen_candidates_list").each(function(){
		
			if(this.id.split("chosen_candidates_list")[1]==id)status=true;
		});
			if(status==true) alert("Perhaps you really like him/her but you have chosen the candidate");
			else		
				{
				 $.ajax({
		 		        url:  "/TA_Gradle/TA/check/interview/overlap/add",
		 		        type: "POST",
		 		        data: {candidates:id,modulecode:"${module.get().modulecode}",year:"${module.get().year}"},							          
		 		    success: function( data ) {
		 		    var exclamtion_mark=" ";
		 		 	var no_smile=" ";
		 		    var status;
		 		 //  alert(data[data.length-1]);
		 		    if(data[data.length-1]>3)	{//is applying more than 3 modules
		 		    	exclamtion_mark="&#9888";
		 		    
		 		    	//$("#chosen_candidates").append("<a value='&#33'></a>");
		 		    }
		 		    if(data.length>1)//someone is interviewing him/her
		 		    	
		 		    	no_smile="&#128293";
		 		    	//$("#chosen_candidates").append("<a>&#9785</a>");
		 		  // alert(data[data.length-1]+" "+data.length);
		 		   
		 		  $("#chosen_candidates").append("<input type='button' class='btn btn-third chosen_candidates_list ' id='chosen_candidates_list"+id+"' value='"+" "+name+exclamtion_mark+no_smile+"'>&#160;");
		 		    },
		 	        error: function (error) {alert('error: ' + error);},

		 	    });

				}
		
	 });
	 $(document).on("click","#add_candidates", function() {
		 
		if($("#search_candidates").val().trim()=='')
			{
	alert("Don't be naughty Please enter the ID");
			return false;
	 
			}
		var id=$("#search_candidates").val().split(",");
		
		var status;
		$(".chosen_candidates_list").each(function(){
			if(this.id.split("chosen_candidates_list")[1]==id[0])status=true;
		});
		if(status==true) alert("Perhaps you really like him/her but you have chosen the candidate");
		else 
		
			 $.ajax({
 		        url:  "/TA_Gradle/TA/check/enrol/overlap",
 		        type: "POST",
 		        data: {candidates:id[0],modulecode:"${module.get().modulecode}",year:"${module.get().year}"},							          
 		    success: function( data ) {
 		    	var exclamtion_mark=" ";
	 		 	var no_smile=" ";	
 		    var status;
 		
 		    if(data[data.length-1]>2)
 		    	exclamtion_mark="&#9888"
 		    if(data.length>1)
 		    	no_smile="&#128293";
 		    //	alert(data[data.length-1]+" "+data.length);
 		   $("#chosen_candidates").append("<input type='button' class='btn btn-third chosen_candidates_list ' id='chosen_candidates_list"+id[0]+"' value='"+id[1]+exclamtion_mark+no_smile+"'>");
 		 },
 	        error: function (error) {alert('error: ' + error);},

 	    });
			
		
	});
	
    $(document).on("click",".chosen_candidates_list", function() {
        var confirmation = confirm('Are you sure you want to remove the clever candidate from the list?');
        if (confirmation == true) {
          $(this).closest(".chosen_candidates_list").remove();
          
      	if($(".chosen_candidates_list").length>0){
			
			if(!$("#send_email_btn").length)
				 $("#send_email").append('<button class="button"  id="send_email_btn"><span>Send an Email</span></button><br>');
			}
			else if($(".chosen_candidates_list").length==0)
				{
				$("#send_email").empty();
				}
        }
    });
	
	
    
    
   // <button class="button"  id="tem_btn"><span>Save temporary list</span></button>
    

    
    
});
</script>
<script type="text/javascript">//save the temperary
$(document).ready(function() {
	var professor="${registration.get().id}";
	$("#tem_btn").click(function(){
		var modulecode="${module.get().modulecode}",year="${module.get().year}";
		
		
		
		if($(".chosen_candidates_list").length>0)
		{
		$.ajax({
	        url:  "/TA_Gradle/TA/professor/delete/interview",
	        type: "POST",
	        data: {modulecode:modulecode,year:year},							          
	    success: function( data ) {
	    },
	        error: function (error) {alert('error: ' + error);},
	        async:false
	    });
		
		
 		$(".chosen_candidates_list").each(function(index){
 			
 			//alert(this.id);
			var candidates=this.id.split("chosen_candidates_list")[1];
			//alert(candidates+"|"+modulecode+"|"+year);
			$.ajax({
		        url:  "/TA_Gradle/TA/save/professor/interview",
		        type: "POST",
		        data: {modulecode:modulecode,year:year,candidates:candidates,professor:professor},							          
		    success: function( data ) {
		    if($(".chosen_candidates_list").length-1==index)
		    	alert("The list has been saved");
		    
					if($(".chosen_candidates_list").length>0){
						
					if(!$("#send_email_btn").length)
						 $("#send_email").append('<button class="button"  id="send_email_btn"><span>Want to arrange interviews?</span></button><br>');
					}
					else if($(".chosen_candidates_list").length==0)
						{
						$("#send_email").empty();
						}

		    },
		        error: function (error) {alert('error: ' + error);},
		        async:false
		    });

		});	 
		}
		else{
			alert("Oops!! You haven't chosen any candidates");
			return false;
			}
		
	});	
});
</script>
<Script type="text/javascript">//find already saved candidates 
$(document).ready(function() {
	var exclamtion_mark=" ";
		var no_smile=" ";
	var modulecode="${module.get().modulecode}",year="${module.get().year}";
	$.ajax({
        url:  "/TA_Gradle/TA/professor/Figure/interview",
        type: "POST",
        data: {modulecode:modulecode,year:year},							          
    success: function( data ) {
    	
    	 $(data).each(function(index, value) {



  		    if(value.morethan3Modules==true)
  		    	 exclamtion_mark="&#9888";
  		    if(value.conflict==true)
  		    	 no_smile="&#128293";
  		    
  		    
  		    
  		   $("#chosen_candidates").append("<input type='button' class='btn btn-third chosen_candidates_list ' id='chosen_candidates_list"+value.id.id+"' value='"+value.id.name+exclamtion_mark+no_smile+"'>&#160;");
  		 
  		 exclamtion_mark=" ";
  		no_smile=" ";
  		   send_email();
  		 
    	 });
  		 
  		 },
  	        error: function (error) {alert('error: ' + error);},


    });
	
	function send_email(){
		
	
		
		if($(".chosen_candidates_list").length==1){
			
		if(!$("#send_email_btn").length)
			 $("#send_email").append('<button class="button"  id="send_email_btn"><span>Want to arrange interviews?</span></button><br>');
		}
		else if($(".chosen_candidates_list").length==0)
			{
			$("#send_email").empty();
			}
		
		
		
		
		
	}  
	
	});



</Script>

<script type="text/javascript">//send emails
$(document).ready(function() {

	
	 $(document).on("click","#send_email", function() {	
	
		 $("#send_email_dialog").dialog({
		        resizable: true,
		        modal: true,
		        title:"Arrange meeting time",
		        height: 600,
		        width: 800,
		       minWidth: 700,
		      minHeight: 500,
		     close: function(e, ui) {
		    	 $("#send_email_dialog").empty();				
		    },
		      overlay: {
		          opacity: 0.5,
		          background: "black"
		          },
		        open: function (e, ui) {

		        	
		        $(".chosen_candidates_list").each(function(index,value){
		        	var can_id=value.id.split("chosen_candidates_list")[1];
		   		 $.ajax({
				        url:  "/TA_Gradle/TA/professor/find/an/interview",
				        type: "POST",
				        data: {candidate:can_id,modulecode:"${module.get().modulecode}",year:"${module.get().year}"},							          
				    success: function( data ) {
				   
				    	name=value.value.split("&")[0];
			        	$("#send_email_dialog").append('<div class="card mt-4"><div class="card-body" id="card'+can_id+'"><a>Arraging interview:'+"${module.get().modulecode}"+' '+"${module.get().title}"+' '+'${module.get().year}'+" Candidate ID:" +can_id+'"</a>');
			        	   //  alert(data.content);
			        	     
			        if(!jQuery.isEmptyObject(data)){     
			        	     
			        	 if(!jQuery.isEmptyObject(data.content)){
			        		 
			        		 $("#card"+can_id).append('<textarea rows="2"  class="form-control" cols="20" id="content'+can_id+'">'+data.content+'</textarea>');
			        		 $("#card"+can_id).append('<br><div class="form-inline">Meeting Time:<input type="datetime-local" class="form-control date" id="datepicker'+can_id+'" value="'+data.meetingDate+'" name="required"/><input type="text" class="form-control col-lg-2" value="'+data.meetingPlace+'"  id="place'+can_id+'" placeholder="Meeting Place" /></div>');
				        		
			        		 $("#card"+can_id).append('<br><a>*Please insert the meeting time to produce a calendar event file</a>');
			        		 
			        		 $("#card"+can_id).append('<div class="form-inline"><input type="button"  class="btn btn-third btn_send_email" id="send_email_btn'+can_id+'" value="Send to '+can_id+" "+value.value+' &raquo"><br><br><br><br><br><img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading_email'+can_id+'" alt=""><a style="color:Red;" id="status'+can_id+'">You have sent the message to '+name+'&#160;</a>&#160;</div>');
				        		
			        		
			        	 
			        	 
			        	 }
			        	 else{
			        		 
			     
					    		$("#card"+can_id).append('<textarea rows="2"  class="form-control" cols="20" placeholder="Content" id="content'+can_id+'"></textarea>');	 
				        		 $("#card"+can_id).append('<br><div class="form-inline">Meeting Time:<input type="datetime-local" class="form-control date" id="datepicker'+can_id+'" name="required"/><input type="text" class="form-control col-lg-2"  id="place'+can_id+'" placeholder="Meeting Place" /></div>');
				        		
				        		 $("#card"+can_id).append('<br><a>*Please insert the meeting time to produce a calendar event file</a>');
					    		
					    		$("#card"+can_id).append('<div class="form-inline"><input type="button"  class="btn btn-third btn_send_email" id="send_email_btn'+can_id+'" value="Send to '+can_id+" "+value.value+' &raquo"><br><br><br><br><br><img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading_email'+can_id+'" alt=""><a style="color:Red;" id="status'+can_id+'"></a><br>&#160;</div>');
				        	
				        		} 
			        	
				    }
			    	else{
			    		$("#card"+can_id).append('<textarea rows="2"  class="form-control" cols="20" placeholder="Content" id="content'+can_id+'"></textarea>');	 
			    		$("#card"+can_id).append('<br><div class="form-inline">Meeting Time:<input type="datetime-local" class="form-control date" id="datepicker'+can_id+'" name="required"/><input type="text" class="form-control col-lg-2"  id="place'+can_id+'" placeholder="Meeting Place" /></div>');
		        		
		        		 $("#card"+can_id).append('<br><a>*Please insert the meeting time to produce a calendar event file</a>');
			    		$("#card"+can_id).append('<div class="form-inline"><input type="button"  class="btn btn-third btn_send_email" id="send_email_btn'+can_id+'" value="Send to '+can_id+" "+value.value+' &raquo"><br><br><br><br><br><img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading_email'+can_id+'" alt=""><a style="color:Red;" id="status'+can_id+'"></a><br>&#160;</div>');
		        	
		        		} 
				    },
				    
				    error: function (error) {alert('error: ' + error);},
				    
				    
				    });	
		        	
		        	
		        
		        	
		        
		        });		       
		        },
 		        buttons: {
 		           "Close":function () {
 		               $(this).dialog('close');
 		              $("#send_email_dialog").empty();	
 		            }, 

 		        }
 		        
 		    });
	
	
	
	
	
	});

	 
	 
	 
	 
	 
	 
	 $(document).on("click",".btn_send_email", function() {
		 var id=this.id.split("send_email_btn")[1];
		var MeetingDate=$("#datepicker"+id).val();
		var MeetingPlace=$("#place"+id).val();
		 if(!MeetingDate||MeetingPlace.trim()==''){
			alert("You have not inserted the meeting date or place yet");
			return;
		
		} 
		//alert(MeetingDate);
		 $("#"+"status"+id).show();
	
	 var content=$("#"+"content"+id).val();
	 var status=$("#"+"status"+id);
	 var professor="${registration.get().id}";
	 //alert(id+" "+content);
	  status.html("");
	 if(!content.trim()==""){
		 $("#loading_email"+id).show();
		 $.ajax({
		        url:  "/TA_Gradle/TA/send/interview",
		        type: "POST",
		        data: {id:id,professor:professor,modulecode:"${module.get().modulecode}",content:content,year:"${module.get().year}",MeetingDate:MeetingDate,MeetingPlace:MeetingPlace},							          
		    success: function( data ) {
		    	 $("#loading_email"+id).hide();
		    
		   status.html("The email was sent sucessfully");
		   
		    },
	        error: function (error) {alert('error: ' + error);
	        $("#loading_email"+id).hide();
	        
	        },
	        

	    });
	 }
	 else
		 alert("The content is empty");
	 
	 });	
	 

});


</script>				
<script>//assign
$(document).ready(function() {
	$(document).on("click","#Assign_btn", function() {
	
var year="${module.get().year}",modulecode="${module.get().modulecode}";
var candidates;
var professor="${registration.get().id}";
if($(".chosen_candidates_list").length==0){
	alert("You haven't chosen any clever candidates");
	return false;
}
else{
	$("#loading").show();
	
	
	
	
	
	var candi;
$(".chosen_candidates_list").each(function(index){

	var candidates=this.id.split("chosen_candidates_list")[1];
	//alert(candidates+" "+modulecode+" "+year);
	 $.ajax({
		 	
 		url:  "/TA_Gradle/TA/check/overlap",
 		type: "Post",     
			data:{candidates:candidates,modulecode:modulecode,year:year},
			datatype:"Json",
 		success: function( conflict ) 
 		{ 
 			if(conflict.length>0){
 				alert("Oops!! ID "+this.id+"has an overlap ");
 				return;
 			}
 			else{
				
 			}	
 		},
 		
 	    error: function (error) {alert('error: ' + error);},
	 });
	//var candidates=this.id;

	if(index>0)candi+=","+candidates;
	else candi=candidates;
});



 
		 $.ajax({
		    url:  "/TA_Gradle/TA/assign/candidates",
		    type: "POST",
		    data: {modulecode:modulecode,year:year,candidates:candi,professor:professor},							          
		success: function( data ) {
			
			$("#loading").hide();
			alert("Congradulations they are now your Teaching Assistants!!! Please click OK to close the window ");
			window.close();

		},
		    error: function (error) {alert('error: ' + error);
		    $("#loading").hide();},
		    
		    
		});  

}



});
});
</script>				
				
					</div>
					
					
					
					
					
					<!--card-body  -->



				</div>
				<!-- /.card registrationdiv -->
</c:if>

			</div>



		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
<div id="dialog-confirm">   <!-- dialog -->
<br>
<br>
<div id="personal_detail"></div>
<br>
<br>
  <a class="dont_want_to_see_u"></a>
  <div id="table_requriment_div" ></div> 
   <div id="table_tools_div" ></div> 
 <br>
<a class="dont_want_to_see_u">
The grade of the candidate has taken for the module/similar modules
<input class="dont want to see u form-control col-lg-3" type="text" id="grade_module" disabled/>
  </a><br>
<a>The candidate has left some message for you</a> 
  <br>
 <textarea rows="4" cols="50" id="experience" disabled></textarea><br>
  <br>
</div>
<div id="send_email_dialog" class="dialog-confirm">   <!-- dialog -->
</div>
<script>//detail of the candidates
$(document).ready(function() {
$(document).on("click",".detail_btn", function() {
	/* Sk=;
	id=; */
 	   var modulecode="${module.get().modulecode}";
 	   var year="${module.get().year}";
		var aa =this.id.split("detail");
		var candidates=aa[1];
		var can_name=$("#"+"name"+candidates).text();
 	   
 	 //  alert(year);
 	   var appying_time=$("#"+"time"+this.id).html();
 	   var master_status=false;
 	  // var masteronly=$("#"+"masteronly"+this.id).

 	  /* skills*/
 	//  alert(modulecode+year+candidates);
 	  var ide_skill=find_ide(modulecode,year,candidates);
 	  
 	  
     var skill_split;
    var ides_split;
var skill_can=ide_skill.skills.split(",");
var ides_can=ide_skill.ides.split(",");
	 $.ajax({
  	    url:  "/TA_Gradle/TA/find/module",
  	    type: "Post",             
  	  data:{year:year,modulecode:modulecode},
  	  
  	    success: function( data ) {
  	    	skills=data.skills;
  	    	skill_split=skills.split(',');
  	    	ides=data.iDE;
  	    	ides_split=ides.split(',');
  	    	
  	    	
  	},
  	    error: function (error) {alert('error: ' + error);},
  	  async:false
	   
	   
  });  
 	  
	 $.ajax({
	  	    url:  "/TA_Gradle/TA/find/candidate",
	  	    type: "Post",             
	  	  data:{id:candidates},
	  	  
	  	    success: function( item ) {
	  	    	switch(item.yearofuni){
            	case 1: item.yearofuni="Year 1"; break;								                	
            	case 2: item.yearofuni="Year 2";break;				                	
            	case 3:item.yearofuni="Year 3";break;      	
            	case 4:item.yearofuni="Master";break;					                		
            	case 5:item.yearofuni="PhD";break;		
            	}
	  	    	
	  	    	$("#personal_detail").append("<a>Mobile: "+item.mobile+"</a><br>");
	  	    	$("#personal_detail").append("<a href='mailto: style:'color:blue;'"+item.email+"'>E-mail: "+item.email+"</a><br>");	
	  	    	$("#personal_detail").append("<a>Mobile: "+item.subject+"</a><br>");
	  	    	$("#personal_detail").append("<a >Year of university: "+item.yearofuni+"</a><br>");
	  	    	
	  	},
	  	    error: function (error) {alert('error: ' + error);},
	  	  async:false
		   
		   
	  });  
	// 
	 
	 
	 
	 
	 
	$("#masteronly_warning").empty();

 		    $("#dialog-confirm").dialog({
 		        resizable: true,
 		        modal: true,
 		        title:candidates+"   "+can_name,
 		        height: 600,
 		        width: 800,
 		       minWidth: 700,
 		      minHeight: 500,
 		     close: function(e, ui) {
 		    	
 				$("#table_tools_div").empty();
 				$("#table_requriment_div").empty();
 				$("#personal_detail").empty();
 				
 		    },
 		      overlay: {
 		          opacity: 0.5,
 		          background: "black"
 		          },
 		        open: function (e, ui) {
 		            var pane = $(this).dialog("widget").find(".ui-dialog-buttonpane")      
 		            
 	  	
							var table_skills_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_requriment_div'));
		 		            
		 		            $('<thead><tr>').appendTo(table_skills_tick)
		 		            .append($('<th/>').text("Skills"))
		 		        	.append($('<th/>').text("No experience"))
		 		         
		 		            .append($('<th/>').text("Beginners"))
		 		          
		 		            .append($('<th/>').text("Intermediate"))
		 		    
		 		            .append($('<th/>').text("Advanced"))
		 		       
		 		            .append($('<th/>').text("Professional"))
		 		            ;
		 		            
		 		            
		 		           var table_ide_tick = $('<table class="table" id="table_skills_tick">').appendTo($('#table_tools_div'));
				            
				            $('<thead><tr>').appendTo(table_ide_tick)
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
				               .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="0" disabled>'))
			                   .append($('<td>').html('<input type="radio"  class="requbtn" name="skill'+str1[0]+'" value="30" disabled>'))
			                    .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="60" disabled>'))
			                     .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="80" disabled>'))
			                      .append($('<td>').html('<input type="radio" class="requbtn" name="skill'+str1[0]+'" value="100" disabled>'))
			            	 ;	  		        	
		  		        	var skill_value=skill_can[key];
		  		        	$('input[name="skill'+str1[0]+'"][value="' +skill_value+ '"]').prop('checked', true);
		 		        	});	           
						
							 /* skills*/
							 
		 		            /* ides*/
			 		          $.each(ides_split, function(key, value) {
			 		        	 str1=value.split("/");
		            	        
			 		        	 $('<tbody><tr>').appendTo(table_ide_tick)
				                  .append($('<td id="'+str1[0]+'">').text(str1[0]))
					               .append($('<td>').html('<input type="radio" class="requbtnides" name="ides'+str1[0]+'" value="0" disabled>'))
				                   .append($('<td>').html('<input type="radio"  class="requbtnides" name="ides'+str1[0]+'" value="30" disabled>'))
				                    .append($('<td>').html('<input type="radio" class="requbtnides" name="ides'+str1[0]+'" value="60"  disabled>'))
				                     .append($('<td>').html('<input type="radio" class="requbtnides" name="ides'+str1[0]+'" value="80" disabled>'))
				                      .append($('<td>').html('<input type="radio" class="requbtnides" name="ides'+str1[0]+'" value="100" disabled>'))
				          
				                     ;
			 		        	var ide_value=ides_can[key];
			  		        	$('input[name="ides'+str1[0]+'"][value="' +ide_value+ '"]').prop('checked', true);
									});	 
							 
							 
			 		       $("#grade_module").val(ide_skill.grade_of_themodule);
			 		      $("#experience").val(ide_skill.experience);
			 	 	    	
 		        },
 		        buttons: {
 		           "Close":function () {
 		               $(this).dialog('close');
 		               empty_items(true);
 		            }, 

 		        }
 		        
 		    });
function empty_items(value){
	if(value){
		
		$("#table_tools_div").empty();
		$("#table_requriment_div").empty();
		$("#personal_detail").empty();
	}
}


function find_ide(modulecode,year,candidate){	
var enrol;
//alert(modulecode+year+candidates);
	$.ajax({
  	    url:  "/TA_Gradle/TA/find/enrol/candidates",
  	    type: "Post",             
  	  data:{year:year,modulecode:modulecode,candidate:candidate},
  	  
  	    success: function( data ) {
  	    	enrol=data;
  	    	
  	    	
  	},
  	    error: function (error) {alert('error: ' + error);},
  	  async:false 
  	  });
	return enrol;
	
	}

					
	 		    /* 	$("input[type='radio'].requbtn:checked").each(function(index) {
	 					
	 		    		var a=0;
			    			if(this.value=='') this.value=parseFloat(0);
			    		if(index>0) str_skills+=","+this.value; 
			    		else 	str_skills=this.value; 
			    		 
			    			
	 	 					
	 	 				});

	 		    		
	 		    		
	 		    		$("input[type='radio'].requbtnides:checked").each(function(index) {
	 		    			if(this.value=='') this.value=0;
	 		    			if(index>0) str_ides+=","+this.value; 
	 		    			else  str_ides=this.value;
	 		    		}); */

});

});
</script>
<script type="text/javascript">//redirect if unauthorised
							$(document).ready(function() {
								
								//alert("${unauthrorised}");
								if("${unauthrorised}"=="true")
								{
									
									alert("Unauthroised");
									window.close();
								}
							});
							</script>		

	<!-- Bootstrap core JavaScript -->
	<script
		src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
