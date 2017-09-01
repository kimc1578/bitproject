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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     

    
    <script>
    
       $(document).ready(function(){
           $(".goback").click(function(){
        	   history.back(1);
           });
           $(".logo").click(function(){
        location.href='/';
    });
    
    $(".img_sch").click(function(){
        $(".btn_file").click();
    });

           
    $(".btn_file").on('change', function() {

        $("#img_search_frm").submit();

    });
           
    $(".sch_btn").click(function(){
         
        $(".searchfrm").submit();
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
        height: 870px;
        padding-left: 1%;
        padding-right: 1.7%;
        padding-top: 0.01%;
        background-color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
        
    }
  
    .button {
            border: none;
            color: white;
            padding: 8px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            letter-spacing: 2px;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 1px;
        }


        .button1 {
            border-radius: 2px;
            background-color: white;
            color: #5385c1;
            border: 1px solid #5385c1;
            background: transparent;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
                }
        .button1:hover {
        border-color: #5385c1;
        background-color: #5385c1;
        color: white;
    }

    .page-header{
        margin-top: 30%;
        border: none;
        padding-bottom: 0px;
    }
    .col-md-12{
        margin-top: 2%;
    }
    
    .col-sm-12{
        padding-top: 2%;
        padding-bottom: 4%;
    }
    
    #inputPassword{
        border: 1px solid #5385c1;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }
    
    .form-control{
            width: 60%;
    }
    
    .error_msg{
        font-size: 27px;
        color: #3f77a9;
        letter-spacing: 3px;
    }
          

        h2{
            font-size: 60px;
            letter-spacing: 20px;
            text-transform: uppercase;
            color: #5385c1;
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
            <div class="logo">zoom</div>
             <article class="container">
        
	  <div class="search-group">
          <form class="form-horizontal searchfrm" action="/ig_search">
		<input class="search-area" id="search" type="search" name="q">
          </form>
                <button   class= "btn sch_btn" type="button" value="검색" ><i class="fa fa-search"></i></button>
                <button   class= "btn img_sch" type="button" value="이미지검색" ><i class="fa fa-camera"></i></button>
                <form action="/search_img" method="post" id="img_search_frm"
					enctype="multipart/form-data"><div class="file-area"><input class= "btn_file" type="file"name="file"></div></form>
        </div>
        
      </article>
           
          <!--
            <div class="lonin_area" align="right">
			<button class="login_btn" id="login_btn">Log in & Join in</button>
            <div class="aft_lonin_area" align="right">
                <div class="user_name">홍길동님</div> 
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
      </div> -->


        
    </nav>
    <!-- menu 
      <nav class="sidemenu">
      <ul class="nav nav-pills nav-stacked">
     <li class="#"><a href="Main.html">Main</a></li>
  <br>
  <br>
<li class="#"><a href="bookmark_final_blue.html">Bookmark</a></li>
  <br>
  <br>
  <li class="#"><a href="FAQ_main_final_blue.html">C/S Center</a></li>
  <li class="#"><a href="FAQ_main_final_blue.html">FAQ</a></li>
  <li class="#"><a href="Q&A_board_final_blue.html">Q&A</a></li>
  <li class="#"><a href="Question_final_blue.html">Question</a></li>
  <br>
  <br>
  <li class="#"><a href="Modify_member_info_final_blue.html">modify Info</a></li>
  <li class="#"><a href="Modify_member_info_final_blue.html">member info</a></li>
  <li class="#"><a href="Modify_password_final_blue.html">password</a></li>
  <li class="#"><a href="Member_leave_final_blue.html">leave</a></li>
</ul>
      </nav>
      -->
      <div class="space">
            <div class="bm-container">

                <div class="col-md-12" align = "center">
        <div class="page-header" >
    	    <h2>Sorry!</h2>
        </div>	
        <form>
        <div class="form-group">
          
        <div class="col-sm-12 error_msg" align = "center">
            This infomation is a work-in-progress!<br>
            Comming soon!
        </div>	
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center" >
            <button class="button button1 goback" type="button">Go back</button>
          </div>
        </div>
        </form>
          <hr>	
        </div>

            </div>    
      </div>

  </body>
</html>
