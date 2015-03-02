<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <style type="text/css">

.page-header{

background-color: rgba(188, 188, 188,0.2);
text-align: center;
}
#form2{
width:50%;
height:50%;
margin-left:25%;
margin-right: 25%;
margin-top: 19%;
border: 2px solid;
border-radius: 25px;
background-color: rgba(188, 188, 188,0.2);
}
.col-sm-12{
background-color: rgba(188, 188, 188,0.2);
width:100%;
margin-top: 20%;
font-size:xx-large;
}
#password,#userName{
margin-top:3%;
width:80%;
}
#LoginB{
width:80%;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body bgcolor="#E6DDD4">

<div class="page-header">
  <h1>Login please</h1>
</div>
<div class="container">
<center>
<form action="Login.do" method="post" class="form-horizontal" role="form" id="form2" >
    <div class="form-group">
<input type="text" name = "userName" id="userName"  class="form-control" placeholder="userName"  required  >
</div>
    <div class="form-group">
<input type = "password" name="password"  class="form-control" id = "password" placeholder="password" required >
</div>
    <div class="form-group">
<input type = "submit" value="Log in"  class="btn btn-primary  btn-block" id="LoginB" > 
</div>
</form>
</center>
</div>
<div class="row">
<div class="col-sm-12"> this page Copyright &copy nabeel Khalaf</div>
</div>
</body>
</html>