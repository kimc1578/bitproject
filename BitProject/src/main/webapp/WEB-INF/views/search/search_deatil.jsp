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
    
    $(".img_sch").click(function(){
        $(".btn_file").click();
    });
 });
        
        
        $(document).ready(function(){
            
            
            $(".bookmark").click(function(){
                
                                       
                      var bookmark = $("#bookmark").val();
             
                if(bookmark=="false"){
                    $("#bookmark").val("true");
                    $(this).css("color","#fe8f9d");
                    
                }else{
                    $("#bookmark").val("false");
                    $(this).css("color","#eadde1");
                    
                
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
        margin-top: 6%;
        margin-left: 20.99%;
        height: 100%;
        padding-left: 1.7%;
        padding-right: 1.7%;
        padding-top: 1%;
        background-color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
        
    }
    
     .bm-row{
        margin-top : 20px;
        height: 159px;
        width: 99%;
    }
    
    .bm-image{
        float:left;
        width:130px;
        height:147px;
        margin-right: 3%;
        margin-left: 0.1%;
        margin-top: 3px;
    }
    .bm-info{
        float:left;
        width: 74%;
        height: 149px;
        
    }
    .bm-title{
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        padding: 0px;
        margin: 0px;
        display:block;
        letter-spacing: 2px;

    }
    .bm-subtitle{
        width: 100%;
;
    }
    .bm-details{
        width: 103%;
        height: 98px;
        overflow: hidden;
        display:block;
        text-overflow:ellipsis;
  
            
    }
    
    hr{
        width: auto;
    }
    
    .btn-primary{
        background-color: #5385c1;
        color: white;
        padding-right: 8%;
        padding-left: 9%;
        padding-top: 2%;
        padding-bottom: 2%;
    }
    
    .thumbnail{
        width: 89%;
    }
    
    .hero-feature{
        padding: 0.8%;
    }
    
    .col-lg-12{
        padding-left: 2%;
    }
    
    .details{
        padding-left: 0.7%;
        padding-right: 0.7%;
    }
    
    .file-area{
        display: none;
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
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/300x350" alt="">
                </a>
            </div>
            <div class="bm-info">
                <div class= "bm-title">Title</div>
                <!-- 하트 아이콘 북마크-->
                
                <!-- <i class="fa fa-heart bookmark after"> -->
                <div class= "bm-subtitle">Subtitle or writer and so on</div>
                <p class = "bm-details">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.
                i dont know what should i do its so hard im doing my best but result is bed... haha i shold type something more but i dont type somthing in english anymore.. i want to know how to do it well please somebody tell me about that it looks like wir</p>
            </div>
            <div class="bm-heart-area"><i class="fa fa-heart bookmark change" style="font-size:25px; color:#eadde1;" ></i><input type="hidden" value="false" id="bookmark" /></div>
        </div>
        
        <!-- /.row -->
        <hr>
        
        <div class="details">
        
           detail block
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    
        </div>
        
        <!-- /.row -->
        <hr>
        
        <div class="useful-info">
        
           useful-info
            <br><br><br><br><br><br><br><br><br>
                    
        </div>
        
        <!-- /.row -->
        <hr>

            </div>    
      </div>

  </body>
</html>
