<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Join In</title>

    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/css/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
     
.button {
    background-color: #5385c1;
    border: none;
    color: white;
    padding: 8px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


.button1 {border-radius: 4px;}

.container{
	width: 350px;
    height: auto;
	margin: 0 auto;
	background-color: rgba(83,133,193,0.2);
    top: 50%;
    margin-top: 10%;
}
        
.btn2{
    background-color: rgba(83,133,193,0);
    border: none;
}
        
.join{
    color: #5385c1;
    padding-right: 85px;
}
        
.forgot{
    color: #5385c1;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
 

	
});


</script>
  </head>
  <body>
      
      <article class="container">
        <div class="col-md-12" align = "center">
        <div class="page-header" >
    	    <h1>Log In</h1>
        </div>	
        <form class="form-horizontal" action="/user/loginOk" method="post">
	  <div class="form-group" >
            <div class="col-sm-12">
		<input class="form-control" id="inputID" type="text" name="userid" placeholder="ID" align = "center">

            </div>
        </div>
        <div class="form-group">
          
        <div class="col-sm-12">
          <input class="form-control" id="inputPassword" name="userpw" type="password" placeholder="Password" align = "center">
        </div>	
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center" >
            <button class="button button1" type="submit">Log In</button>
          </div>
        </div>
        <div class="form-group">
            
          <div class="join_area" >
            <button class="btn2 join">Join in</button>
              <button class="btn2 forgot">Forgot your password?</button>  
            </div>          
        </div>
        </form>
          <hr>	
        </div>
      </article>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
