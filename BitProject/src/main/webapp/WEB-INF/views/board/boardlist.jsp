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
    <link rel="stylesheet" href="./resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom style -->
    <link rel="stylesheet" href="./resources/css/style.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     

    
    <script>
    
       $(document).ready(function(){
    
    $(".img_sch").click(function(){
        $(".btn_file").click();
    });
    
    $(".login_btn").click(function(){
    	$(".login_btn").hide();
        $(".aft_lonin_area").show();
        $(".aft_lonin_area").css("display","show");
     });   
    
    $("#log_out").click(function(){
        $(".fpt_lonin_area").hide();
    	$(".login_btn").show();
        $(".aft_lonin_area").css("display","none");
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
    margin-top: 0.8%;
    margin-bottom: 0.9%;
}

.form-horizontal{
   width: 86.5%;
        height: 89%;
        border: none;
        margin-left: 0px;
        padding-left: 0px;
        margin-right: 4px;
        font-size: 15px;
    float: left;
}
    
.search-area{
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
    
    .sch_btn{
        outline: none;
        margin-left: 1.4%;
        
    }
    
    .img_sch{
        margin-left: 3%;
        margin-right: 0.5%;
        outline: none;
    }
        
.btn{
    outline: none;
    color: white;
    background-color: #5385c1;
    border: none;
    font-size: 168%;
    padding: 0px;
    margin-top: 0px;
    padding-top: 0.63%;
}

.btn:hover{ 
  background-color:#5385c1;
  color: white;
  outline: none;
  
  }
    
.btn:active{ 
  background-color:#5385c1;
  color: white;
  outline: none;
  
  }
    
.btn:visited{ 
  background-color:#5385c1;
  color: white;
  outline: none;
 
  } 
.btn:focus{ 
  background-color:#5385c1;
  color: white;
  outline: none;
 
  }
 
.search-group{
      margin-left: 0px;
      padding-left: 0px;
      padding-top: 1.2%;
      padding-bottom: 0.5%;
      background-color: #5385c1;
      width: 100%;
      height: 100%;
      border: none;
}


    


.login_btn{
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

.login_btn:hover{ 
  background-color:white;
  color: #5385c1;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
    outline: none;
  }
     .lonin_area{
        width: 23%;
        height: 100%;
        float: right;
    }
    
    .lonin_area{
        padding-top: 4px;
    }
    
    
    .file-area{
        display: none;
    }

    .sidemenu{
        height: 500px;
        width:200px;
        float:left;
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

    .space{
        height: 100%;
        padding-top: 0%;
        width:auto;
        text-decoration-color: #5385c1;
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
        height: 660px;
        padding-left: 1.4%;
        padding-right: 1.7%;
        padding-top: 1.6%;
        padding-bottom: 0.01%;
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
    
    #hor-minimalist-b
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 13px;
	background: #fff;
	margin: 45px;
	width: 700px;
	border-collapse: collapse;
	text-align: left;
    letter-spacing: 2px;
    color: #5385c1;
    margin: 0 auto;
}
#hor-minimalist-b th
{
	font-size: 16px;
	font-weight: normal;
	color: #5385c1;
	padding: 10px 8px;
	border-bottom: 2px solid #5385c1;
    letter-spacing: 2px;
    text-transform: uppercase;
}
#hor-minimalist-b td
{
	border-bottom: 1px solid #ccc;
	color: #245c86;
	padding: 6px 9px;
    height: 49px;
}
    
#hor-minimalist-b .title
{
	padding-left: 19px;
}
    

#hor-minimalist-b tbody tr:hover td
{
	color: #bdd0e8;
}

    .date{
        width: 90px;
        text-align: center;
        text-decoration-color: #5385c1;
        font-size: 12px;
    }
    
    #top-title{
        text-align: center;
    }
    
    .title{
        cursor: pointer;
        color: #5385c1;
    }
    .status{
        width: 90px;
        text-align: center;
        color: #5385c1;
    }
    
    .funtion{
        width: 90px;
        text-align: center;
    }
    
    button{
        
        border: none;
        color: #5385c1;
        padding: 7px;
        font-size: 12px;
        cursor: pointer;
        border: 1px solid #5385c1;
        border-radius: 1px;
        background-color: white;
        letter-spacing: 2px;
        text-transform: uppercase;
    }
    
    .btn-primary{
        font-size: 16px;
        line-height: 42px;
        display: block;
        width: 200px;
        height: 35px;
        cursor: pointer;
        vertical-align: middle;
        letter-spacing: 2px;
        text-transform: uppercase;
        color: #5385c1;
        border: 1px solid #5385c1;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        padding: 0px;
        margin-top: 0px;
        vertical-align: bottom;
        
	}
    
    .row{
        vertical-align: bottom;
    }
    
    .qb-btn{
        margin: 30px auto;
        width: 200px;
        height: 50px;
        float: none;
        vertical-align:text-bottom;
    }
    
    .pagination{
        margin-top: 29.9px;
    }
    
    #sbmt{
        margin-right: 0%;
    }
        
    
    button:hover {
        background-color: #263238;
        color: white;
    }
    

    .fa-angle-down{
        height: 24px;
        width: auto;
        float: right;
        border-radius: 1px;
        color: white;
        padding-top:0px;
        padding-bottom: 0px;
        border: 1px solid black;
        
    }
    
    .user_name{
        width: auto;
        float: left;
        font-size: 17px;
        margin-right: 6px;
        margin-left: 60px;
        margin-top: 0px;
        border-bottom: 1px solid white;
        color: white;
    }

    .aft_lonin_area{
        width: 50%;
        margin-top: 24px;
        margin-right: 0px;
        display: none;
    }
    .dropdown_btn{
        padding-top: 3px;
        padding-bottom: 0px;
        padding-left: 0px;
        padding-right: 2px;
        margin-right: 56px;
        border: none;
        background-color: #5385c1;
        color: white;
    }
    
    .dropdown-menu{
        text-transform: uppercase;
        color: #5385c1;
        border: 1px solid #5385c1;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        margin-left: 0;
        box-shadow: 3px 0px 6px 1px rgba(83, 133, 193, 0.1), 0 6px 20px 0 rgba(83, 133, 193, 0.1);
        
    }
    
    .divider{
        color: #5385c1;
        border: #5385c1;
    }
    

.drdw:hover {
    background-color: #cad9ec;
    color: #5385c1; 
    }
.drdw:link:active { background-color: white;
        color: #5385c1;
    }
.drdw:link { color: #5385c1; }
.drdw:visited { color: #5385c1; }
    
    #my_page{
        padding-top: 10px;
        padding-bottom: 5px;
    }
    
</style>
  </head>
  <body>
      
       <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
             <article class="container">
        
	  <div class="search-group">
          <form class="form-horizontal">
		<input class="search-area" id="search" type="search">
          </form>
                <button   class= "btn sch_btn" type="submit" value="검색" ><i class="fa fa-search"></i></button>
                <button   class= "btn img_sch" type="submit" value="이미지검색" ><i class="fa fa-camera"></i></button>
                <div class="file-area"><input class= "btn_file" type="file"></div>
        </div>
        
      </article>
            <div class="lonin_area" align="right">
			<button class="login_btn" id="login_btn">Log in & Join in</button>
            <div class="aft_lonin_area" align="right">
                <div class="user_name">${loginVo.username}</div> 
                <div class="dropdown">
    <button class="dropdown_btn" type="button" id="menu1" data-toggle="dropdown"><i class="fa fa-th" style="font-size:24px;"></i>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a class="drdw" id="my_page" role="menuitem" tabindex="-1" href="#">My Page</a></li>
      <li role="presentation"><a class="drdw" id="cs_center" role="menuitem" tabindex="-1" href="#">C/S Center</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a class="drdw" id="log_out" role="menuitem" tabindex="-1" href="#">Log Out</a></li>
    </ul>
  </div>
            </div>    
      </div>
            <!-- /.navbar-collapse -->
        
    </nav>
 
      <nav class="sidemenu">
      <ul class="nav nav-pills nav-stacked">
     <li class="#"><a href="Main.html">Main</a></li>
  <br>
  <br>
  <li class="#"><a href="bookmark_final_black.html?q=q">Bookmark</a></li>
  <br>
  <br>
  <li class="#"><a href="FQA_final.html">C/S Center</a></li>
  <li class="#"><a href="FQA_final.html">FAQ</a></li>
  <li class="#"><a href="Q&A_final.html">Q&A</a></li>
  <li class="#"><a href="Q&A_final.html">Question</a></li>
  <br>
  <br>
  <li class="#"><a href="#">modify Info</a></li>
  <li class="#"><a href="#">member info</a></li>
  <li class="#"><a href="#">password</a></li>
  <li class="#"><a href="#">leave</a></li>
</ul>
      </nav>

      <div class="space">
            <div class="bm-container">

                <table id="hor-minimalist-b" summary="Employee Pay Sheet">
    <thead>
    	<tr>
            <th scope="col" class="title" id="top-title">Title</th>
        	<th scope="col" class="date">Date</th>
            <th scope="col" class="status">Status</th>
   
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${boardlist}" var="board">
    	<tr>
    		<input type="hidden" value="${board.bidx}" name="bidx" />
            <td class="title">${board.title}</td>
        	<td class="date">${board.writedate}</td>
            <td class="status">${board.bidx}</td>
        
        </tr>  
      </c:forEach>    
    </tbody>
</table>
<!--
<div class="qb-btn text-center">
            <button class="qb-btn btn-primary" id="sbmt" type="submit"> Question</button>
          </div>
            -->
                <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>

            </div>    
      </div>
     
	
  </body>
</html>
