<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	MemberDao memberdao = MemberDao.getinstance();
	int result = memberdao.login(id, password);
	if(result == 1){
		session.setAttribute("id",id);
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('로그인 완료'); location.href='../main/main.jsp';</script>");
	}else{
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('로그인 실패'); location.href='../member/login.jsp';</script>");
	}
%>
</body>
</html>