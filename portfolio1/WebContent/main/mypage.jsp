<%@page import="java.util.ArrayList"%>
<%@page import="Dto.Member"%>
<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#mypageview{ width : 600px; height : 400px; margin: 0 auto; }
.info_li{ list-style-type : none; }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<div class="container">
	<ul class="nav nav-tabs nav-justified">
		<li class="nav-item">
			<a class="nav-link-active" data-toggle="tab" href="#mypageview">마이페이지</a>
		</li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#infoupdate">정보수정</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#adding">추가중....</a></li>
	</ul>
</div>
<div class="tab-content">
<!-- 마이페이지 -->
<div class="tab-pane fade" id="mypageview">
	<div class="col-md-6" style="margin-top: 40px; ">
		<%
			String loginid = (String)session.getAttribute("id");
			MemberDao memberDao = MemberDao.getinstance();
			Member member = memberDao.mypageview(loginid);
		%>
		<%
			if(member.getImage() == null ){
		%>
			<img alt="" src="../img/pc5.png" style = "width : 300px;  border-radius: 20%">
			<% } %>
			<img alt="" src="../upload/<%=member.getImage() %>" style = "width : 300px;  border-radius: 20%">
		</div>
		<div class="col-md-6" style="margin-top: 100px;">
			<ul>
				<li class="info_li"><label>아이디 : <%=loginid %></label></li>
				<li class="info_li"><label>이름 : <%=member.getName() %></label></li>
				<li class="info_li"><label>이메일 : <%=member.getEmail() %></label></li>
				<li class="info_li"><input type="button" value="회원탈퇴" onclick="showPopup();"></li>
			</ul>
		</div>
</div>
	<!-- 정보수정 -->
	<div class="tab-pane fade" id="infoupdate">
		<form method="post" action="../Controller/mypagecontroller.jsp" enctype="multipart/form-data">
			<div class="col-md-4"></div>
			<div class="col-md-2" style="margin-top: 40px; margin-right: 20px;">
			<%
				if(member.getImage() == null){
			%>
				<img alt="" src="../img/pc5.png" style = "width : 300px;  border-radius: 20%">
			<% } %>
				<img alt="" src="../upload/<%=member.getImage() %>" style = "width : 300px;  border-radius: 20%">
				<input type="file" name="image" style="margin-left: 40px; margin-top: 5px;">				
			</div>
			<div class="col-md-3" style="margin-top: 100px;">
				<ul>
					<li class="info_li"><label>아이디 : <%=loginid %></label></li>
					<li class="info_li"><label>이름 : </label><input type="text" value="<%=member.getName() %>" name="newname" style="margin-left: 12px; "></li>
					<li class="info_li"><label>이메일 : </label><input type="email" value="<%=member.getEmail() %>" name="newemail"></li>
					<li class="info_li"><input type="submit" value="수정" class="btn btn-info pull-right" style="margin: 5px 110px 0 0; "></li>
				</ul>
			</div>
		</form>
	</div>
	<div class="tab-pane fade" id="adding">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="margin-left: 100px;">
			<h1>추가 예정인 페이지 :)</h1>
			<img alt="" src="../img/힝.jpeg" style = "width : 300px; border-radius: 20%">
		</div>
		<div class="col-md-4"></div>
	</div>
</div>
<script language="javascript">
	function showPopup(){
		window.open("../member/memberdelete.jsp","회원탈퇴","width=500, height=525, left=100, top=50");
	}
</script>
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>