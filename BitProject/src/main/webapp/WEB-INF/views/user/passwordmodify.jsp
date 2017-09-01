<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Modify password</title>

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<script>
	$(document).ready(function() {
		
		$(".logo").click(function(){
	        location.href='/';
	    });
		$(".pass_cansel").click(function(){
			location.href = '/user/bookmark'
		});
		$("#login_btn").click(function() {

			location.href = '/user/join_login'
		});
		$(".img_sch").click(function() {
			$(".btn_file").click();

		});
		$(".btn_file").on('change', function() {
			 var f = this.files[0];
			 
				var maxSize = 4194304;
				
				if(f.size>maxSize||f.fileSize>maxSize){
					  alert("첨부파일 사이즈는 4MB 이내로 등록 가능합니다.    ");
			            return;
				}
			$("#img_search_frm").submit();

		});
		$(".sch_btn").click(function(){
			
			$("#img_search_frm").submit();
		});
		
		$('.pass_btn').click(function(){
			
			$('.passmodifrm').submit();
		});
		
		
		
		
	});
</script>

<style>
@media screen and (max-height: 840px) {
	.navbar {
		height: 50%;
	}
}

@media screen and (max-height: 736px) {
	.navbar {
		height: 50%;
	}
}

@media screen and (max-height: 336px) {
	.navbar {
		height: 50%;
	}
}

@media screen and (max-width: 1680px) {
}

@media screen and (max-width: 1080px) {
}

@media screen and (max-width: 840px) {
	.navbar {
		
	}
}

@media screen and (max-width: 736px) {
}

body {
	font-family: 'Lato', sans-serif;
}

.navbar {
	background-color: #5385c1;
	border: 1px solid white;
	height: 9.3%;
	width: 100%;
}

.logo:hover{
        text-shadow: 0.1em 0.1em 0.15em #333;
    }
    .logo{
        margin-top: 1.1%;
        margin-left: 1.1%;
        font-size: 30px;
        float: left;
        height: auto;
        width: auto;
        cursor: pointer;
        letter-spacing: 19px;
        text-transform: uppercase;
        color: white;
        border: none;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        width: auto;
        outline: none;
        font-weight: 900;
        font-family: 'Yu Gothic Light';
        padding-left: 19px;
        padding-top: 3px;
    } 
    
.container{
   width: 39.2%;
    height: 67%;
   color: #5385c1;
    border: 1px solid white;
    background: transparent;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    background-color: #5385c1;
    float: left;
    margin-left: 18.49%;
    margin-top: 0.8%;
    margin-bottom: 0.9%;
}

.form-horizontal {
	width: 86.5%;
	height: 89%;
	border: none;
	margin-left: 0px;
	padding-left: 0px;
	margin-right: 4px;
	font-size: 15px;
	float: left;
}

.search-area {
	margin-top: 0%;
	margin left: 0px;
	margin-right: 0.37%;
	margin-bottom: 0.9%;
	padding-left: 1%;
	width: 100%;
	height: 100%;
	border-style: none;
	background-color: #5385c1;
	color: white;
	font-size: 18px;
}

.sch_btn {
	outline: none;
	margin-left: 1.4%;
}

.img_sch {
	margin-left: 3%;
	margin-right: 0.5%;
	outline: none;
}

.btn {
	outline: none;
	color: white;
	background-color: #5385c1;
	border: none;
	font-size: 168%;
	padding: 0px;
	margin-top: 0px;
	padding-top: 0.63%;
}

.btn:hover {
	background-color: #5385c1;
	color: white;
	outline: none;
}

.btn:active {
	background-color: #5385c1;
	color: white;
	outline: none;
}

.btn:visited {
	background-color: #5385c1;
	color: white;
	outline: none;
}

.btn:focus {
	background-color: #5385c1;
	color: white;
	outline: none;
}

.search-group {
	margin-left: 0px;
	padding-left: 0px;
	padding-top: 1.2%;
	padding-bottom: 0.5%;
	background-color: #5385c1;
	width: 100%;
	height: 100%;
	border: none;
}

