<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Teaching Assistants Allocation System</title>

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
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/TA_Gradle/TA/default">Teaching Assistants Allocation</a>
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
				<a href="/TA_Gradle/TA/default" class="list-group-item"   id="viewvacancies" >Back&#xab;</a>	
				</div>

			</div><!-- /.col-lg-3 the category -->
			 <div class="col-lg-9">
			 
	
				
				

			 <div class="card mt-4" id="Create_a_vacancy_frame">
            <div class="card-body">
            
              <h3 class="card-title">Open an application</h3>
              <h2><font size="2">Module code(Capital letters)</font></h2>            
             <div class="form-inline">
             <input type="text" id="module_code" class="form-control required col-lg-3"  name="required"  placeholder="Module code" required/> 
               <a class="module_notice"></a>  
               </div>                      
<h2><font size="2">Module </font></h2>

              <p><input type="text" class="form-control required col-lg-3"  id="title" name="required"  placeholder="Module's Name" required/>
             <h2><font size="2">Year</font></h2>
             <div class="form-inline">
            
              <select id="year" class="form-control col-lg-3"  name="required"></select><a class="module_notice"></a>
           </div>
<h2><font size="2">Total working hours</font></h2>
 <p><input type="number" class="form-control int_only required col-lg-2" min="0" id="total_hours" name="required"  placeholder="Total hours" required/><p/>
 
  <div id='timesdiv'>
    
            <div class="buttons">
          
            <h2><font size="2">Time slots</font></h2>
  <div class="form-inline">
    <select class="select form-control col-lg-2" id="choose_a_day" name="choose_a_day">
            <option value="Mon ">Monday</option>
             <option value="Tue ">Tuesday</option>
              <option value="Wed ">Wednesday</option>
               <option value="Thu ">Thursday</option>
                <option value="Fri ">Friday</option>             
    </select>
   
 <input readonly="readonly" id="time_start" type="text" class="timepicker form-control col-lg-2" id="time_start" name="timepicker" placeholder="from" required />~
            <input readonly="readonly" type="text" class="timepicker form-control col-lg-2"id="time_end" name="timepicker" placeholder="to"  required />
            
             <input type="button" class="btn btn-third btnAdd" id="addtime" value="Add&raquo"><br>
            </div>
           <div id="divtimes" ></div> 
        </div>  
        </div><!--timediv-->    
        
      <script>
      
      $(document).ready (function () {
      var time_string="";
      $('#addtime').click(function () {
          var time_start=$("#time_start").val();
          var time_end=$("#time_end").val();     
          var check_time_start =new Date('01/01/2018 '+ time_start); 
          var check_time_end =new Date('01/01/2018 '+ time_end);
       if(check_time_end < check_time_start)
          {
           alert("End time should exceed the start time");   
           return;
          }
          else if(check_time_end - check_time_start==0)
          {
        	  alert("Start time and end time cannot be same");
               return;
          }
          
          
          
          
          $("#divtimes").append("<input type='button' class='btn btn-third times_elements' value='"+$("#choose_a_day").val()+time_start+"-"+time_end+"'>");      
      });
      

      $(document).on("click",".times_elements", function() {
          var confirmation = confirm('Are you sure you want to delete this action plan/s?');
          if (confirmation == true) {
            $(this).closest(".times_elements").remove();

            
            
          }
      });
     

      
      });
      </script>
      <br><br>
            <div  class="form-inline">
              <p><input type="checkbox" class="form-control" id="masterphdonly" />
            Master/PhD students only</p> 
            </div>
