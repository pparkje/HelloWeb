<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	int a = 100;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
	<%
		a += 100;
	%>
</head>
<body>
<%
	out.println(a);
%>
	
</body>
</html>