.login_btn {
	padding: auto;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 100%;
	margin-top: 3.78%;
	margin-right: 10%;
	cursor: pointer;
	border-radius: 4px;
	display: block;
	height: 53%;
	cursor: pointer;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: white;
	border: 1px solid white;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	width: auto;
	outline: none;
}

.login_btn:hover {
	background-color: white;
	color: #5385c1;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
	outline: none;
}

.lonin_area {
	width: 23%;
	height: 100%;
	float: right;
}

.lonin_area {
	padding-top: 4px;
}

.file-area {
	display: none;
}

.sidemenu {
	height: 500px;
	width: 200px;
	float: left;
	padding-top: 35px;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	font-size: 16px;
	text-decoration-color: #5385c1;
	float: left;
}

.space {
	height: 100%;
	padding-top: 0%;
	width: auto;
	text-decoration-color: #5385c1;
	margin-top: 4.66%;
	margin-left: 198px;
	margin-right: 1px;
}

.nav-stacked {
	text-align: center;
	cursor: pointer;
	padding-left: 18px;
	padding-right: 18px;
	padding-top: 30px;
	text-decoration-color: black;
}

.active {
	background-color: white;
}

a {
	color: #5385c1;
	background-color: white;
}

a:hover {
	color: white;
	background-color: #5385c1;
}

.bm-container {
	width: 43.6%;
	margin-top: 5.7%;
	margin-left: 20.99%;
	height: 622px;
	padding-left: 1.4%;
	padding-right: 1.7%;
	padding-top: 0%;
	padding-bottom: 0.01%;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
}

.btn-primary {
	padding: auto;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	cursor: pointer;
	border-radius: 4px;
	width: 45%;
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
	margin-right: 2.9%;
	margin-left: 0px;
}

.btn-danger {
	padding: auto;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	cursor: pointer;
	border-radius: 4px;
	width: 45%;
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

.help-block {
	font-size: 12px;
}

.header {
	letter-spacing: 2px;
	color: #5385c1;
	text-transform: uppercase;
	text-decoration: none;
	font-size: 32px;
	border: none;
	margin-top: 120px;
	margin-bottom: 50px;
}

.page-header {
	border: none;
}

.control-label {
	letter-spacing: 2px;
	text-transform: uppercase;
	text-decoration: none;
	display: inline-block;
	font-size: 120%;
	width: 18%;
}

.form-control {
	background-color: white;
	letter-spacing: 2px;
	text-decoration: none;
	display: inline-block;
	font-size: 18px;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	width: 400px;
	height: 35px;
}

.info_area {
	margin-left: 20%;
}

#old_pw {
	border-color: #5385c1;
	font-size: 16px;
}

#new_pw {
	border-color: #5385c1;
	font-size: 16px;
}

#chk_new_pwl {
	border-color: #5385c1;
	font-size: 16px;
}

button:hover {
	background-color: #5385c1;
	color: white;
	border-color: #5385c1;
}

.fa-angle-down {
	height: 24px;
	width: auto;
	float: right;
	border-radius: 1px;
	color: white;
	padding-top: 0px;
	padding-bottom: 0px;
	border: 1px solid #5385c1;
}

.user_name {
	width: auto;
	float: left;
	font-size: 17px;
	margin-right: 6px;
	margin-left: 60px;
	margin-top: 0px;
	border-bottom: 1px solid white;
	color: white;
}

.aft_lonin_area {
	width: 50%;
	margin-top: 24px;
	margin-right: 0px;
}

.dropdown_btn {
	padding-top: 3px;
	padding-bottom: 0px;
	padding-left: 0px;
	padding-right: 2px;
	margin-right: 56px;
	border: none;
	background-color: #5385c1;
	color: white;
}

.dropdown-menu {
	text-transform: uppercase;
	color: #5385c1;
	border: 1px solid #5385c1;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	margin-left: 0;
	box-shadow: 3px 0px 6px 1px rgba(83, 133, 193, 0.1), 0 6px 20px 0
		rgba(83, 133, 193, 0.1);
}

