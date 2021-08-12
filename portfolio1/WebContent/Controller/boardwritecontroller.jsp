<%@page import="java.io.PrintWriter"%>
<%@page import="Dto.Board"%>
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
	String title = request.getParameter("title");
	String writer = (String)session.getAttribute("id");
	String contents = request.getParameter("contents");
	
	Board board = new Board(title,contents,writer,0);
	BoardDao boardDao = BoardDao.getinstance();
	int result = boardDao.boardwrite(board);
	
	if(result == 1){
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 등록 성공'); location.href='../Board/boardmain.jsp';</script>");
	}else{
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 등록 실패 : 관리자에게 문의'); location.href='../Board/boardmain.jsp';</script>");
	}
%>
</body>
</html>