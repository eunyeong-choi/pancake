<%@page import="Dao.ReplyDao"%>
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
	int rno = Integer.parseInt(request.getParameter("rno"));
	int bno = Integer.parseInt(request.getParameter("bno"));
	ReplyDao replyDao = ReplyDao.getinstance();
	int result = replyDao.replydelete(rno);
	
	if( result == 1){
		response.sendRedirect("../Board/boarddetail.jsp?bno="+bno);
	}
%>
</body>
</html>