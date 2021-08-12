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
</style>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<%
	String writer = (String)session.getAttribute("id");
%>
<div class="container" style="width : 600px; ">
<form method="post" action="../Controller/boardwritecontroller.jsp">
	<table style="margin : 0 auto;">
		<tr>
			<td class="write_td"><label>제목</label></td>
			<td class="write_td"><input type="text" name="title" placeholder="제목을 입력해주세요."></td>
		</tr>
		<tr>
			<td class="write_td"><label>작성자</label></td>
			<td class="write_td"><input type="text" name="writer" value="<%=writer%>" disabled="disabled"></td>
		</tr>
		<tr>
			<td class="write_td"><label>내용</label></td><td></td>
		</tr>
		<tr>
			<td colspan="2" class="write_td">
				<textarea rows="20" cols="50" placeholder="내용을 입력해주세요." style="resize: none;" name="contents"></textarea>
			</td>
		</tr>
	</table>
	<input type="submit" class="btn btn-info" style="margin-left : 350px; " value="등록">
	<!-- <button type="button" class="btn btn-info" style="margin-left : 350px;">등록</button> -->
	<a href="boardmain.jsp"><button type="button" class="btn btn-info pull-right" style="margin-right : 100px;">취소</button></a>
</form>
</div>


<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>