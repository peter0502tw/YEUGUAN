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

	<!-- Page Content -->
	<div class="container">

		<div class="row">
		
			 <div class="col-lg-9">
			 

			 <div  class="card mt-4" id="Create_a_vacancy_frame">
            <div class="card-body">
                        
              <h3 class="card-title" id="modulecode">${module.get().modulecode}</h3>
              
            <br> <h3> ${module.get().year}</h3>
            <br>
<h2><font size="2">Module </font></h2>
              <p><input type="text" class="form-control required col-lg-3"  id="title" name="required" placeholder="Module's Name" value="${module.get().title}" required/>
             <div class="form-inline">
           </div>
<h2><font size="2">Total hours of working time</font></h2>
 <p><input type="number" class="form-control int_only required col-lg-2" min="0" id="total_hours" name="required"  placeholder="Total hours" value="${module.get().total_hours}" required/><p/>
 
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
            
             <input type="button" class="btn btn-third btnAdd" id="addtime" value="Add &raquo"><br>
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
 <p><input type="number" id="quntities_TA" min="0" class="form-control int_only required col-lg-2" name="required" value="${module.get().quntities_TA}"  required /><p/>

         
  <div >    
  
     
    <div class="card mt-4" id="skill_div_tools">
            <div class="card-body">
       
             <div id='Skillsdiv'>
              <a>Skills</a><br>
           <div class="buttons">
        <div  class="form-inline">
            <input type="text" class="findskills form-control col-lg-2" id="skill_filling" placeholder="Skills"> 
          <a>&#160;&#160;</a>   <input type="number" class="form-control int_only col-lg-1" id="sk_percentage" placeholder="%" />
             <input type="button" class="btn btn-third btn-md btnAdd"  id="addskill" value="Add a skill &raquo">
            </div>
            <a style='color:Red;'>The portions of the skills should be ended up with 100% e.g Java with 50% + C with 50% =100% </a><br>
           <div id="divskill"></div> 
        </div>       
        

      </div><!-- skilldiv-->
      
       <div class="idebuttons"><br>
