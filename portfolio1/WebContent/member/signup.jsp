<%@page import="javax.swing.text.Document"%>
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
#tt{ margin : 0 auto; }
</style>
</head>
<body>
<%@include file="../main/menu.jsp" %>
<form method="post" action="../Controller/signupcontroller.jsp">
<div style="margin-top: 20px;">
	<div style="width : 30%; margin : 0 auto;">
		<table id="tt">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" placeholder="ID"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" placeholder="Password"></td>
			</tr>
			<tr>
				<td>Password Check</td>
				<td><input type="password" name="passwordcheck" placeholder="Password"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" placeholder="Name"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" placeholder="Email"></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td>
					<select name="phone1">
						<option>010</option>
						<option>02</option>
						<option>032</option>
						<option>031</option>
					</select> - 
					<input type="text" name="phone2" placeholder="Phone" style = "width : 70px;"> - 
					<input type="text" name="phone3" style = "width : 70px;">	
				</td>
			</tr>
		</table>
		<div style="margin-top: 10px;">
			<input type="checkbox" name="agree" value="1" onclick="ckCheck('1')" style="margin : 20px 0 20px 50px;"> 개인정보 동의<br>
						<script>
							    function test() {
							            if (document.getElementsByName("agree").checked == true) {
							                alert("동의하셨습니다");
							                return value=1;
							            }
							        }
						</script>
			<input type="submit" value="회원가입" style="margin-left: 200px; background-color: #D4F4FA; border-color: #D4F4FA;">
		</div>
	</div>
</div>
</form>
<%@include file="../main/footer.jsp" %>
<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>