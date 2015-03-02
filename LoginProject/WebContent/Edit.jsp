<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.asal.training.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
 <% user  user =(user)request.getAttribute("user");
%>
<center>
<div class="container">
<div class="row"> 
<div class="col-sm-12">  
<form action="Edit" method="post" class="form-horizontal" role="form">
<strong>Name: </strong> <input type="text" value="<%=user.getName()%>"  class="form-control" placeholder="userName"  required><br>
<strong>password </strong> <input  type = "text" name="password"  class="form-control" id = "password" placeholder="password"  value="<%=user.getPassword()%>" required ><br>
<strong>phone</strong>  <input  type = "text" name="phone"  class="form-control" id = "phone" placeholder="phone"  value="<%=user.getPhone()%>" required ><br>
<strong>adress</strong>  <input  type = "text" name="adress"  class="form-control" id = "adress" placeholder="adress"  value="<%=user.getAdress()%>" required ><br>
<strong>Gender</strong>  <input  type = "text" name="gender"  class="form-control" id = "gender" placeholder="gender"  value="<%=user.getGender()%>" required ><br>
<button  type = "button" class="btn btn-defult btn-lg">Edit</button>

</form>
</div>
</div>
</div>
</center>
</body>
</html>