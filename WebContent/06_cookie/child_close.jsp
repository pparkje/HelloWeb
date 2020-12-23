<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String isPopup = request.getParameter("is_popup");
	
	if(isPopup != null ){
		String enc = URLEncoder.encode(isPopup, "UTF-8");
		Cookie info = new Cookie("is_popup", enc);
		info.setMaxAge(60);
		info.setPath("/");
		info.setDomain("localhost");
		response.addCookie(info);
	}
%>
<script type="text/javascript">
	window.close();
</script>