<h2><font size="2">Number of TAs needed</font></h2>
 <p><input type="number" id="quntities_TA" min="0" class="form-control int_only required col-lg-2" name="required" placeholder="Number of TAs"  required /><p/>


         
  <div >        
  <br>
   <br>
   
    <div class="card mt-4" id="create_vacancy_ides">
            <div class="card-body">
   
             <div id='Skillsdiv'>
             <a id="popoverwhatisthis" class="btn" rel="popover" data-content="The skills and tools you add will be populated as a questionnaire. The questionnaire when completed by candidates will determine the most suitable TAs for the module " title="">What is this&#63;</a>
             &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<a id="popover" class="btn" rel="popover" data-content="" title="">questionnaire&#63;</a>
             <br>
               <br>
               
              
               
               
              <h2><font size="2">Skills</font></h2>
           <div class="buttons">
        <div  class="form-inline">
            <input type="text" class="findskills form-control col-lg-2" id="skill_filling" placeholder="Skills"> 
          <a>&#160;&#160;</a>  



<input type="number"  min="0" class="int_only form-control col-lg-1" id="sk_percentage" placeholder="%" />
             <input type="button"  class="btn btn-third btn-md btnAdd"  id="addskill" value="Add a skill &raquo">
            </div>
            <a style='color:Red;'>The portions of the skills should be ended up with 100% e.g Java with 50% + C with 50% =100% </a><br>
           <div id="divskill"></div> 
        </div>       

<br>
<br>

          <a>Tools</a><br>
 <div class="idebuttons">

          <div  class="form-inline">
            <input type="text" class="findide form-control  col-lg-2"  id="ide_filling" placeholder="Tools"> 
       <a>&#160;&#160;&#160;</a>       <input type="number" min="0"  class="int_only findide form-control  col-lg-1"  id="ide_percentage" placeholder="%"> 
            
          
             <input type="button"  class="btn btn-third btn-md btnAdd" id="addide" value="Add a Tool &raquo"><br>
         </div>
         <a style='color:Red;'>The portions of the tools should be ended up with 100% </a><br>
          
           <div id="divide"></div> 
        </div>

