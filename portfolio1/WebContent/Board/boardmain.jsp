<%@page import="Dto.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#td_a a{ text-decoration: none; color : black; }
</style>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<div class="container">
<% 
	String loginid = (String)session.getAttribute("id");
	if( loginid == null){
%>
*글쓰기는 로그인 후 가능합니다
<% }else{ %>
	<a href="boardwrite.jsp"><button type="button" class="btn btn-info pull-right" style="margin-bottom: 20px; ">글쓰기</button></a>
<% } %>
	<table class="table table-striped">
		<thead>
			<tr>
				<th class="text-center">NO</th>
				<th class="text-center">TITLE</th>
				<th class="text-center">WRITER</th>
				<th class="text-center">DATE</th>
				<th class="text-center">COUNT</th>
			</tr>
		</thead>
		<tbody>
			<%
				BoardDao boardDao = BoardDao.getinstance();
				ArrayList<Board>boards = boardDao.boardlist();
				for( Board board : boards){
			%>
				<tr>
					<td class="text-center"><%=board.getBno() %></td>
					<td class="text-center" id="td_a"><a href="boarddetail.jsp?bno=<%=board.getBno()%>"><%=board.getTitle() %></a></td>
					<td class="text-center"><%=board.getWriter()%></td>
					<td class="text-center"><%=board.getDate() %></td>
					<td class="text-center"><%=board.getCount()%></td>
				</tr>
			<% } %>
		</tbody>
	</table>
</div>
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>