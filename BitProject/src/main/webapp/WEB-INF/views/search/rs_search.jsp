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
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script>
    
        $(document).ready(function(){
            
            
            $(".bookmark").click(function(){
                
                                       
                      var bookmark = $("#bookmark").val();
             
                if(bookmark=="false"){
                    $("#bookmark").val("true");
                    $(this).css("color","red");
                    
                }else{
                    $("#bookmark").val("false");
                    $(this).css("color","gray");
                    
                
            }
            });
            
           
        });
    </script>

<style>
    
    @media screen and (max-height: 840px){
        .navbar{
            height: 50%;
        }
    }
    
      @media screen and (max-height: 736px){
        .navbar{
            height: 50%;
        }
    }
    
    @media screen and (max-height: 336px){
        .navbar{
            height: 50%;
        }
    }
    
    
    @media screen and (max-width: 1680px) {

	

	}

	@media screen and (max-width: 1080px) {

		

	}

	@media screen and (max-width: 840px) {
         .navbar{

    }


	}

	@media screen and (max-width: 736px) {

	

	}
     body{
        font-family: 'Lato', sans-serif;
    }  
    .navbar{
        background-color: #5385c1;
        border: 1px solid white;
        height:9.3%;
        width: 100%;
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
    margin-left: 29.14%;
    margin-top: 0.9%;
    margin-bottom: 0.9%;
}

.form-horizontal{
    height: 100%;
   background-color: #5385c1;
}
    
    .sch_btn{
        margin-left: 1.4%
    }
    
    .img_sch{
        margin-left: 2.7%;
        margin-right: 0.5%;
    }
        
.btn{
    color: white;
    background-color: #5385c1;
    border: none;
    font-size: 142%;
    padding: 0px;
    margin-top: 0px;
}

.btn:hover{ 
  background-color:#5385c1;
  color: white;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
  }    
    
        
.search-group{
      padding-top: 0.4%;
      padding-bottom: 0.4%;
      background-color: #5385c1;
      width: auto;
      height: 33%;
}

.search-area{
   margin-top: 1.3%;
   margin left: 0px;
   margin-right: 0.37%;
   margin-bottom: 0.9%;
   width: 87.6%;
   height: 250%;
   border-style: none;
    background-color: #5385c1;
    color: white;
}

.login_btn{
    padding: auto;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 100%;
    margin-top: 4.6%;
    margin-right: 10%;
    cursor: pointer;
    border-radius: 4px   
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
    
}

.login_btn:hover{ 
  background-color:white;
  color: #5385c1;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
  }
     .lonin_area{
        width: 23%;
        height: 100%;
        float: right;
    }

    .sidemenu{
        height: 500px;
        width:200px;
        float:left;
        padding-top: 35px;
        letter-spacing: 2px;
        text-transform: uppercase;
        color: #263238;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        font-size: 16px;
        text-decoration-color: #263238;
        float: left;
        
    }

    .space{
        height: 100%;
        padding-top: 0%;
        width:auto;
        text-decoration-color: #263238;
        margin-top: 4.66%;
        margin-left: 198px;
        margin-right: 1px;
        
    }
  
    .nav-stacked{
        text-align: center;
        cursor: pointer;
        padding-left: 18px;
        padding-right: 18px;
        padding-top: 30px;
        text-decoration-color: black;

    }
    .active{
        background-color: white;
    }
    
    a{
        color: #5385c1;
        background-color: white;
    }
    
    a:hover{
        color: white;
        background-color: #5385c1;
    }

    .bm-container{
        width: 43.6%;
        margin-top:5.7%;
        margin-left: 20.99%;
        height: auto;
        padding-left: 1%;
        padding-right: 1.7%;
        padding-top: 0.01%;
        background-color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
        
    }
  
    .bm-row-bottom{
        margin-top : 20px;
        height: 90px;
    }
   
    .bm-page-header{
        margin: 0;
        letter-spacing: 2px;
    }
    .bm-image{
        
    }
 
    .bm-subtitle{
        width: 100%;
    }

    .bm-heart-area{
        vertical-align: middle;
    }
    .bm-search-area{
        width: 600px;
        height: 30px;
        border-style: none;
    }

    .bm-lonin_area{
        padding-top: 4px;
    }
    
    .pagination{
    color: black;
    }
    .bm-line{
        width:727px;
        margin-left: 0px;
    }
    .top-row{
        margin-top: 0px;
        width: auto;
        margin-left: 13.5px;
    }
    .row{
        margin-top : 20px;
        width: 648px;
    }
 
    .page-header{
        margin-left: 0px;
        padding-left: 0px;
        padding-bottom: 2%;
        padding-top: 0%;
        font-size: 250%;
        letter-spacing: 2px;
    }
    .image{
        float:left;
        width:130px;
        height:147px;
        margin-right:15px;
        margin-left: 4.3%;
        margin-top: 0.48%;
    }
    .info{
        float:left;
        width: 70%;
        height: 149px;
        padding-bottom: 24.4%;
    }
    .title{
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        padding: 0px;
        margin: 0px;
        display:block;
        letter-spacing: 2px;
        
    }
    subtitle{
        width: 100%;
        padding: 0px;
        margin: 0px;
        padding: 0px;
    }
    .details{
        width: 118%;
        height: 98px;
        overflow: hidden;
        display:block;
        text-overflow:ellipsis;
        padding-bottom: 4%;

    }
    
    .heart-area{
        width: auto;
        height: auto;
        margin-left: 94% 
    }
    .search-area{
        width: 84%;
        height: 35px;
        border-style: none;
        margin-left: 11px;
        margin-right: 10px;
        font-size: 15px;
    }
    .lonin_area{
        padding-top: 4px;
    }
    
 
    
    .pagination{
        border-color: #5385c1;
        color: #5385c1;
    }

    
</style>
  </head>
  <body>
      
       <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
             <article class="container">
        <form class="form-horizontal">
	  <div class="search-group">
		<input class="search-area" id="search" name ="q"  type="search">
                <button   class= "btn sch_btn" type="submit" value="검색" ><i class="fa fa-search"></i></button>
                <button   class= "btn img_sch" type="submit" value="이미지검색" ><i class="fa fa-camera"></i></button>
          
        </div>
        </form>
      </article>
            <div class="lonin_area" align="right">
			<button class="login_btn" id="login_btn">Log in & Join in</button>
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
                <h1 class="page-header">Search Result
                    <!-- <small>Secondary Text</small> -->
                </h1>
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



			</c:otherwise>
		</c:choose>

                

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
        </div>

            </div>    
      </div>

  </body>
</html>

