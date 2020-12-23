<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String isPopup = null;

	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(int i =0; i<cookies.length; i++) {
			String name = cookies[i].getName();
			
			if(name.equals("is_popup")) {
				String value = cookies[i].getValue();
				if(value.length()>0) {
					isPopup = URLDecoder.decode(value, "UTF-8");
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
	<h1>팝업창 열기</h1>
	<% if( isPopup == null) { %>
	<script type="text/javascript">
		var popup = window.open("child.jsp",'child-win','width=350,height=300');
		if(!popup) {
			alert("팝업창을 허용해 주세요.");
			}
		
	</script>
	<% } %>
	
</body>
</html>