<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
@font-face {
    font-family: 'HangeulNuri-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/HangeulNuri-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{font-family: 'HangeulNuri-Bold';}
body{ 
	background-image: url('../img/힝2.jpg');
	background-size: cover;
}
.mde{
	width : 400px;
	margin : 0 auto; 
	text-align: center; 
}
</style>
</head>
<body>
<%
	String loginid = (String)session.getAttribute("id");
%>
<form method="post" action="../Controller/memberdeletecontroller.jsp">
<div class="mde">
	<h3>탈퇴를 위한 비밀번호 확인</h3>
	비밀번호 : <input type="password" name="password">
	<input type="hidden" name="loginid" value="<%=loginid %>">
	<input type="submit" value="탈퇴">
</div>
</form>
</body>
</html>