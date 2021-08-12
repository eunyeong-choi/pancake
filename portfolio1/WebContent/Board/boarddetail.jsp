<%@page import="java.util.ArrayList"%>
<%@page import="Dto.Reply"%>
<%@page import="Dao.ReplyDao"%>
<%@page import="Dao.BoardDao"%>
<%@page import="Dto.Board"%>
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
.write_td{ padding : 5px; }
#reply{ margin-left: 77px; }
#replytd1{ width : 200px; }
#replytd2{ width : 150px; }
#replytd3{ width : 150px; }
.reply_td{ width : 150px;}
.reply_td a{ text-decoration: none; color : black; }
</style>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<%
	String loginid = (String)session.getAttribute("id");
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDao boardDao = BoardDao.getinstance();
	boardDao.countup(bno);
	Board board = boardDao.bdetail(bno);
%>
<div class="container" style="width : 600px; margin-bottom: 300px;">
<form method="post" action="../Controller/boardupdatecontroller.jsp?bno=<%=bno%>">
	<table style="margin : 0 auto;">
		<%
				if(loginid.equals(board.getWriter())){//로그인 아이디와 작성자가 동일할때 수정가능하게
		%>	
		<tr>
			<td class="write_td"><label>제목</label></td>
			<td class="write_td"><input type="text" name="title" value="<%=board.getTitle()%>"></td>
		</tr>
		<tr>
			<td class="write_td"><label>작성자</label></td>
			<td class="write_td"><input type="text" name="writer" value="<%=board.getWriter()%>" disabled="disabled"></td>
		</tr>
		<tr>
			<td class="write_td"><label>내용</label></td>
			<td style="text-align: right;">
		
				<input type="submit" value="수정">
				
			</td>
		</tr>
		<tr>
			<td colspan="2" class="write_td">
				<textarea rows="15" cols="50" style="resize: none;" name="contents"><%=board.getContents() %></textarea>
			</td>
		</tr>
		<% }else{ //로그인 아이디와 작성자가 상이할때 읽기전용 %>
		<tr>
			<td class="write_td"><label>제목</label></td>
			<td class="write_td"><input type="text" name="title" value="<%=board.getTitle()%>" readonly="readonly"></td>
		</tr>
		<tr>
			<td class="write_td"><label>작성자</label></td>
			<td class="write_td"><input type="text" name="writer" value="<%=board.getWriter()%>" disabled="disabled"></td>
		</tr>
		<tr>
			<td class="write_td"><label>내용</label></td>
			<td style="text-align: right;">
			</td>
		</tr>
		<tr>
			<td colspan="2" class="write_td">
				<textarea rows="15" cols="50" style="resize: none;" name="contents" readonly="readonly"><%=board.getContents() %></textarea>
			</td>
		</tr>
		<% } %>
	</table>
</form>
<a href="boardmain.jsp"><button type="button" class="btn btn-info pull-right" style="margin-right : 100px; margin-bottom: 20px; ">글목록</button></a>
	<%
		if(loginid.equals(board.getWriter())){
	%>
	<a href="../Controller/boarddeletecontroller.jsp?bno=<%=bno%>"><button class="btn btn-info pull-right" style="margin-right: 10px;">삭제</button></a>
	<% } %>
<br><br>
<!-- 댓글 -->
<div id="reply">
	<form method="post" action="../Controller/replycontroller.jsp">
	<input type="hidden" name="bno" value="<%=bno%>">
	<input type="hidden" name="rwriter" value="<%=loginid%>">
		<table style="margin-left: 15px; ">
			<tr>
				<td><textarea rows="" cols="42" style="resize: none;" name="rcontents" placeholder="댓글입력"></textarea></td>
				<td><input type="submit" class="btn btn-info" value="등록" style="margin-left: 10px; "></td>
			</tr>
		</table>
	</form>	
	<table>
	<%
		ReplyDao replyDao = ReplyDao.getinstance();
		ArrayList<Reply>replys = replyDao.replylist(bno);
		if(replys != null){
			for(Reply reply : replys){
	%>
		<tr>
			<td id=replytd1><%=reply.getRcontents() %></td>
			<td class="text-center" id=replytd2><%=reply.getRwriter() %></td>
			<td class="text-center" id=replytd3><%=reply.getDate() %></td>
			<%
		if(loginid.equals(reply.getRwriter())){
		%>
			<td class="reply_td"><a href="../Controller/replydeletecontroller.jsp?bno=<%=bno %>&rno=<%=reply.getRno() %>"><label>삭제</label></a>
		</tr>
		<% } %>
	<% } %>
<% } %>
	</table>
</div>
</div>
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>