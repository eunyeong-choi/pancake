<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.BoardDao"%>
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
	int bno = Integer.parseInt(request.getParameter("bno"));
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	BoardDao boardDao = BoardDao.getinstance();
	int result = boardDao.boardupdate(bno, title, contents);
	
	System.out.println(bno);
	System.out.println(title);
	System.out.println(contents);
	
	
	if(result == 1){
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 수정 성공'); </script>");
		response.sendRedirect("../Board/boardmain.jsp");
		System.out.println("성공");
	}else{
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 수정 실패 : 관리자에게 문의'); </script>");
		response.sendRedirect("../Board/boarddetail.jsp?bno="+bno);
		System.out.println("실패");
	}
%>
</body>
</html>