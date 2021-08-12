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
@font-face {
    font-family: 'HangeulNuri-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/HangeulNuri-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{font-family: 'HangeulNuri-Bold';}
.menu_li a{text-decoration: none; color: black;}
.menu_li a:hover{text-decoration: none; color: black; background-color: #FAF4C0;}
</style>
</head>
<body style="background-color: #FAF4C0">
<nav style="background-color: #FAF4C0">
	<div class="container">
		<div class="navbar navbar-header">
			<a href="../main/main.jsp"><img alt="" src="../img/애기.png" width="100px;"></a>
		</div>
		<!-- <button type="button" class="navbar-toggle collapsed"  data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
			<span class="sr-only">toggle</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button> -->
		<!-- <div id="navbar" class="navbar-collapse collapse"> -->
			<ul class="nav navbar-nav navbar-right">
				<li class="menu_li" style="margin-top: 10px; margin-right: 200px;"><img src="../img/logo_text.png" width="290px;" height="80px;"></li>
				<%
					String id = (String)session.getAttribute("id");
					if(id == null ){
				%>				
				<li class="menu_li" style="margin-top: 23px;"><a href="../member/login.jsp">LOGIN</a></li>
				<li class="menu_li" style="margin : 23px 5px 0px 5px;"><a href="../member/signup.jsp">SIGN UP</a></li>
				<% }else{ %>
				<li class="menu_li"  style="margin-top: 23px;"><a href="../member/logout.jsp">LOGOUT</a></li>
				<li class="menu_li" style="margin-top: 23px;"><a href="../Board/boardmain.jsp">COMMUNITY</a></li>
				<li class="menu_li" style="margin-top: 23px;"><a href="../main/mypage.jsp">MY PAGE</a></li>
				<% } %>
			</ul>
<!-- 		</div> -->
	</div>
</nav>

<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>