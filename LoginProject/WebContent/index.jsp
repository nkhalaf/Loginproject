<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <style type="text/css">
body{
padding:0px ; 
margin:0px ;
height:95vh  ;
background-color:hsla(42, 66%, 82%, 0.22);
}
#pageheaderID{
  background-image: url("cover.jpg");
  background-repeat: repeat-x;
  height: 40%;
  width: 100%;
   margin: 0px;
  padding: 0px;
}

div.page-header .row{
  height: 15%;
  background-color: rgba(0, 0, 0, 0.51);
  text-align: center;
  padding-top:0.5%;
  color: #e6a800;
  border-radius: 15px;
overflow: hidden;

}
div.page-header .row .col-sm-3 a{
  float: right;
  margin: 0px;
  width: 100%;
  color: #ffffff;
    font-size: large;

}
div.page-header .row .col-sm-3 a:hover{
  height: 15%;
  float: right;
  background-color: rgba(230, 168, 0, 0.8);
  color: #ffffff;
  margin-left:4%;
  font-size: x-large;

}
#dropD{
  margin-left: 100%;
  width: 100%;
    width: 100%;
  background-color:#e6a800;
}
#dropD *{
  margin-top:1%;
  width: 100%;
  background-color:#e6a800;
  color: #ffffff;
  font-size: large;

}
#list{
  padding-top:30%;
  background-color: #030303;
  padding-bottom: 70%;
  border-radius: 5px;
  color: #ffffff;
  text-align: center;
}
#list a{
  margin-top:3%;
  margin-bottom: 5%;
  font-size: x-large;
  color: #ffffff;
}
#list a:hover{
  background-color:#e6a800;
   font-size: x-large;
   color: #000000;

}
#news1D{
  border: groove;
  overflow: hidden;
  background-color:rgba(244, 181, 17, 0.13);
  width: 25%;
  border-radius: 6px;
  margin-right:1%;
  margin-left: 1%;
}
#news2D{
  border: groove;
  overflow: hidden;
  background-color:rgba(244, 181, 17, 0.13);
  width: 25%;
  border-radius: 6px;
  margin-right:1%;
  margin-left: 1%;
}
#news3D{
  border: groove;
  overflow: hidden;
  background-color:rgba(244, 181, 17, 0.13);
  width: 25%;
  border-radius: 6px;
  margin-right:1%;
  margin-left: 1%;
}
.col-md-2 img{
  opacity:0.9;
} 


  </style>
</head>
<body>
     <div class="page-header" id="pageheaderID">
          <div class="row" >
                  <div class="col-sm-3">
                   <a href="#" class="btn btn-Link">contact us</a>
                  </div>

                  <div class="col-sm-3"> 
                  <a href="#" class="btn btn-Link" >news</a>
                  </div>
                  <div class="col-sm-3">
                  <a href="#" class="btn btn-Link" id="hs">information</a>
                  </div>
                  <div class="col-sm-3">
                  <a href="Login/Login.jsp" class="btn btn-Link" >Log in </a>
                  </div>
            
          </div>
     </div>
     <div class="container-fu">
       <div class="row">
            <div class="col-md-2">
             <ul class="nav nav-pills nav-stacked" id="list">
             <li ><a href="#">Home</a></li>
             <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown"  id="drd" href="#">cars news
             <span class="caret"></span></a>
             <ul  id="dropD"class="dropdown-menu">
            <li><a href="#">BMW news</a></li>
            <li><a href="#">Mercedes news</a></li>
            <li><a href="#">Chevrolet news</a></li> 
            </ul>
            </li>
  <li><a href="#">Sport</a></li>
  <li><a href="#">Culture</a></li>
</ul>
          </div>

          <div id="news1D" class="col-md-2" >
          <a  id ="news1A" href="#">
          <img  id="news1I" src="M.jpg"width=420 height=300 class="img-thumbnail">
          <hr>
           <pre> the story of journey   .....    </pre>
          </a>
          </div>
           <div id="news2D" class="col-md-2" >
          <a  id ="news2A" href="#">
          <img  id="news2I" src="bm.jpg" width=450 height=300 class="img-thumbnail">
          <hr>
           <pre>
        BMW Design shows at first sight what you can experience with a BMW:dynamics,Passion.،   ....   .    </pre>
          </a>
          </div>
           <div id="news3D" class="col-md-2" >
          <a  id ="news3A" href="#">
          <img  id="news3I" src="shf.jpg" width=450 height=300 class="img-thumbnail">
          <hr>
           <pre>Joy is BMW EfficientDynamics. Reduced fuel consumption and increased driving Pleasure.....    </pre>
          </a>
          </div>
            </div>

       </div>
       <center>
        <h3>this page is made by &copy nabeel khalaf</h3>
        </center>
       <hr>
   </div>
   <script type="text/javascript">
 $(document).ready(function(){
    $('#news1D').hover(function(){
      $('#news1I').attr("class","img-circle");
      $('#news1I').css("opacity","1");


    },
    function(){
             $('#news1I').attr("class","img-thumbnail");
      $('#news1I').css("opacity","0.9");
    });

      $('#news2D').hover(function(){
      $('#news2I').attr("class","img-circle");
      $('#news2I').css("opacity","1");

    },
    function(){
             $('#news2I').attr("class","img-thumbnail");
             $('#news2I').css("opacity","0.9");

    });
  $('#news3D').hover(function(){
      $('#news3I').attr("class","img-circle");
            $('#news3I').css("opacity","1");


    },
    function(){
             $('#news3I').attr("class","img-thumbnail");
             $('#news3I').css("opacity","0.9");

    });


});      

   </script>
</body>
</html>
