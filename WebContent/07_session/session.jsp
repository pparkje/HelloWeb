<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%	
	session.setMaxInactiveInterval(60);
 	String mySession = (String) session.getAttribute("mysession");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
	<h1>세션 예제</h1>
	<%
		if ( mySession ==null || mySession.equals("")) {
			out.println("<h2>mySession값 없음 </h2>");
		} else {
			out.println("<h2>mySession"+mySession + "</h2>");
		}
	%>
	
	<form method="post" action="session_ok.jsp">
		<label for="user_input">저장할 내용 입력</label>
		<input type="text" name="user_input" id="user_input" />
		<button type="submit">세션저장</button>
	</form>
	
</body>
</html>