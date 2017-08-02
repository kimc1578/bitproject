<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Join In</title>

    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="../resources/css/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
	.btn-primary{
		background-color: #5385c1;
	}
        
    .container{
    width: 800px;
    height: auto;
	margin: 0 auto;
    top: 50%;
    margin-top: 100px;
}

.help-block{
    font-size: 12px;
}
    </style>

  </head>
  <body>


      <article class="container">
        <div class="col-md-12">
        <div class="page-header" align = "center">
    	    <h1>Join In</h1>
        </div>
        <form class="form-horizontal" action="/user/joinOk" method="post">
	  <div class="form-group">
          <label class="col-sm-3 control-label" for="inputID">ID</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputID" name="userid" type="text" placeholder="ID">
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">Password</label>
        <div class="col-sm-6">
          <input class="form-control" name="userpw" id="inputPassword" type="password" placeholder="Password">
        <p class="help-block">Password must consist of letters, numbers and punctuation</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">Checking Password</label>
             <div class="col-sm-6">
              <input class="form-control"  id="inputPasswordCheck" type="password" placeholder="Check Your Password">
                <p class="help-block">Insert password one more time</p>
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label"  for="inputName">Name</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputName" name="username" type="text" placeholder="Name">
          </div>
        </div>
      	 <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">e-mail</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputEmail" name="email" type="email" placeholder="e-mail">
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">The terms and conditions</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              Agree about <a href="#">the terms and conditions</a>
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">Join In<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">Cansel<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../resources/js/bootstrap.min.js"></script>
  </body>
</html>
