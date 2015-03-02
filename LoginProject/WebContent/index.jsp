<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <style type="text/css">
  .body{
  background-color: #E6DDD4;
  
  }
.page-header{
background-color: #E6DDDD;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="page-header">
  <h1>Example Page Header</h1>
</div>
<div class="container">
<center>
<form action="Login.do" method="post" class="form-horizontal" role="form" >
    <div class="form-group">
<input type="text" name = "userName" id="userName"  class="form-control" placeholder="userName"  required  >
</div>
    <div class="form-group">
<input type = "password" name="password"  class="form-control" id = "password" placeholder="password" required >
</div>
    <div class="form-group">
<input type = "submit" value="send"  class="btn btn-primary  btn-lg" > 
</div>
</form>
</center>
</div>
</body>
</html>