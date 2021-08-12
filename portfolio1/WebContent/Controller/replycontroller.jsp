<%@page import="Dto.Reply"%>
<%@page import="Dao.ReplyDao"%>
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
	String rwriter = request.getParameter("rwriter");
	String rcontents = request.getParameter("rcontents");
	
	ReplyDao replyDao = ReplyDao.getinstance();
	Reply reply = new Reply(rcontents, rwriter, bno);
	
	int result = replyDao.replywrite(reply);
	if( result == 1){
		response.sendRedirect("../Board/boarddetail.jsp?bno="+bno);
	}
%>
</body>
</html>