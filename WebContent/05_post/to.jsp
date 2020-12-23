<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	String userName =request.getParameter("user_name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	
	String[] favor = request.getParameterValues("favor");
	
	String colors = String.join(", ",favor);

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
	<h1>이름: <%=userName%></h1>
	<h1>나이: <%=age%></h1>
	<h1>성별: <%=gender%></h1>
	<h1>취향: <%=colors%></h1>
	
</body>
</html>