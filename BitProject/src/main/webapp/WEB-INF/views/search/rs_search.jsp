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
<title>Member Info Main</title>

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

<script>
	$(document).ready(function() {

		$(".logo").click(function() {
			location.href = '/';
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

.logo:hover {
	text-shadow: 0.1em 0.1em 0.15em #333;
}

.logo {
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

.container {
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
	color: #5385c1;
	background-color: white;
}

.bm-container {
	width: 43.6%;
	margin-top: 5.7%;
	margin-left: 20.99%;
	height: auto;
	padding-left: 1%;
	padding-right: 1.7%;
	padding-top: 0.01%;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.1);
}

.bm-row-bottom {
	margin-top: 20px;
	height: 90px;
}

.bm-page-header {
	margin: 0;
	letter-spacing: 2px;
}

.bm-image {
	
}

.bm-subtitle {
	width: 100%;
}

.bm-heart-area {
	vertical-align: middle;
}

.bm-search-area {
	width: 600px;
	height: 30px;
	border-style: none;
}

.bm-lonin_area {
	padding-top: 4px;
}

.pagination {
	color: black;
	margin-left: 3.5%;
}

.bm-line {
	width: 727px;
	margin-left: 0px;
}

.top-row {
	margin-top: 0px;
	width: auto;
	margin-left: 13.5px;
}

.row {
	margin-top: 20px;
	width: 104.3%;
	height: auto;
}

.page-header {
	margin-left: 0px;
	padding-left: 0px;
	padding-bottom: 2%;
	padding-top: 0%;
	font-size: 250%;
	letter-spacing: 2px;
}

.num {
	font-size: 12px;
	height: 10%;
	color: gray;
	width: 100px;
	float: right;
	margin-top: 3.5%;
	margin-right: 30%;
}

.image {
	float: left;
	width: 100px;
	height: 115.9px;
	margin-right: 15px;
	margin-left: 4.3%;
	margin-top: 0.48%;
}

.info {
	float: left;
	width: 73%;
	height: auto;
	padding-top: 1%;
	padding-bottom: 1%;
}

.title {
	width: 100%;
	font-size: 19px;
	font-weight: bold;
	padding: 0px;
	margin: 0px;
	display: block;
	letter-spacing: 2px;
	font-weight: 900;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 1.2em;
}

.subtitle {
	width: 100%;
	padding: 0px;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 1.2em;
}

.details {
	width: 100%;
	height: auto;
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
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
					<input class="search-area" id="search" name="q" type="search" value="${q}">
				</form>
				<button class="btn sch_btn" type="button" value="검색">
					<i class="fa fa-search"></i>
				</button>
				<button class="btn img_sch" type="button" value="이미지검색">
					<i class="fa fa-camera "></i>
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
			<c:if test="${loginVo eq null}">
				<button class="login_btn" id="login_btn">Log in & Join in</button>
			</c:if>
			<c:if test="${loginVo ne null}">

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
								role="menuitem" tabindex="-1" href="#">C/S Center</a></li>
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

			<div class="top-row">
				<div class="page-header">
					Book Search Result
					<div class="num">${totalrec}건</div>
				</div>
			</div>
			<!-- /.row -->
			<c:choose>
				<c:when test="${not empty msg}">
					<h2>${msg}</h2>
				</c:when>
				<c:otherwise>
					<c:forEach items="${searchVo}" var="vo">
						<div class="row">

							<div class="image">
								<a href="#"> <img class="img-responsive" src="${vo.image} "
									alt="">
								</a>
							</div>
							<div class="info">
								<div class="title">
									<a href="search_deatil?detailNo=${ vo.detailNo}">${vo.title}</a>
								</div>
								<div class="subtitle">${vo.subtitle }</div>
								<div class="publisher">${ vo.publisher}</div>
								<div class="writer">${ vo.writer}</div>
								<div class="price">${ vo.price}</div>

							</div>

						</div>
						<!-- /.row -->

						<hr>

					</c:forEach>



				</c:otherwise>
			</c:choose>



			<!-- Pagination -->
			<div class="row text-center">
				<div class="col-lg-12">
					<ul class="pagination">

						<c:if test="${startpage >=1}">

								<c:choose>
							<c:when test="${1 eq pageIndex}"></c:when>
							<c:otherwise><li><a href="/search?q=${q}&p=${pageIndex-1}">&laquo;</a></li></c:otherwise>
							</c:choose>
							<c:forEach step="1" begin="${startpage}" end="${endpage}" var="i">

								<c:choose>
									<c:when test="${pageIndex eq  i}">
										<li><a style="color: white; background-color: #5385c1;"
											href="/search?q=${q}&p=${i}">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="/search?q=${q}&p=${i}">${i}</a></li>

									</c:otherwise>
								</c:choose>


							</c:forEach>
							<c:choose>
							<c:when test="${pagecnt eq pageIndex}"></c:when>
							<c:otherwise><li><a href="/search?q=${q}&p=${pageIndex+1}">&raquo;</a></li></c:otherwise>
							</c:choose>
							
						</c:if>


					</ul>
				</div>
			</div>
		</div>

	</div>
	</div>

</body>
</html>

