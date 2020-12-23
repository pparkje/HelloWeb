<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("UTF-8");
session.setMaxInactiveInterval(60);

String input = request.getParameter("user_input");

if( input != null && !input.equals("")){
	session.setAttribute("mysession", input);
} else {
	session.removeAttribute("mysession");
}
response.sendRedirect("session.jsp");
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