.divider {
	color: #5385c1;
	border: #5385c1;
}

.drdw:hover {
	background-color: #cad9ec;
	color: #5385c1;
}

.drdw:link:active {
	background-color: white;
	color: #5385c1;
}

.drdw:link {
	color: #5385c1;
}

.drdw:visited {
	color: #5385c1;
}

#my_page {
	padding-top: 10px;
	padding-bottom: 5px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="logo">zoom</div>
		<article class="container">

			<div class="search-group">
				<form class="form-horizontal searchfrm" action="/ig_search">
					<input class="search-area" id="search" type="search" name="q">
				</form>
				<button class="btn sch_btn" type="submit" value="검색">
					<i class="fa fa-search"></i>
				</button>
				<button class="btn img_sch" type="submit" value="이미지검색">
					<i class="fa fa-camera"></i>
				</button>
				<form action="/search_img" method="post" id="img_search_frm"
					enctype="multipart/form-data">
					<div class="file-area">
						<input class="btn_file" name="file" type="file">
					</div>
				</form>
			</div>

		</article>
		<div class="lonin_area" align="right">
			<!--
			<button class="login_btn" id="login_btn">Log in & Join in</button>-->
			<div class="aft_lonin_area" align="right">
				<div class="user_name">${loginVo.username}</div>
				<div class="dropdown">
					<button class="dropdown_btn" type="button" id="menu1"
						data-toggle="dropdown">
						<i class="fa fa-th" style="font-size: 24px;"></i>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
						<li role="presentation"><a class="drdw" id="my_page"
							role="menuitem" tabindex="-1" href="/user/bookmark">My Page</a></li>
						<li role="presentation"><a class="drdw" id="cs_center"
							role="menuitem" tabindex="-1" href="/user/faq">C/S Center</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a class="drdw" id="log_out"
							role="menuitem" tabindex="-1" href="/user/logout">Log Out</a></li>
					</ul>
				</div>
			</div>
		</div>

	</nav>

	<nav class="sidemenu">
		<ul class="nav nav-pills nav-stacked">
			<li class="#"><a href="/">Main</a></li>
			<br>
			<br>
			<li class="#"><a href="/user/bookmark">Bookmark</a></li>
			<br>
			<br>
			<li class="#"><a href="/user/faq">C/S Center</a></li>
			<li class="#"><a href="/user/faq">FAQ</a></li>
			<li class="#"><a href="/user/qanda">Q&A</a></li>
			<li class="#"><a href="/user/question">Question</a></li>
			<br>
			<br>
			<li class="#"><a href="/user/modify">modify
					Info</a></li>
			<li class="#"><a href="/user/info">member
					info</a></li>
			<li class="#"><a href="/user/passmodi">password</a></li>
			<li class="#"><a href="/user/secession">leave</a></li>
		</ul>
	</nav>

	<div class="space">
		<div class="bm-container">

			<div class="col-md-12">
				<div class="page-header" align="center">
					<h1 class="header">Modify Password</h1>
				</div>
				<div class="form-horizontal info_area">
					<form action="/user/passmodiOk" method="post" class="passmodifrm">
					<div class="form-group">
						<!--
            <label class="col-sm-3 control-label" for="inputName">Name</label>-->
						<div class="col-sm-9">
							
								<input class="form-control" id="new_pw" type="password"
									name="new_pw" placeholder="input new password" required>
							
						</div>
					</div>
					<div class="form-group">
						<!--
          <label class="col-sm-3 control-label" for="inputEmail">e-mail</label>-->
						<div class="col-sm-9">
							
								<input class="form-control" id="chk_new_pw" type="password"
									name="newpass" placeholder="input new password one more"
									required>
							
						</div>
					</div>
					</form>
					<div class="form-group">
						<div class="col-sm-9 ">
							<button class="btn btn-primary pass_btn" type="button">OK</button>
							<button class="btn btn-danger pass_cansel" type="button">Cansel</button>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>

</body>
</html>
