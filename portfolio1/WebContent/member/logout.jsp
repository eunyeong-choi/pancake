<%@page import="java.io.PrintWriter"%>
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
	session.invalidate();//로그아웃
	PrintWriter outt = response.getWriter();
	outt.println("<script>alert('로그아웃 되셨습니다'); location.href='../main/main.jsp';</script>");
%>
</body>
</html>