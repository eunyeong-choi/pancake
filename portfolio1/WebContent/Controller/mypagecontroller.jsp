<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.MemberDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String loginid = (String)session.getAttribute("id");
	String uploadfolder = "C:/jspworkspace/portfolio1/WebContent/upload";
	MultipartRequest multi = new MultipartRequest(request, uploadfolder, 1024*1024, "utf-8", new DefaultFileRenamePolicy());
	String newname = multi.getParameter("newname");
	String newemail = multi.getParameter("newemail");
	String image = multi.getFilesystemName("image");
	
	MemberDao dao = MemberDao.getinstance();
	int result = dao.memberupdate(loginid, newname, newemail, image);
	if( result == 1){
		response.sendRedirect("../main/mypage.jsp#mypageview");
		System.out.println(newname);		
		System.out.println(newemail);		
		System.out.println(image);		
	}else{
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<script>");
		printWriter.println("alert('수정실패')");
		printWriter.println("history.back()");//전 페이지로 이동
		printWriter.println("</script>");
	}
%>
</body>
</html>