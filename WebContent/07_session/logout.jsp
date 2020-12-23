<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	session.invalidate();
	//response.sendRedirect("login.jsp"); 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
	<script type="text/javascript">
		alert("안녕히가세요.");
	</script>
	<meta http-equiv='refresh' content='0; url=login.jsp' />
</head>
<body>
	
</body>
</html>