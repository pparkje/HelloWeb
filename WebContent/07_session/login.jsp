<%@page import="study.helloweb.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%	
	Member loginInfo = (Member) session.getAttribute("login_info");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
	<%
		if(loginInfo ==null) {
			
	%>

	<form method="post" action="login_ok.jsp">
	<div>
		<input type="text" name="user_id" placeholder="아이디" />
	</div>
	<div>
		<input type="password" name="user_pw" placeholder="비밀번호" />
	</div>
	<button type="submit">로그인</button>
	</form>
	<%
		} else {
	%>
	<h2>안녕하세요 <%=loginInfo.getUsetName()%>님</h2>
	<h3><%=loginInfo.getEmail()%></h3>
	<a href="logout.jsp">로그아웃</a>
	<% } %>	
</body>
</html>