<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.MemberDao"%>
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
</style>
</head>
<body>
<%
	String id = request.getParameter("loginid");
	String password = request.getParameter("password");
	MemberDao dao = MemberDao.getinstance();
	int result = dao.memderdelete(id, password);
	if(result == 1){
		session.setAttribute("id", null);
%>
<h3>탈퇴성공</h3>
<button onclick="windowclose()">닫기</button>
<%
	}else{
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<script>");
		printWriter.println("alert('비밀번호가 일치하지 않습니다')");
		printWriter.println("history.back(); ");
		printWriter.println("</script>");
	}
	
%>
<script>
	function windowclose(){
		opener.parent.location='../main/main.jsp';
		window.close();
	}
</script>
</body>
</html>