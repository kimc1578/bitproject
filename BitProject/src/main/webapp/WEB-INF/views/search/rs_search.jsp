<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Search Result</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/1-col-portfolio.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	media="screen" title="no title" charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom style -->
<link rel="stylesheet" href="resources/css/style.css" media="screen"
	title="no title" charset="utf-8">

<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Lato" />

<style>
.navbar {
	background-color: #5385c1;
	border-color: none;
	border-style: none;
}

.image {
	float: left;
	width: 130px;
	height: 150px;
	margin-right: 15px;
	margin-left: 17px;
}

.info {
	width: 548px;
	height: 150px;
	float: left;
}

.title {
	font-size: 24px;
	font-weight: bold;
	padding
	0px;
}

.details {
	height: 94px;
	overflow: hidden;
	text-overflow: ellipsis;
}

.login_btn {
	background-color: white;
	border: none;
	color: #5385c1;
	padding: 4px 9px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 14px;
	margin-right: 2%;
	cursor: pointer;
	border-radius: 4px
}

.lonin_area {
	width: auto;
}

.top-container {
	width: auto;
	height: auto;
	margin: 0 auto;
	margin-left: 375px;
	margin-top: 5px;
	margin-bottom: 5px;
	background-color: #5385c1;
	border-style: solid;
	border-color: #5385c1;
	border-width: thin;
	float: left;
	padding-left: 10px;
}

.search-group {
	height: auto;
	background-color: white;
	width:;
	padding-top: 5px;
	padding-right: 0px;
	padding-left: 0px;
	margin-right: 0px;
	border: 2px solid #5385c1;
	border-radius: 8px;
}

.search-area {
	width: 600px;
	height: 30px;
	border-style: none;
}

.form-horizontal {
	width: auto;
}

.btn {
	color: #5385c1;
	background-color: white;
	border: none;
	font-size: 19px;
	padding-left: 2px;
	margin: 0;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<article class="top-container">
			<form class="form-horizontal" action="/search">
				<div class="search-group">
					<input class="search-area" id="search" type="search" name="q"
						value="${q}">
					<button class="btn" type="submit" value="검색">
						<i class="fa fa-search"></i>
					</button>
					<button class="btn" type="submit" value="이미지검색">
						<i class="fa fa-camera"></i>
					</button>
				</div>
			</form>
		</article>
		<div class="lonin_area" align="right">
			<button class="login_btn">Log in</button>
		</div>
		<!-- /.navbar-collapse -->
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<div class="row2">
			<div class="col-lg-12">
				<h1 class="page-header">
					Search Result
					<!-- <small>Secondary Text</small> -->
				</h1>
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
							<a href="#"> <img class="img-responsive" src="${vo.image} " style="width:100px;"
								alt="">
							</a>
						</div>
						<div class="info">
							<div class="title">${vo.title}</div>
							<div class="subtitle">${vo.subtitle}</div>
							<p class="details">출판사 : ${vo.publisher} <br/>
											지은이 :${vo.writer}<br/>
											가격 :${vo.price}
							</p>
							
						</div>

					</div>
					<!-- /.row -->

					<hr>

				</c:forEach>




				<!-- Title -->
				<div class="row">
					<div class="col-lg-12">
						<h3>Relevant Search Results</h3>
					</div>
				</div>
				<!-- /.row -->

				<!-- Page Features -->
				<div class="row text-center">

					<div class="col-md-3 col-sm-3 hero-feature">
						<div class="thumbnail">
							<img src="http://placehold.it/100x130" alt="">
							<div class="caption">
								<h4 class="sim-title">Feature Label</h4>
								<p class="brief">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit.</p>
								<p>
									<a href="#" class="btn btn-primary">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-3 hero-feature">
						<div class="thumbnail">
							<img src="http://placehold.it/100x130" alt="">
							<div class="caption">
								<h4 class="sim-title">Feature Label</h4>
								<p class="brief">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit.</p>
								<p>
									<a href="#" class="btn btn-primary">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-3 hero-feature">
						<div class="thumbnail">
							<img src="http://placehold.it/100x130" alt="">
							<div class="caption">
								<h4 class="sim-title">Feature Label</h4>
								<p class="brief">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit.</p>
								<p>
									<a href="#" class="btn btn-primary">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-3 hero-feature">
						<div class="thumbnail">
							<img src="http://placehold.it/100x130" alt="">
							<div class="caption">
								<h4 class="sim-title">Feature Label</h4>
								<p class="brief">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit.</p>
								<p>
									<a href="#" class="btn btn-primary">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>

				<!-- /.row -->



				<hr>

				<!-- Pagination -->
				<div class="row text-center">
					<div class="col-lg-12">
						<ul class="pagination">
							<li><a href="/search?q=${q}&p=${pageIndex-1}">&laquo;</a></li>
							<c:forEach step="1" begin="${startpage}" end="${endpage}" var="i">
						
								
								<li><a href="/search?q=${q}&p=${i}&title=${title}">${i}</a></li>
							
							</c:forEach>

							<li><a href="/search?q=${q}&p=${pageIndex+1}">&raquo;</a></li>
						</ul>
					</div>
				</div>
				<!-- /.row -->

				<hr>

				<!-- Footer -->
				<footer>
					<div class="row">
						<div class="col-lg-12">
							<p>Copyright &copy; Your Website 2017</p>
						</div>
					</div>
					<!-- /.row -->
				</footer>

			</c:otherwise>
		</c:choose>
		<!-- Project One -->

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>

</html>

