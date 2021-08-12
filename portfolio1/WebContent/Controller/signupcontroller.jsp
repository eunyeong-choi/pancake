<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.MemberDao"%>
<%@page import="Dto.Member"%>
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
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	String agree = request.getParameter("agree");
	int checkbox = Integer.parseInt(agree);
	
	/* System.out.println(id);
	System.out.println(password);
	System.out.println(name);
	System.out.println(email);
	System.out.println(phone);
	System.out.println(checkbox); */	
	
	Member member = new Member(id,password,name,email,phone,checkbox);
	MemberDao memberdao = MemberDao.getinstance();
	int result = memberdao.signup(member);
	
	if(result == 1){
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('회원가입 완료'); location.href='../member/login.jsp';</script>");
	}else{
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('회원가입 실패'); location.href='../member/signup.jsp';</script>");
	}
	
%>
</body>
</html>