<script>
$(document).ready (function () {
var image = '<img src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/Optimized-Screen+Shot+2018-08-19+at+9.27.30+pm+(1).png">';
$('#popover').popover({
  placement: 'right',
  content: image,
  html: true
});



$('#popoverwhatisthis').popover({
placement: 'right',
});
});
</script>        

      </div><!-- skilldiv-->
   <script>

            $(document).ready (function () {
                   
                 var skill_string="";
                 var ide_string="";
       
                 
                 $(".int_only").keypress(function(event) {
                     if (event.which != 8 && event.which != 0 && (event.which < 48 || event.which > 57)) {
                         return false;
                     }
                 });
                
                 
                    	
                 
                 
                 
            $("#skill_filling").autocomplete({
                source: function(request, response) {
                   
                    
                }
            }); 
            
            
            
            
            $("#skill_filling").keyup(function(){
                var skill=$("#skill_filling").val();
                
                
                $("#skill_filling").autocomplete({
                    source: function(request, response) {
                        $.ajax({
                            url:  "/TA_Gradle/TA/findskills",
                            type: "POST",
                            data: {skill:skill},
                            dataType: "Json",
                          
                            success: function( data ) {
                                
                                response( $.map( data, function( item ) {
                                return {
                                    label: item.skills,
                                    value: item.skills,
                                }
                                }));
                        },
                            error: function (error) {alert('error: ' + error);},
                  
                        });
                        
                        
                    }
                }); 
                
                
                
                
            });
           
          
            $('#addskill').click(function () {
                var skill=$("#skill_filling").val();
                var percentage=$("#sk_percentage").val();
                if(percentage.length<1)
                	percentage=25;
            	var inform=false;
            	var check_value=0;
                if(!skill==""){
                	
                	  if(parseFloat(percentage)==parseFloat(0)){
                     	 alert("The vlaue cannot be 0");
                     return false;
                   	}  
                	
                	check_value+=parseFloat(percentage);
                $(".skill_elements").each(function(){
                	var skill_spl=this.value.split("/");
				if(skill_spl[0]==skill)
                	inform=true;
				
				check_value+=parseFloat(skill_spl[1]);
                });	
                
                //alert(check_value);
                if($(".skill_elements").length==0)
                	check_value=percentage;
                
               // alert(check_value);
                if(check_value<=100){
                	if(inform==true){
                		alert("Oops! You have been added the skill");
                		return;
                	}
                	else {
                		
                		
                		$("#sk_percentage").val(100-check_value);
                		
                $("#divskill").append("<input type='button' class='btn btn-third skill_elements' value='"+$("#skill_filling").val()+"/"+percentage+"%"+"'>");
                
                	}
                	
                $.ajax({
                    type: "Get",
                    url: "/TA_Gradle/TA/createskill",
                 data:{skill:skill},
                 success: function( data ) {
                	 $("#skill_filling").val("");
                	 
                 },
                 
             error: function(){alert("failure");}
             }); 
                }
                else
                	alert("No over than 100% Please");
                	
                	
                }
                else {alert("can not be empty");
                return ;
                }
                
                
                
            });
            

            $(document).on("click",".skill_elements", function() {
                var confirmation = confirm('Are you sure you want to delete this action plan/s?');
                if (confirmation == true) {
                  $(this).closest(".skill_elements").remove();
                  $(this).closest(".sk_percent").remove();
                  
                  
                }
            });
                                          
           
              });

           
        </script>
         <br>
         
         </div>       </div>
         
        <div class="IDEdiv">
          
          

        
            
     
        
        
     <script>

            $(document).ready (function () {
                   
                
            
                 
            $("#ide_filling").autocomplete({
                source: function(request, response) {
                    $.ajax({
                        url:  "/TA_Gradle/TA/findIDE",
                        type: "POST",
                        data: {ide:ide},
                        dataType: "Json",
                      
                        success: function( data ) {},
                        error: function (error) {alert('error: ' + error);},                  
                    });
                    
                    
                }
            }); 
            
           
            
            
            $("#ide_filling").keyup(function(){
                
                var ide=$("#ide_filling").val();
                
                $("#ide_filling").autocomplete({
                    source: function(request, response) {
                        $.ajax({
                            url:  "/TA_Gradle/TA/findIDE",
                            type: "POST",
                            data: {ide:ide},
                            dataType: "Json",
                          
                            success: function( data ) {
                                
                                response( $.map( data, function( item ) {
                       return {
                                    label: item.ides,
                                    value: item.ides,
                                }
                                }));
                        },
                            error: function (error) {alert('error: ' + error);},
                  
                        });
                        
                        
                    }
                }); 
                
                
                
                
            });
           
          
            $('#addide').click(function () {
                var ide=$("#ide_filling").val();
                var percentage=$("#ide_percentage").val();
                var inform=false;
            	var check_value=0;
                if(percentage==""){
                	percentage=25;
            	}              
                if(parseFloat(percentage)==parseFloat(0)){
               	 alert("The vlaue cannot be 0");
               return false;
             	}  
            //alert(check_value);

                if(!ide==""){
                	check_value=parseFloat(percentage);
                    $(".ide_elements").each(function(){
                    	var ides_spl=this.value.split("/");
    				if(ides_spl[0]==ide)
                    	inform=true;
    				
    				check_value+=parseFloat(ides_spl[1]);
    				
                    });	
                    
                    if($(".ide_elements").length==0)
                    	check_value=parseFloat(percentage);
                    
                   
                    if(check_value<=100){
                    
                    	if(inform==true){
                    		alert("Oops! You have been added the tool");
                    		return false;
                    	}
                    	
                    	$("#ide_percentage").val(parseFloat(100-check_value));
                $("#divide").append("<input type='button' class='btn btn-third ide_elements' value='"+ide+"/"+percentage+"%"+"'>");
                   
                $.ajax({
                    type: "Get",
                    url: "/TA_Gradle/TA/createIDE",
                 data:{ide:ide},
                 success: function( data ) {
                	 $("#ide_filling").val("");
                	 
                 },
             error: function(){alert("failure");}
             }); 
                } 
                else{
                	alert("No over than 100% Please");
                	$("#ide_percentage").val("");
                    return;
                }
                }
                else{ alert("can not be empty"); 
                return;
                }
                
                
                
               
                
                
                
            });
            

            $(document).on("click",".ide_elements", function() {
                var confirmation = confirm('Are you sure you want to delete this action plan/s?');
                if (confirmation == true) {
                  $(this).closest(".ide_elements").remove();

                  
                  
                }
            });                                        
              });

           
        </script><br>
        
         <div class="card mt-4" id="create_vacancy_ides">
            <div class="card-body">
        <a>Please assign the proportion of the three following sections.
        <br>(Skills,Tools,What grade did candidates get when they were taking a similar/the module to this )</a>
        <br>
       <a>The three elements will be the factors that the system populates the suggestion list</a><br>
        <br>
        
   			 
    		<label for="percentage_skills">Skills </label>
    		<div class="form-inline">
   			 <input type="number" min="0" class="form-control int_only col-lg-1" value="30" id="percentage_skills" name="required" > %</div>
   			 <a>    </a>
    		<label   for="percentage_ides" >Tools </label>
    		<div class="form-inline">
   			 <input  type="number" min="0" class="form-control int_only col-lg-1" id="percentage_ides" name="required" value="20">%</div>
    	
    		<label  for="percentage_grade">Grade of the module </label>
    		<div class="form-inline">
   			 <input  type="number" min="0"  class="form-control int_only col-lg-1" id="percentage_grade" name="required" value="50">%</div>
  		
