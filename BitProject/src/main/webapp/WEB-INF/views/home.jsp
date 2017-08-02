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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">

    
$(document).ready(function(){
        $("#login_btn").click(function(){
            location.href = '/user/login';
        });
        $("#joinin_btn").click(function(){
            location.href = '/user/join';
        });
        $(".img_btn").click(function(){
        	location.href = '/img_search'
        });
        
        $("#logout_btn").click(function(){
        	
        	location.href='/user/logout'
        });
    });

</script>

<style>
     

.container{
	width: 550px;
    height: auto;
	margin: 0 auto;
	color: #263238;
    border: 1px solid #263238;
    background: transparent;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    top: 50%;
    margin-top: 350px;
}

.form-horizontal{

}        
        
.btn{
    color: #263238;
    background-color: white;
    border: none;
    font-size: 19px;
    padding-left: 2px;
    margin: 0;
}
        
.search-group{
      height: 100%
      width: auto;
      padding-top: 6px;
      padding-bottom: 6px;
}

.search-area{
   margin-top: 7px;
   margin left: 0px;
   margin-right: 3px;
   width: 85%;
   height: 30px;
   border-style: none;
}

.login_btn{
    padding: auto;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin-top: 20px;
    margin-right: 40px;
    cursor: pointer;
    border-radius: 4px   
    line-height: 42px;
    display: block;
    height: 42px;
    cursor: pointer;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #263238;
    border: 1px solid #263238;
    background: transparent;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    
}

#login_btn: hover{ 
  background-color: #263238;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
  }
 

    .box{
        width: auto;
        height: auto;
        float:left;
    }
    
    .lonin_area{
        height: 80px;
        padding-left: 1671px;
        padding right: 0px;
        margin-right: 0px;
    }
  

</style>
  </head>
  
  <body>
      
      <div class="lonin_area" align="right">
        
          <c:choose>
          	<c:when test= "${loginVo eq null}" >
          	  <div class="box"><button class="login_btn" id="joinin_btn">Join in</button></div>
          	  <div class="box"><button class="login_btn" id="login_btn">Log in</button></div>
          	</c:when>
          	<c:otherwise>
          		<a href="/user/info">${loginVo.username}</a> 
          	  <div class="box"><button class="login_btn" id="logout_btn">Log out</button></div>
          	</c:otherwise>
          </c:choose>
         
        
      </div>
      <article class="container">
        <form class="form-horizontal" action="/search">
	  <div class="search-group" align = "center">
		<input class="search-area" id="search" name="q" type="search">
                <button   class= "search_btn" type="submit" value="검색" ><i class="fa fa-search"></i></button>
                <button   class= "img_btn" type="button" value="이미지검색" ><i class="fa fa-camera"></i></button>
          
        </div>
        </form>
      </article>
    
  </body>
</html>
