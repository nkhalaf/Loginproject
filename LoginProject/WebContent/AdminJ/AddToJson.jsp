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
<table>
<tr>
<input type="button" value="addText" id="addT"  class="btn btn-primary" onclick="addT()"/>
<input type="button"  value = "addButton"  id="addB" class="btn btn-primary"  onclick="addB()"/>
<input type="button"  value= "addPassword" id= "addP" class="btn btn-primary"  onclick="addP()" />
<input type="button"  value= "addSelect" id= "addS" class="btn btn-primary"  onclick="addS()" />
</table>

<div class="container" id="addC">
<pre>assdf</pre>
</div>
<script type="application/x-javascript" >
function addT(){
	$('#addC').empty();
	$('#addC').append("<from  action=\"/AddtoJson\" method=\"get\" id=\"formId_text\" >");
	$('#addC').append("</form>");
	$('#formId_text').append(" the input  value is ");
	$('#formId_text').append("<input type='text' name='value'  id='value' class=\"form-control\"  />  <br />" );
	$('#formId_text').append(" the tag type is");
	$('#formId_text').append("<input type='text' name='type'  id='type' class=\"form-control\" value=\"text\"\" />  <br />");
	
	$('#formId_text').append(" the input text  name is ");
	$('#formId_text').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_text').append(" the tag input text id is");
	$('#formId_text').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_text').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"doSubmit()\"/>  ");

	
}
function addP(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\"  id=\"formId_Password\" >");
	$('#addC').append("</form>");
	$('#formId_Password').append(" the input  value is ");
	$('#formId_Password').append("<input type='text' name='value' id='value'class=\"form-control\" />  <br />" );
	$('#formId_Password').append(" the tag type is");
	$('#formId_Password').append("<input type='text' name='type'  id='type'class=\"form-control\" value =\"password\"/>  <br />");
	
	$('#formId_Password').append(" the input password name is ");
	$('#formId_Password').append("<input type='text' name='name'  id='name'class=\"form-control\" />  <br />" );
	$('#formId_Password').append(" the tag  password id is");
	$('#formId_Password').append("<input type='text' name='id'  id='id'class=\"form-control\"  />   <br />");
	$('#formId_Password').append("<input type='button'  class='btn btn-primary' value='add to json'   onclick=\"doSubmit() />  ");

	
	
}
function addB(){
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id =\"formId_buttons\">");
	$('#formId_buttons').append(" the button value is ");
	$('#formId_buttons').append("<input type='text' name='value'  id='value' class=\"form-control\"  />  <br />" );
	$('#formId_buttons').append(" the tag type is");
	$('#formId_buttons').append("<input type='text' name='type'  id= 'type' class=\"form-control\"  value=\"button\"/>  <br />");
	$('#formId_buttons').append(" the input   button name is ");
	$('#formId_buttons').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#formId_buttons').append(" the tag button id is");
	$('#formId_buttons').append("<input type='text' name='id'   id='id' class=\"form-control\"  />   <br />");
	$('#formId_buttons').append("<input type='button'  class='btn btn-primary' value='add to json'  onclick=\"doSubmit()\"/>  ");
}
function addS(){
	
	$('#addC').empty();
	$('#addC').append("<from  role=\"form\" action=\"http://localhost:8080/LoginProject/AddtoJson\" method=\"get\"  id=\"fromId_select\">");
	$('#addC').append("</form>");
	$('#fromId_select').append(" the tag type is");
	$('#fromId_select').append("<input type='text' name='type' class=\"form-control\" value =\"Select\"/>  <br />");
	$('#fromId_select').append(" the input   Select name is ");
	$('#fromId_select').append("<input type='text' name='name'  id='name' class=\"form-control\" />  <br />" );
	$('#fromId_select').append(" the tag Select id is");
	$('#fromId_select').append("<input type='text' name='id' id='id' class=\"form-control\"  />   <br />");
	$('#fromId_select').append(" number of options ");
	$('#fromId_select').append("<input type='text'  id=\"number_of_options\"  name='number_of_Options' class=\"form-control\" onkeydown=\"checkInput()\"  />   <br />");
    $('#fromId_select').append("<div id='options'> </div>");
	$('#fromId_select').append("<input type='submit'  class='btn btn-primary' value='add to json' />  ");
}
function checkInput(){
var number_of_options  = $('#number_of_options').val();
var  i = 0; 
$('#options').empty();
for( i=0 ; i<number_of_options ; i++){
	$('#options').append(" the tag type is");
	$('#options').append("<input type='text' name='type' class=\"form-control\" value =\"option\"  />  <br />"); 
	$('#options').append(" the option value is ");
	$('#options').append("<input type='text' name='value'  class=\"form-control\" />  <br />" );
	$('#options').append(" the option id is");
	$('#options').append("<input type='text' name='id' class=\"form-control\"  />   <br />");
	$('#options').append(" the option htmlValue is");
	$('#options').append("<input type='text' name='HtmlValue' class=\"form-control\"  />   <br />");
	$('#options').append("<hr />");
}
}
function doSubmit(){
    var  name =$('#name').val();
    var value=  $('#value').val();
    var id =$('#id').val();
    var tag_type=$('#type').val();
    alert(name);
	$.ajax({
	    url : "http://localhost:8080/LoginProject/AddtoJson",
	    type: "POST",
	    data:{
	    	Tname:name,
	    	Tvalue:value,
	    	Tid:id,
	    	Ttype:tag_type
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


}

</script>
</body>
</html>