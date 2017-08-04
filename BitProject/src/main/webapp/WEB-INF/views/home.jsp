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
<title>Main</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css" media="screen"
	title="no title" charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom style -->
<link rel="stylesheet" href="css/style.css" media="screen"
	title="no title" charset="utf-8">



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$(".btn_img").click(function() {
			$(".container").hide();
			$(".ich_container").show();
		});
		$(".x_btn").click(function() {
			$(".ich_container").hide();
			$(".container").show();
		});
		$("#login_btn").click(function(){
			
			location.href= '/user/join_login'
		});

		$(".ich_btn").click(function() {
			$(".btn_file").click();

		});
		$(".btn_file").on('change', function() {

		
		
			$(".ich-form-horizontal").submit();

		});
	
		
		var success = $("#signsuccess").val();
		alert(success)
		if(success=="ok"){
			alert("로그인 하세요");
		}
		
	});
</script>

<style>
body {
	font-family: 'Lato', sans-serif;
	height: 100%;
	width: 100%
}

.container {
	width: 34%;
	height: 53px;
	margin: 0 auto;
	color: #5385c1;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	top: 50%;
	margin-top: 350px;
	padding-top: 0.1%;
	padding-bottom: 0.1%;
}

.form-horizontal {
	
}

.btn_img {
	color: #5385c1;
	background-color: white;
	border: none;
	font-size: 21px;
	padding-left: 2px;
	margin-left: 8px;
	margin-top: 3px
}

.btn_sch {
	color: #5385c1;
	background-color: white;
	border: none;
	font-size: 21px;
	padding-left: 2px;
	margin-left: 6px;
}

.search-group {
	padding-top: 6px;
	padding-bottom: 6px;
	width: auto;
	height: 100%
}

.search-area {
	width: 100%;
	height: 35px;
	border-style: none;
}

.input_form {
	float: left;
	width: 87%
}

.login_btn {
	padding: auto;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 20px;
	margin-right: 50px;
	cursor: pointer;
	border-radius: 4px line-height: 42px;
	display: block;
	height: 42px;
	cursor: pointer;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

.login_btn:hover {
	background-color: #5385c1;
	color: white;
}

.ich_container {
	display: none;
	width: 36%;
	height: 19%;
	margin: 0 auto;
	background-color: none;
	border: 1px solid #5385c1;
	margin-top: 15%;
	padding-top: 0.2%;
	padding-left: 1%;
	padding-right: 0.2%;
}

.ich-form-horizontal {
	margin-top: 1px;
	margin left: 0px;
	margin-right: 0px;
	width: 78%;
	height: 35px;
	border-style: none;
	text-align: right;
	padding-right: 7px;
	padding-left: 7px;
	letter-spacing: 2px;
	float: left;
}

.uploading_image {
	margin left: 0px;
	margin-right: 10px;
	width: 100%;
	height: 35px;
	border-style: none;
	text-align: right;
	letter-spacing: 2px;
}

.top-title {
	width: 100%;
	height: auto;
	margin: 0;
	margin-bottom: 0px;
	margin-top: 1.8%;
	font-size: 200%;
	margin-bottom: 0%;
	padding-bottom: 0%;
	color: #5385c1;
}

.x_btn {
	width: auto;
	font-size: 130%;
	padding-right: 1%;
	padding-left: 1%;
	padding-bottom: 0%;
	margin-bottom: 0%;
	margin-right: 0;
	color: #5385c1;
	border: none;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	border: none;
	float: right
}

.x_area {
	width: 100%;
	height: 4%;
	margin-right: 0px;
}

.ich_btn {
	text-decoration: none;
	font-size: 13px;
	cursor: pointer;
	height: 37px;
	cursor: pointer;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #5385c1;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

.btn:hover {
	background-color: #5385c1;
	color: white;
}

.ich-search-group {
	width: 98%;
	height: 100%;
	margin: 0 auto;
	background-color: none;
	border: 1px solid #5385c1;
	margin-bottom: 2.3%;
	margin-top: 0px;
	margin-right: 100px;
	padding-top: 6px;
	padding-bottom: 6px;
}

.login_btn {
	padding: auto;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 20px;
	margin-right: 50px;
	cursor: pointer;
	border-radius: 4px line-height: 42px;
	display: block;
	height: 42px;
	cursor: pointer;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #5385c1;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

.login_btn:hover {
	background-color: #5385c1;
	color: white;
}

.imgsc {
	text-decoration: none;
	padding: 5px;
	font-size: 17px;
	font-weight: bold;
	cursor: pointer;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #5385c1;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	float: left;
}

.file-area {
	display: none;
}
</style>
</head>
<body>

	<div class="lonin_area" align="right">
		<button class="login_btn" id="login_btn">Log in & Join in</button>
	</div>
	<div>
		<div class="container">

			<div class="search-group" align="center">
				<form class="input_form" action="/search">
					<input class="search-area" name ="q" id="search" type="search">
				</form>
				<button class="btn_sch" id="sch"  type="submit" value="검색">
					<i class="fa fa-search"></i>
				</button>
				<button class="btn_img" id="img" value="이미지검색">
					<i class="fa fa-camera"></i>
				</button>
			</div>

		</div>


		<div class="ich_container">

			<div class="x_area">
				<button class="x_btn">
					<i class="fa fa-close"></i>
				</button>
			</div>
			<div class="top-title">Image Search</div>
			<br>

			<div class="ich-search-group" align="center">
				<form class="ich-form-horizontal" action="/search_img" method="post"
					enctype="multipart/form-data">
					<input class="uploading_image" id="ich_search" type="search"
						placeholder="Image does not selected">
					<div class="file-area">
						<input class="btn_file" name="file" type="file">
					</div>
				</form>
				<button class="ich_btn" value="Select image">Select image</button>
			</div>
		</div>
	</div>
</body>
<input type="hidden" value="${success}" id="signsuccess"/>
</html>

