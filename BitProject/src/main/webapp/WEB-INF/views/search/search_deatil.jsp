<%@page import="kr.co.bit.mongo.book.domain.vo.BookDetailVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Detail</title>

<!-- Bootstrap -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="./resources/css/font-awesome.min.css"
	media="screen" title="no title" charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom style -->
<link rel="stylesheet" href="./resources/css/style.css" media="screen"
	title="no title" charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
	$(document)
			.ready(
					function() {

						var bookmark = $("#bookmark").val();
						
						if (bookmark == "false") {
							$('.bookmarkicon').css("color", "#eadde1");
						} else {

							$('.bookmarkicon').css("color", "#fe8f9d");
						}

						$(".bookmarkicon")
								.click(
										function() {

											var userid = $('#userid').val();

											if (userid == "") {
												alert("로그인 후 이용하세요");
												location.href = '/user/join_login';
											} else {

												if ($("#bookmark").val() == "false") {
													var bookmarkfrm = $(
															'#bookmarkfrm')
															.serialize();
													$
															.ajax({
																url : '/user/bookmarkadd',
																type : 'POST',
																data : bookmarkfrm,
																contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
																beforeSend : function() {
																	//통신을 시작할때 처리되는 함수 
																	$('html')
																			.css(
																					"cursor",
																					"wait"); // 현재 html 문서위에 있는 마우스 커서를 로딩 중 커서로 변경
																},
																complete : function() {
																	//통신이 완료된 후 처리되는 함수
																	$('html')
																			.css(
																					"cursor",
																					"auto"); // 통신이 완료 된 후 다시 일반적인 커서 모양으로 변경
																},
																success : function(
																		result) {
																	$(
																			'.bookmarkicon')
																			.css(
																					"color",
																					"#fe8f9d");
																	$(
																			"#bookmark")
																			.val(
																					result);
																}

															});

												} else if ($("#bookmark").val() == "true") {

													var bookmarkfrm = $(
															'#bookmarkfrm')
															.serialize();
													$
															.ajax({
																url : '/user/bookmarksub',
																type : 'POST',
																data : bookmarkfrm,
																contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
																beforeSend : function() {
																	//통신을 시작할때 처리되는 함수 
																	$('html')
																			.css(
																					"cursor",
																					"wait"); // 현재 html 문서위에 있는 마우스 커서를 로딩 중 커서로 변경
																},
																complete : function() {
																	//통신이 완료된 후 처리되는 함수
																	$('html')
																			.css(
																					"cursor",
																					"auto"); // 통신이 완료 된 후 다시 일반적인 커서 모양으로 변경
																},
																success : function(
																		result) {
																	$(
																			'.bookmarkicon')
																			.css(
																					"color",
																					"#eadde1");
																	$(
																			"#bookmark")
																			.val(
																					result);
																}

															});

												}

											}

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

							if (f.size > maxSize || f.fileSize > maxSize) {
								alert("첨부파일 사이즈는 4MB 이내로 등록 가능합니다.    ");
								return;
							}
							$("#img_search_frm").submit();

						});

						$(".sch_btn").click(function() {

							$(".searchfrm").submit();
						});
						
						$(".logo").click(function(){
					        location.href='/';
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
	margin-top: 6%;
	margin-left: 20.99%;
	height: 100%;
	padding-left: 1.7%;
	padding-right: 1.7%;
	padding-top: 1%;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
}

.bm-row {
	margin-top: 20px;
	height: 159px;
	width: 99%;
}

.bm-image {
	float: left;
	width: 130px;
	height: 147px !important;
	margin-right: 3%;
	margin-left: 0.1%;
	margin-top: 3px;
}

.bm-info {
	float: left;
	width: 74%;
	height: 149px;
}

.bm-title {
	width: 100%;
	font-size: 24px;
	font-weight: bold;
	padding: 0px;
	margin: 0px;
	display: block;
	letter-spacing: 2px;
}

.bm-subtitle {
	width: 100%;
	;
}

.bm-details {
	width: 103%;
	height: 98px;
	overflow: hidden;
	display: block;
	text-overflow: ellipsis;
}

hr {
	width: auto;
}

.btn-primary {
	background-color: #5385c1;
	color: white;
	padding-right: 8%;
	padding-left: 9%;
	padding-top: 2%;
	padding-bottom: 2%;
}

.thumbnail {
	width: 89%;
}

.hero-feature {
	padding: 0.8%;
}

.col-lg-12 {
	padding-left: 2%;
}

.details {
	padding-left: 0.7%;
	padding-right: 0.7%;
	word-break: break-all;
}

.file-area {
	display: none;
}

.title {
	width: 100%;
	font-size: 19px;
	font-weight: bold;
	padding: 0px;
	margin: 0px;
	display: block;
	letter-spacing: 2px;
}

.fa-angle-down {
	height: 24px;
	width: auto;
	float: right;
	border-radius: 1px;
	color: white;
	padding-top: 0px;
	padding-bottom: 0px;
	border: 1px solid black;
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

.img-responsive {
	height: 147px !important;
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
				<form class="form-horizontal" action="/ig_search">
					<input class="search-area" id="search" name="q" type="search" value="${ q}">
				</form>
				<button class="btn sch_btn" type="button" value="검색">
					<i class="fa fa-search"></i>
				</button>
				<button class="btn img_sch" type="button" value="이미지검색">
					<i class="fa fa-camera"></i>
				</button>
				<form id="img_search_frm" action="/search_img" method="post"
					enctype="multipart/form-data">
					<div class="file-area">
						<input class="btn_file" name="file" name="file" type="file">
					</div>
				</form>
			</div>

		</article>
		<div class="lonin_area" align="right">
			<c:if test="${loginVo eq null}">
				<button class="login_btn" id="login_btn">Log in & Join in</button>
			</c:if>
			<c:if test="${loginVo ne null}">
				<div class="aft_lonin_area" align="right">
					<div class="user_name">${loginVo.username}</div>
					<div class="dropdown">
						<button class="dropdown_btn" type="button" id="menu1"
							data-toggle="dropdown">
							<i class="fa fa-th  " style="font-size: 24px; color: white;"></i>
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
			</c:if>
		</div>
		<!-- /.navbar-collapse -->

	</nav>
	<!-- menu 
      <nav class="sidemenu">
      <ul class="nav nav-pills nav-stacked">
     <li class="#"><a href="Main.html">Main</a></li>
  <br>
  <br>
  <li class="#"><a href="bookmark_final_black.html?q=q">Bookmark</a></li>
  <br>
  <br>
  <li class="#"><a href="FQA_final.html">C/S Center</a></li>
  <li class="#"><a href="FQA_final.html">FQA</a></li>
  <li class="#"><a href="Q&A_final.html">Q&A</a></li>
  <br>
  <br>
  <li class="#"><a href="#">modify Info</a></li>
  <li class="#"><a href="#">member info</a></li>
  <li class="#"><a href="#">password</a></li>
  <li class="#"><a href="#">leave</a></li>
</ul>
      </nav>
      -->
	<div class="space">
		<div class="bm-container">

			<div class="bm-row">

				<div class="bm-image">

					<c:choose>
						<c:when test="${bookdetailinfo eq null }">

							<a href="#"> <img class="img-responsive" src="${bookinfo.image}"
								alt="이미지 준비중...">
							</a>
						</c:when>
						<c:otherwise>
							<a href="#"> <img class="img-responsive"
								src="${bookdetailinfo.image}" alt="이미지 준비중...">
							</a>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="bm-info">
					<div class="bm-title">${bookinfo.title}</div>
					<!-- 하트 아이콘 북마크-->

					<!-- <i class="fa fa-heart bookmark after"> -->

					<div class="bm-subtitle">${bookinfo.subtitle}</div>
					<div class="publisher">${bookinfo.publisher}</div>
					<div class="writer">${bookinfo.writer}</div>
					<div class="price">${bookinfo.price}</div>
				</div>
				<div class="bm-heart-area">
					<i class="fa fa-heart bookmarkicon" style="font-size: 25px;"></i><input
						type="hidden" value="${bookmarkcheck}" id="bookmark" />
				</div>
			</div>

			<!-- /.row -->
			<hr>



			<%-- 	 	<c:forEach items="${ bookdetailinfo.about}" var="info">
				<div class="details ">
					<div class="title">${info}<br>
							
					</div>


				</div>

				<!-- /.row -->
				<hr>

			</c:forEach>  --%>

			<%
				BookDetailVo vo2 = (BookDetailVo) request.getAttribute("bookdetailinfo");
				if (vo2 != null) {
					for (int i = 0; i < vo2.getAboutList().size(); i++) {
			%>

			<div class="details ">
				<div class="title">

					<%=vo2.getAboutList().get(i)%>
				</div>
				<%=vo2.getAbout().get(i)%>

			</div>

			<!-- /.row -->
			<hr>
			<%
				}
				}
			%>




		</div>

	</div>
	<form id="bookmarkfrm" style="display: none;">
		<input type="hidden" name="title" value="${bookinfo.title}" /> <input
			type="hidden" name="publisher" value="${bookinfo.publisher}" /> <input
			type="hidden" name="writer" value="${bookinfo.writer}" /> <input
			type="hidden" name="subtitle" value="${bookinfo.subtitle}" /> <input
			type="hidden" name="image" value="${bookinfo.image}" /> <input
			type="hidden" name="price" value="${bookinfo.price}" /> <input
			type="hidden" name="detailNo" value="${bookinfo.detailNo}" /> <input
			type="hidden" id="userid" name="userid" value="${loginVo.userid}" />
	</form>
</body>




</html>
