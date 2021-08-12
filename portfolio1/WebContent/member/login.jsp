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
#tt td{ padding : 5px;}
#tt{ margin: 150px auto 0 auto;}
#login{ height : 400px; width : 600px; margin : 0 auto;}
</style>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<form method="post" action="../Controller/logincontroller.jsp">
	<div id="login">
		<table id="tt">
			<tr>
				<td><label>ID</label></td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="LOGIN">
				</td>
			</tr>
		</table>
	</div>
</form>
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>