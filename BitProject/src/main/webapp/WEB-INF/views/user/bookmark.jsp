<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Member Info Main</title>

    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom style -->
    <link rel="stylesheet" href="../resources/css/style.css" media="screen" title="no title" charset="utf-8">

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
     body{
        font-family: 'Lato', sans-serif;
    }  
    .navbar{
        background-color: #5385c1;
        border: 1px solid white;
        height: auto;
    }
.container{
	width: 39.2%;
    height: auto;
	color: #5385c1;
    border: 1px solid white;
    background: transparent;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    background-color: #5385c1;
    float: left;
    margin-left: 28.6%;
    margin-top: 0.9%;
    margin-bottom: 0.9%;
}

.form-horizontal{
    height: 100%;
   background-color: #5385c1;
}        
        
.btn{
    color: white;
    background-color: #5385c1;
    border: none;
    font-size: 158%;
    padding-right: 1.38%;
    margin: 0;
}

        
.search-group{
      height: 100%
      width: 100%;
      padding-top: 0.8%;
      padding-bottom: 0.8%;
      background-color: #5385c1;
}

.search-area{
   margin-top: 0.9%;
   margin left: 0px;
   margin-right: 0.37%;
   width: 87%;
   height: 33px;
   border-style: none;
    background-color: #5385c1;
}

.login_btn{
    padding: auto;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 100%;
    margin-top: 12.5%;
    margin-right: 50px;
    cursor: pointer;
    border-radius: 4px   
    display: block;
    height: 46px;
    cursor: pointer;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: white;
    border: 1px solid white;
    background: transparent;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    
}

.login_btn:hover{ 
  background-color:white;
  color: #263238;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
  }
     .lonin_area{
        width: auto;
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
        height: 700px;
        padding-top: 30px;
        width:auto;
        text-decoration-color: #263238;
        margin-top: 98.65px;
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
        color: #263238;
        background-color: white;
    }
    
    a:hover{
        color: #263238;
        background-color: palevioletred;
    }

    
    
    .bm-btn{
        color: #5385c1;
        background-color: white;
        border: none;
        font-size: 19px;
        padding-left: 2px;
        margin: 0;
    }

    .bm-container{
        width: 43%;
        margin-top:0px;
        margin-left: 406px;
        height: auto;
        padding-left: 35px;
        padding-top: 15px;
        background-color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
        
    }
    .bm-top-row{
        width: auto;
    }
    .bm-row{
        margin-top : 20px;
        height: 149px;
    }
    .bm-row-bottom{
        margin-top : 20px;
        height: 90px;
    }
    .bm-col-lg-12{
    }
    .bm-page-header{
        margin: 0;
        letter-spacing: 2px;
    }
    .bm-image{
        float:left;
        width:130px;
        height:150px;
        margin-right:15px;
        margin-left: 17px;
    }
    .bm-info{
        float:left;
        width: 550px;
        height: 149px;
    }
    .bm-title{
        width:550px;
        font-size: 24px;
        font-weight: bold;
        padding 0px;
        letter-spacing: 2px;
    }
    .bm-details{
        width: 568px;
        height: 98px;
        overflow: hidden;
        display:block;
        text-overflow:ellipsis;
            
    }
    .bm-heart-area{
        vertical-align: middle;
    }
    .bm-search-area{
        width: 600px;
        height: 30px;
        border-style: none;
    }
    <!-- bookmark default -->
    .bm-change{
        color: gray;

    }
    <!-- bookmark - after click -->
    .bm-after{
        color : yellow;

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
    .bm-body{
        background-color: #f8f8f8;
    }
    
</style>
  </head>
  <body>
      
       <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
             <article class="container">
        <form class="form-horizontal">
	  <div class="search-group">
		<input class="search-area" id="search" type="search">
                <button   class= "btn" type="submit" value="검색" ><i class="fa fa-search"></i></button>
                <button   class= "btn" type="submit" value="이미지검색" ><i class="fa fa-camera"></i></button>
          
        </div>
        </form>
      </article>
            <div class="lonin_area" align="right">
			<button class="login_btn" id="login_btn">Log in & Join in</button>
      </div>
            <!-- /.navbar-collapse -->
        <!-- /.container -->
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
      
      <div class="space">
            <div class="bm-container">

        <!-- Page Heading -->
        <div class="top-row">
                <h1 class="bm-page-header">Bookmark</h1>
        </div>

        <!-- Project One -->
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
            <div class="bm-heart-area"><i class="fa fa-heart bookmark change" style="font-size:25px;" ></i><input type="hidden" value="false" id="bookmark" /></div>
        </div>
        
        <!-- /.row -->
        <hr class="bm-line">
        
           <div class="bm-row">
            
            <div class="bm-image">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/300x350" alt="">
                </a>
            </div>
            <div class="bm-info">
                <div class= "bm-title">Title</div>
                <!-- <i class="fa fa-heart bookmark after"> -->
                <div class= "bm-subtitle">Subtitle or writer and so on</div>
                <p class = "bm-details">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.
                i dont know what should i do its so hard im doing my best but result is bed... haha i shold type something more but i dont type somthing in english anymore.. i want to know how to do it well please somebody tell me about that it looks like wir</p>
            </div>
            <!-- 하트 아이콘 북마크-->
                <div class="bm-heart-area"><i class="fa fa-heart bookmark change" style="font-size:25px;" ></i><input type="hidden" value="false"/></div>
        </div>
        
         <!-- /.row -->
        <hr class="bm-line">
        
         <div class="bm-row">
            
            <div class="bm-image">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/300x350" alt="">
                </a>
            </div>
            <div class="bm-info">
                <div class= "bm-title">Title</div>
                <!-- <i class="fa fa-heart bookmark after"> -->
                <div class= "bm-subtitle">Subtitle or writer and so on</div>
                <p class = "bm-details">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.
                i dont know what should i do its so hard im doing my best but result is bed... haha i shold type something more but i dont type somthing in english anymore.. i want to know how to do it well please somebody tell me about that it looks like wir</p>
            </div>
            <!-- 하트 아이콘 북마크-->
                <div class="bm-heart-area"><i class="fa fa-heart bookmark change" style="font-size:25px;" ></i><input type="hidden" value="false"/></div>
        </div>
    
        
         <!-- /.row -->
        <hr class="bm-line">
        
        <div class="bm-row">
            
            <div class="bm-image">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/300x350" alt="">
                </a>
            </div>
            <div class="bm-info">
                <div class= "bm-title">Title</div>
                <!-- <i class="fa fa-heart bookmark after"> -->
                <div class= "bm-subtitle">Subtitle or writer and so on</div>
                <p class = "bm-details">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.
                i dont know what should i do its so hard im doing my best but result is bed... haha i shold type something more but i dont type somthing in english anymore.. i want to know how to do it well please somebody tell me about that it looks like wir</p>
            </div>
            <!-- 하트 아이콘 북마크-->
                <div class="bm-heart-area"><i class="fa fa-heart bookmark change" style="font-size:25px;" ></i><input type="hidden" value="false"/></div>
        </div>
    
        
         <!-- /.row -->
        <hr class="bm-line">
        
               <div class="bm-row-bottom text-center">
            <div class="btn-toolbar">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
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