<a style='color:Red;'>The three portions should be ended up with 100%   </a><br>
        <br>
        </div></div>
        <br>
        <a>Description</a><br>
        <textarea rows="4" cols="50"  class="form-control" id="description"></textarea><br>
   <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Deadline of the application</label>
        <input class="form-control required" id="datepicker" name="required" placeholder="MM/DD/YYYY"  readonly="readonly" type="text"/>
      </div>
      
      <br>
      <div>If the application can be applied by more than one departments(the department you belong to and others) Please contact system manager after you save the application</div>
      
      <br>
      <script>
    $(document).ready(function(){
      var date_input=$('#datepicker'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
 </div>  <!--IDE DIV  -->      
      </div> <!--card skills ides-->  
              
                            <c:if test="${candidates.get().yearofuni=='7'}">
              					<select name="roleName" id="subject" class="form-control">
									<c:forEach items="${SUBJECTS}" var="subject">
										<option value='<c:out value = "${subject.subject}"/>' > <c:out value = "${subject.subject}"/> </option>
									</c:forEach>
								</select>
              <br>
              </c:if>
              
               <input type="submit" class="btn btn-secondary" id="create_vacan" role="button" readonly="readonly" value="Create &raquo;"/>
          <img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading" alt="">
            <a id="create_status"></a>
          <script>
          $("#testbtn").click(function() {
        	
                  });
        
</script>
<script type="text/javascript">




$(document).ready(
		
function() {
	$('.timepicker').timepicker({
	    timeFormat: 'HH:mm ',
	    interval: 30,
	    minTime: '09:00am',
	    maxTime: '06:00pm',
	    defaultTime: '09:00am',
	    startTime: '09:00am',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true
	}); 
    
    
    var module_code=$("#module_code").val();
    var module_status=$(".module_notice");
    var termyear=$("#year").val();

    
     var now = new Date();
     var term = [
		    "Term1",
		    "Term2",
		    "Term3",
		   ];
   if(now.getMonth()>5&&now.getMonth()<=10)
	  {
	  var CurrentYear=now.getFullYear();
	  $.each(term, function(key, value) {

		  if(key==0)
		 	 $("#year").append('<option value="' +CurrentYear+value+ '">' +CurrentYear+value+ '</option>');     
		  else{
			  
			  $("#year").append('<option value="' +(CurrentYear+1)+value+ '">' +(CurrentYear+1)+value+ '</option>');     
		  } 
		 	});
	  } 
   else if(now.getMonth()>10&&now.getMonth()<=12)
  {
	 var CurrentYear=now.getFullYear()+1;
	  $.each(term, function(key, value) {
	  if(key>0)
		 	 $("#year").append('<option value="' +CurrentYear+value+ '">' +CurrentYear+value+ '</option>');     
	  });
  }
 
   else if(now.getMonth()>=1&&now.getMonth()<=2)
 {
	 var CurrentYear=now.getFullYear()+1;
	  $.each(term, function(key, value) {
	  if(key>0)
		 	 $("#year").append('<option value="' +CurrentYear+value+ '">' +CurrentYear+value+ '</option>');     
	  });
 }
 
   else  if(now.getMonth()>2&&now.getMonth()<=5)
 {
	 var CurrentYear=now.getFullYear()+1;
	  $.each(term, function(key, value) {
	  if(key>1)
		 	 $("#year").append('<option value="' +CurrentYear+value+ '">' +CurrentYear+value+ '</option>');     
	  });
 }
 
 
 
  
  
     $("#module_code").change(function(){  
    	 var module_code=$("#module_code").val();
    	    var module_status=$(".module_notice");
    	    var termyear=$("#year").val();

	$.ajax({
         type: "POST",
          url: "/TA_Gradle/TA/checkdatabase/module",
          data:{module_code:module_code,termyear:termyear},
          success: function(data){
             
                 
                  if(data=="used"){
                  
                 module_status.html("the module has been used");
                  $("#create_vacan").prop('disabled', true);
              
              }
             
              else{
                     module_status.html("&#x2714");
                     $("#create_vacan").prop('disabled', false);
                  
              }           
     },
     error: function(){alert("failure");}
     });

     });   
    
    
     $("#year").change(function(){
    	 var module_code=$("#module_code").val();
    	    var module_status=$(".module_notice");
    	    var termyear=$("#year").val();	 
         $.ajax({
         type: "POST",
          url: "/TA_Gradle/TA/checkdatabase/module",
          data:{module_code:module_code,termyear:termyear},
          success: function(data){
             
                 
                  if(data=="used"){
                  
                 module_status.html("the module has been used");
                  $("#create_vacan").prop('disabled', true);
              
              }
             
              else{
                     module_status.html("&#x2714");
                     $("#create_vacan").prop('disabled', false);
                  
              }           
     },
     error: function(){alert("failure");}
     });

     });   
    

     $('.required').on('change', function(e) {
    	  var emptyField = $('.required').filter(function(index, element) {
    	    return element.value == '';
    	  });
    	  if (emptyField.length > 0) {
    	    emptyField.first().focus();
    	  }
    	});

     $("#quntities_TA").keyup(function(){
      	
      	if(this.value=="0"){
      		alert("It cannot be 0");
      		
      		this.value="";
      	}
      	
      	
      });
     
     $("#create_vacan").click(function(){  
    	 $("#create_status").html(" ");
         var skill_string="";
         var ide_string="";
         var times="";
         var year = $("#year").val() ;
         var module_code=$("#module_code").val();
         var p_skills=$("#percentage_skills").val();
         var p_ides=$("#percentage_ides").val();
         var p_grade=$("#percentage_grade").val();
         var description=$("#description").val();
            var title = $("#title").val();
            var total_hours =$("#total_hours").val();
           
            var quntities_TA =$("#quntities_TA").val() ;
       
        	var deadline = "";
        
        	

        	if(parseFloat(p_skills)+parseFloat(p_ides)+parseFloat(p_grade)!=100)
        	{
        		p_skills.focus();
        		alert("The three portions should be ended up with 100%");
        	return false;
        	}
        	
          if($("#datepicker").val()==""){}
          
          else{
            var deadline =new Date($("#datepicker").val()+" 23:59:59"); 
            
            //deadline = timepicker.format("dd/MM/yyyy HH:mm:ss");
            //alert(timepicker+"  "+deadline);
          }

      
            var master_phd_only;
            if ( $("#masterphdonly").is(':checked') ) { master_phd_only=1; }
            else master_phd_only=0;
            
            var time_start =$("#time_start").val()  ;
            var time_end =$("#time_end").val();
			 
            var required_status=false;
            
            
            if($(".times_elements").length<1){
           	 alert("Oops! You have not filled in the time slot");
       		 return;
            }
     
            
            
            
            
            $(".required").each(function(index,value) {
            	
            	if(this.value.length<1){
            		required_status=true;
            	$(this.id).first().focus();
            	
            	}
            });
            if(required_status==true){
            	
            	alert("Please fill in all of the feilds");
            	return false;
            }
            
            $(".times_elements").each(function(index) {
           	 if($(".times_elements").length>0)
           	 
           	 {
           	 if(index>0) times =times+","+$(this).val();
           	 else times=$(this).val(); 
           	 }
           	 
           	  
            });
             
             var initial=0;
   		  $("#divide .ide_elements").each(function(index) {
   			  if($("#divide .ide_elements").length>0){
   			  
   	         	 str=$(this).val().split("/");
   	         	aaa=str[1].split("%");
   	         	 initial=initial+parseFloat(aaa[0]);
   	         	 if(index>0)ide_string =ide_string+","+$(this).val();
   	         		 
   	         	 else ide_string =$(this).val() ;
   			  }
   			 else{
        		 Alert("Oops! You have not filled in Tools field");
        		 return;
        	 }
   	          });
   		  
           if(initial!=100) { alert("all of the portion should be ended up with 100%");
           return false;
           }
           initial=0;
           
             $("#divskill .skill_elements").each(function(index) {
            	 if($("#divskill .skill_elements").length>0)
            	 {
            	 
            			 str=$(this).val().split("/");
            	         	aaa=str[1].split("%");
            	         	 initial=initial+parseFloat(aaa[0]);
            	         	 if(index>0)skill_string =skill_string+","+$(this).val();
            	         		 
            	         	 else skill_string =$(this).val() ;
            	 }	 
            	 else{
            		 Alert("Oops! You have not filled in Skills field");
            		 return;
            	 }
             
             
             });
             initial=0;
            var subject;
            if('${candidates.get().yearofuni}'=='7'){
            	
            	subject=$("#subject").val();
            }
            else{
            	
            	subject="${candidates.get().subject}";
            }
            $("#loading").show();
            	$.ajax({
                type: "Get",
                url: "/TA_Gradle/TA/create/vacancy",
             data:{subject:subject,professor:"${candidates.get().id}",description:description,updateinsert:"insert",year:year,module_code:module_code,deadline:deadline,title:title,total_hours:total_hours,times:times,master_phd_only:master_phd_only,quntities_TA:quntities_TA,skills:skill_string,IDE:ide_string,p_grade:p_grade,p_ides:p_ides,p_skills:p_skills},
             success: function(data){
                 if(data==true){
               	$("#loading").hide();
                 $("#create_status").html("successful");
                 }
                 else{
                     $("#create_status").html("unsuccessful");
                 return;}
         },
         error: function(){alert("failure");}
         });  
     
         });
     
     

    

});
</script>          
            
            
            </div><!-- card body vacancy -->
            </div><!-- create a vacancy frame -->
			 
			 
			 
			 
			 
			 
			 
			 </div>
			
			
			
		</div><!-- /.row -->
		
	</div><!-- /.container -->






	<!-- Bootstrap core JavaScript -->
	<script src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/bootstrap.bundle.min.js"></script>
</body>

</html>
