
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
<style type="text/css">
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%String json = (String)request.getAttribute("json"); 
%>

	<div id="nbeel1">

		<textarea id="jsonA" style="display: none;">
<%
out.print(json); %>
</textarea>
	</div>
	<script type="text/javascript">
$( document ).ready(function() {
	var jsonn = $('#jsonA').val();
	var i=0;
	var i2=0;
	var result = jQuery.parseJSON(jsonn);
	var form ;

	
	
	for(i2 = 0  ;  i2<result.tags.length ; i2++){
		if(result.tags[i2].tag=="form" 	){
			form=result.tags[i2];
			$('#nbeel1').append("<form id='"+form.id+"' action=\"AddToJson.do\" method=\"post\">  </form>");
		}	
	}
	
	for(i2 = 0  ; i2<result.tags.length ;i2++){

		if(result.tags[i2].tag=="input" ){
		     if(result.tags[i2].tagType=="password" || result.tags[i2].tagType=="text"){	
	          $('#'+form.id+'').append(" <input type= \""+result.tags[i2].tagType+"\"  placeholder=\""+result.tags[i2].placeholder+"\"  class='form-control'  id=\""+result.tags[i2].tagId+"\" name='"+result.tags[i2].tagName+"' value='"+result.tags[i2].value+"'>");
	          $('#'+form.id+'').append("<br>");
	        
	        	  
	        	  
		     }
	        
		     else if(result.tags[i2].tagType=="radio"){
		    	 $('#'+form.id+'').append("<div class='radio'>");
		    	 if(result.tags[i2].ischecked=="yes")
		    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' name='"+result.tags[i2].tagName+"' checked >"+result.tags[i2].value+"");
		    	 else
		    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' name='"+result.tags[i2].tagName+"' >"+result.tags[i2].value+"");
		    	 $('#'+form.id+'').append("<br>");
		    	 $('#'+form.id+'').append("</div>");
		    

		     }
		     else if(result.tags[i2].tagType=="checkbox") {
		    	 $('#'+form.id+'').append("<div class='checkbox'>");
		    	 if(result.tags[i2].ischecked=="yes")
		    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' name='"+result.tags[i2].tagName+"'class='' checked>"+result.tags[i2].value+""); 
		    	 else
			    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' name='"+result.tags[i2].tagName+"'class='' >"+result.tags[i2].value+""); 

		    	 $('#'+form.id+'').append("<br>");
		    	 $('#'+form.id+'').append("</div>");
		     }
		     if(result.tags[i2].tagType=="button"){
		    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' value='"+result.tags[i2].value+"'  class='btn btn-primary  btn-lg'>"); 
		     }
		     if(result.tags[i2].tagType=="submit"){
		    	 $('#'+form.id+'').append("<input type='"+result.tags[i2].tagType+"' id='"+result.tags[i2].tagId+"'  value='"+result.tags[i2].value+"' value='"+result.tags[i2].value+"'  class='btn btn-primary  btn-lg'>"); 
		     }
		     
         }
		
		
		if(result.tags[i2].tag=="select"){
	    $('#'+form.id+'').append("<select   class=\"form-control\"  id=\""+result.tags[i2].select.selectID+"\"  name='select'   >");

	     
	        for (i = 0; i < result.tags[i2].select.options.length; i++) {		
	        $("#"+result.tags[i2].select.selectID+"").prepend("<option value='"+result.tags[i2].select.options[i].optionHtml+"'  >"+result.tags[i2].select.options[i].optionHtml+"</option>");
		}
		 $('#'+form.id+'').append("</select>");
	    }
		$('#'+form.id+'').append("<br>");
		
	}
	$( "#sendId" ).click(function() {
    	alert("here");

	        var chickboxlist_id = [];
	        $('#nbeel1 input:checked').each(function() {
	        	chickboxlist_id.push(this.value);
	        });
            var i=0;
	   	for(i = 0  ; i<result.tags.length ;i++){
	    		if(result.tags[i].tagType=="password"||result.tags[i].tagType=="text"){
	        		result.tags[i].value = $('#'+result.tags[i].tagId+'').val();    
	        	}

	        	if(result.tags[i].tagType=="radio"){
	        		if(result.tags[i].tagId==$("input:radio[name=sex]:checked" ).attr('id'))
	        		result.tags[i].ischecked = "yes";
	        		else
	        			result.tags[i].ischecked = "no";	
	        	}
	        	if(result.tags[i].tagType=="checkbox")
	            {
	        		 if($('#'+result.tags[i].tagId+'').prop('checked')){
	        			 result.tags[i].ischecked = "yes";
	        		 }
	        		 else
		        			result.tags[i].ischecked = "no";	

	        		
	           }
	        	
	    		
	    	}
	 	var json_text = JSON.stringify(result);
    	console.log(json_text);
	    $('#formId').append('<textarea rows="4" cols="50">'+json_text+'</textarea>');
	    
	    
	    			$.ajax({
			    url : "InsertJson",
			    type: "POST",
			    data:{
			    	json:json_text
			    },
			    success: function(data, textStatus, jqXHR)
			    {
			        alert("success");
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	   alert("error");
			    }
			});
	    	
		});

});


</script>
</body>
</html>
