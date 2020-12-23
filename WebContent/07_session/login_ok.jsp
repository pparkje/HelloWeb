<%@page import="study.helloweb.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	Member member = new Member();
	member.setUserId("pparkje");
	member.setUserPw("123qwe!@#");
	member.setUsetName("JSP학생");
	member.setEmail("pparkje@itpaper.co.kr");
	
	String userId = request.getParameter("user_id");
	String userPw = request.getParameter("user_pw");
	
	if(userId ==null || userId.equals("")) {
		out.print("<script>alert('아이디를 입력하세요');history.back();</script>");
		return;
	}
	
	if(userPw ==null || userPw.equals("")){
		out.print("<script>alert('비밀번호를 입력하세요');history.back();</script>");
		return;
	}
	if(!userId.equals(member.getUserId()) || !userPw.equals(member.getUserPw())){
		out.print("<script>alert('아이디나 비밀번호가 잘못되었습니다');history.back();</script>");
		return;
	}
	session.setAttribute("login_info", member);
	response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
	
</body>
</html>