<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#left_list{ height : 600px; width : 200px; border : solid 1px red; margin-left: 310px; float: left;}
#left_list #left_menu{ list-style-type: none; margin-top: 100px; }
#menubar #right_table{ width : 700px; height : 600px; border : solid 1px green; margin-right : 309px; float:right;}
.li{ padding : 10px; border-bottom: solid 1px #EAEAEA; width : 130px; text-align: center; }
</style>
</head>
<body>
<%@include file="menu.jsp" %>
<div id="menubar">
	<div id="left_list">
		<ul id="left_menu">
			<li class="li"><a href="../main/Character_Introduction.jsp">캐릭터 소개</a></li>
			<li class="li"><a href="#">캐릭터 영상</a></li>
			<li class="li"><a href="#">캐릭터 이미지</a></li>
			<li class="li"><a href="#">캐릭터 상품</a></li>
		</ul>
	</div>
	<div id="right_table">
	</div>
</div>
</body>
</html>