<a>Tools</a><br>
          <div  class="form-inline">
            <input type="text" class="findide form-control  col-lg-2"  id="ide_filling" placeholder="IDEs"> 
       <a>&#160;&#160;</a>       <input type="number" class="findide int_only form-control  col-lg-1"  id="ide_percentage" placeholder="%"> 
             <input type="button" class="btn btn-third btn-md btnAdd" id="addide" value="Add a IDE &raquo"><br>
         </div>
         <a style='color:Red;'>The portions of the Tools should be ended up with 100% </a><br>
          
           <div id="divide"></div> 
        </div>
      
      
        </div></div>
      
   <script>

            $(document).ready (function () {

             	  if(${module.get().masterphdonly}==1)
                		$("#masterphdonly").attr('checked', 'checked');
                   var skill_string="";
                   var ide_string="";
                   var Str_skill="${module.get().skills}".split(",");
                   $.each(Str_skill, function(key, value) {
                  	      
                  	 $("#divskill").append("<input type='button' class='btn btn-third skill_elements' value='"+value+"'>");
                  	}); 
                   var Str_ides="${module.get().iDE}".split(",");
                   $.each(Str_ides, function(key, value) {
                  	      
                  	 $("#divide").append("<input type='button' class='btn btn-third ide_elements' value='"+value+"'>");
                  	}); 
                   var Str_time="${module.get().time}".split(",");
                   $.each(Str_time, function(key, value) {
                  	      
                  	 $("#divtimes").append("<input type='button' class='btn btn-third times_elements' value='"+value+"'>");
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
                
                if(parseFloat(percentage)==parseFloat(0)){
               	 alert("The vlaue cannot be 0");
               return false;
             	}  
                
                
               // alert(check_value);
                if(check_value<=100){
                	if(inform==true){
                		alert("Oops! You have been added the skill");
                		return;
                	}
                	else {
                		
                		 $("#divskill").append("<input type='button' class='btn btn-third skill_elements' value='"+$("#skill_filling").val()+"/"+percentage+"%"+"'>");
                         
                		$("#sk_percentage").val(100-check_value);

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

           
        </script>
        
         <div class="card mt-4" id="skill_div_tools">
            <div class="card-body">
        
        <a>Please assign the proportion of the three following sections.
        <br>(Skills,Tools,What grade did candidates get when they were taking a similar/the module to this )</a>
        <br>
        <br>
        <a>The three elements will be the factors that the system populates the potential suggestion list</a><br>
          <div >
    		<label for="percentage_skills">Skills </label>
    		<div class="form-inline">
   			 <input type="number" min="0" class="form-control int_only col-lg-1" value="${module.get().percentage_skills}" id="percentage_skills" name="required" > %</div> 
   			
   			 <br>
    		<label   for="percentage_ides" >Tools </label>
    		<div class="form-inline">
   			 <input  type="number" min="0" class="form-control int_only col-lg-1" id="percentage_ides" name="required" value="${module.get().percentage_ides}"> %</div>
    		 <br>
    		<label  for="percentage_grade">Grade of the module </label>
    		<div class="form-inline">
   			 <input  type="number" min="0"  class="form-control int_only col-lg-1" id="percentage_grade" name="required" value="${module.get().percentage_grade}"> %</div> 
  		</div>
<a style='color:Red;'>The three portions should be ended up with 100%   </a><br>
        <br>
        
        </div></div>
        
        <br><br>
        <a>Description</a><br>
        <textarea rows="4" cols="50"  class="form-control" id="description">${module.get().description}</textarea><br>
   <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Deadline of the application</label>
        <input class="form-control required" id="datepicker" name="required" placeholder="MM/DD/YYYY"  readonly="readonly" type="text"/>
      </div>
      <div>If the application can be applied by more than one departments(the department you belong to and others) Please contact system manager after you save the application </div>
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
                            
              					<select name="roleName" id="subject" class="form-control" disabled>
									<c:forEach items="${SUBJECTS}" var="subject">
										<option value="<c:out value = "${subject.subject}"/>"  <c:if test="${FirstSubject==subject.subject}"> selected</c:if>> <c:out value = "${subject.subject}"></c:out> </option>
									</c:forEach>
								</select>
              <br>
        <br>
      
        <br>      

                            <c:if test="${candidates.get().yearofuni=='7'}">
                              <p>If the module is for more than one departments Please add additional departments below</p>      
                            <div  class="form-inline">
              					<select name="roleName" id="subject_additional" class="form-control">
									<c:forEach items="${SUBJECTS}" var="subject">
										<option value="<c:out value = "${subject.subject}"/>"  <c:if test="${module.get().subject==subject.subject}"> selected</c:if>> <c:out value = "${subject.subject}"></c:out> </option>
									</c:forEach>
								</select>
              <br>
              <input type="button" class="btn btn-third btn-md btnAdd" id="adddepartment" value="Add a department &raquo"><br>
         </div>   
        
             
             
              </c:if>
              <br><br>
              <div>Applicable departments</div><br>
             <div id="department_div"></div>     <br><br>
               <input type="submit" class="btn btn-secondary" id="create_vacan" role="button" readonly="readonly" value="Update &raquo;"/>
         <img style="display: none;"  src="https://s3.us-east-2.amazonaws.com/elasticbeanstalk-us-east-2-324614585442/CSS+and+js/ajax-loader.gif" id="loading" alt="">
            <a id="create_status"></a>
<script>

$(document).ready(
		function() {
		
			
		       $.ajax({
		           type: "Get",
		           url: "/TA_Gradle/TA/find/module",
		        data:{modulecode:"${module.get().modulecode}" ,year:"${module.get().year}"},
		        success: function( data ) {
		       	
		        	subjec=data.subject.split(",");
		       	 
		        	$(subjec).each(function(index,value){
		        		
		        		
		        		if("${candidates.get().yearofuni}"==7)
		        			{
		        			if(index>0)
		        		       $("#department_div").append("<input type='button' class='btn btn-third departments_elements' value='"+value+"'>");
		        			}
		        		       else
		        		       			
		        		       $("#department_div").append("<input type='button' class='btn btn-third departments_elements' value='"+value+"' disabled>");
		        		       		
		        	});
		        	
		        },
		        
		    error: function(){alert("failure");}
		    }); 
			
			
			 

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
    var deadline=new Date("${module.get().application_deadline}");
    var month= deadline.getMonth()+1;
    var date=deadline.getDate();
   if( parseInt(month)<10) month="0"+month;
  if( parseInt(date)<10) date="0"+date;
   	$("#datepicker").val(month+"/"+date+"/"+deadline.getFullYear());
    
 
     
     
     $(".int_only").keypress(function(event) {
         if (event.which != 8 && event.which != 0 && (event.which < 48 || event.which > 57)) {
             return false;
         }
     });

     
    
     	
     
     
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
          data:{module_code:"${module.get().modulecode}",termyear:termyear},
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
    

       

    
     
     $("#create_vacan").click(function(){        
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
       // alert(year);

       	$("#loading").show();
       
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
            	//	alert(this.id);
            	$(this.id).focus();
            	
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
             var with_addi_sub=",";
             if('${candidates.get().yearofuni}'=='7'){
             	
             	subject=$("#subject").val();
             	
             	if($(".departments_elements").length>0)
             	{
             	$(".departments_elements").each(function(index,value){
             		if(index==$(".departments_elements").length-1)
             			with_addi_sub+=this.value;
             		else
             		with_addi_sub+=this.value+",";
                   
             	});
             	subject=subject+with_addi_sub;
             	}
             	
             	
             	

             }
             else{
             	
             	subject="${candidates.get().subject}";
             }
             //alert(subject);
            	$.ajax({
                type: "Get",
                url: "/TA_Gradle/TA/create/vacancy",
             data:
             {subject:subject,description:description,updateinsert:"update",year:"${module.get().year}",module_code:"${module.get().modulecode}",deadline:deadline,title:title,total_hours:total_hours,times:times,master_phd_only:master_phd_only,quntities_TA:quntities_TA,skills:skill_string,IDE:ide_string,p_grade:p_grade,p_ides:p_ides,p_skills:p_skills},
             
             success: function(data){
                 if(data==true){
                	 $("#loading").hide();
                     $("#create_status").html("successful");
                	 setTimeout(
               			  function() 
               			  {
               				
               				  alert("Successfully! you have updated the application!! Please click OK to close the window ");
               					 window.close();
               					 
               			  }, 500);
                     }
                     else{
                         $("#create_status").html("unsuccessful");
                     return;}
         },
         error: function(){alert("failure");
         $("#loading").hide();}
         }); 
     
         });
     
     

    

});
</script>          
<script>//add departent

$(document).ready(function() {
   $('#adddepartment').click(function () {
       var subject_additional=$("#subject_additional").val();

   	var inform=false;
  
       $(".departments_elements").each(function(){
		if(this.value==subject_additional)
       	inform=true;
       });	
       
       //alert(check_value);
  
       	if(inform==true||$("#subject").val()==subject_additional){
       		alert("Oops! You have added the department");
       		return;
       	}
       	else {   
       		
       $("#department_div").append("<input type='button' class='btn btn-third departments_elements' value='"+subject_additional+"'>");
       				
       	}
       	
       /* 	
       $.ajax({
           type: "Get",
           url: "/TA_Gradle/TA/createskill",
        data:{skill:skill},
        success: function( data ) {
       	 $("#skill_filling").val("");
       	 
        },
        
    error: function(){alert("failure");}
    }); 
      
       
       
       */
   }); 
   

   $(document).on("click",".departments_elements", function() {
       var confirmation = confirm('Are you sure you want to delete this action plan/s?');
       if (confirmation == true) {
         $(this).closest(".departments_elements").remove();
         
         
       }
   });
   

 
   $("#subject").change(function(){
	   subject=this.value;
	   var aa
	   var inform;
	   $(".departments_elements").each(function(){
			if(this.value==subject)
	      	inform=true;
	      });
	   if(inform==true){
		   alert("Duplicate department Please change");
		   $("#create_vacan").prop("disabled",true);
		   return;
	   }
	   else
		   $("#create_vacan").prop("disabled",false);   ;
      });	
   
   
   $(".departments_elements").each(function(){
		if(this.value==subject_additional)
      	inform=true;
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
