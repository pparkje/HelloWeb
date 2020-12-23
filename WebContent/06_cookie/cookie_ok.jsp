<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
request.setCharacterEncoding("UTF-8");

String input = request.getParameter("user_input");

if (input != null) {
	input = URLEncoder.encode(input, "UTF-8");
	Cookie info = new Cookie("mycookie", input);
	info.setMaxAge(60);
	info.setPath("/");
	info.setDomain("localhost");
	response.addCookie(info);
} else {
	Cookie info = new Cookie("mycookie", null);
	info.setMaxAge(-1);
	info.setPath("/");
	info.setDomain("localhost");
	response.addCookie(info);
}

response.sendRedirect("cookie.jsp");

%>