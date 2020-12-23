<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String myCookie = null;
	Cookie[] cookies = request.getCookies();

	if(cookies != null) {
		for(int i =0;i< cookies.length; i++) {
			String cookieName = cookies[i].getName();
			
			if(cookieName.equals("mycookie")) {
				String value = cookies[i].getValue();
				if(value.length()>0) {
					myCookie = URLDecoder.decode(value, "UTF-8");
				}
			}
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Hello JSP</title>
</head>
<body>
	<h1>쿠키 예제</h1>
	<%
		if(myCookie == null) {
			out.println("<h2>myCookie값 없음</h2>");
		} else {
			out.println("<h2>myCookie="+myCookie+"</h2>");
		}
	%>

	<form method="post" action="cookie_ok.jsp">
		<label for="user_input">저장할 내용 입력</label> <input type="text"
			name="user_input" id="user_input" />
		<button type="submit">쿠키저장</button>
	</form>

</body>
</html>