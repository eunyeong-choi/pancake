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
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDao boardDao = BoardDao.getinstance();
	int result = boardDao.boarddelete(bno);
	if(result == 1){
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 삭제 성공'); location.href='../Board/boardmain.jsp';</script>");
	}else{
		PrintWriter outt = response.getWriter();
		outt.println("<script>alert('글 삭제 실패 : 관리자에게 문의'); </script>");
		response.sendRedirect("../Board/boarddetail.jsp?bno="+bno);
	}
%>
</body>
</html>