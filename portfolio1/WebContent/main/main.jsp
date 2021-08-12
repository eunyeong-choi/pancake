<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.li a{text-decoration: none; color: black;}
.li a:hover{text-decoration: none; color: black; background: #FAF4C0;}
body{ background-color: #FAF4C0; }
#main{ height : 450px; margin-bottom: 200px; }
#left_list{ height : 600px; width : 200px; margin-left: 310px; float: left;}
#left_list #left_menu{ list-style-type: none; margin-top: 100px; }
#menubar #right_table{ width : 700px; height : 600px; margin-right : 309px; float:right;}
.li{ padding : 10px; border-bottom: solid 1px #EAEAEA; width : 130px; text-align: center; }
#table{ text-align: center; margin : 100px 0 0 100px;  }
#contents{ margin: 50px 0 0 100px; width : 500px; }
#table img{ width : 180px; height : 200px; margin-right: 100px; margin-bottom: 20px; }
</style>
</head>
<body>
<%@include file="menu.jsp" %>
<div id="main">
<!-- 메인 케러샐 -->
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
																							
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slie-to="0" class="active"></li>	
		<li data-target="#myCarousel" data-slie-to="1"></li>	
		<li data-target="#myCarousel" data-slie-to="2"></li>	
	</ol>
	
	<div class="carousel-inner">
		<div class="item active">
			<a href="#"><img src="../img/img2.jpg" class="img-responsive center-block" id="img" style="width : 900px; height : 450px;"></a>
		</div>
		<div class="item">
			<a href="#"><img src="../img/img1.png" class="img-responsive center-block" id="img" style="width : 900px; height : 450px;"></a>
		</div>
		<div class="item">
			<a href="#"><img src="../img/img3.jpg" class="img-responsive center-block" id="img" style="width : 900px; height : 450px;"></a>
		</div>
	</div>
<!-- 	
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span>
	</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span>
	</a>
	 -->
</div><!-- carousel div -->
<div id="menubar">
	<div id="left_list">
		<ul id="left_menu">
			<li class="li"><a href="Character_Introduction.jsp">캐릭터 소개</a></li>
			<li class="li"><a href="character_video.jsp">캐릭터 영상</a></li>
			<li class="li"><a href="character_image.jsp">캐릭터 이미지</a></li>
			<li class="li"><a href="character_product.jsp">캐릭터 상품</a></li>
		</ul>
	</div>
	<div id="right_table">
		<div id="table">
			<a><img src="../img/팬케이크1.png"></a>
		</div>
</div>
</div>
</div><!-- main div -->
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>